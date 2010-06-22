clear all

a=zeros(10,10,12);
for n=1:12

    data(:,:,n)=xlsread('C:\Users\Bortolomeo7\Desktop\Doktorarbeit\Perimetrie Auswertung\Zeitreihenfolge.xls',n,'A1:BX24'); %Mastertabelle
    %im Format : pro Sheet 24 Zeilen à jeweils 8 für anodal/kathodal/sham

   k=1; 

    for r=1:12

        if k == 3
            k = 5;
        
        elseif k == 7
            k = 9;
            
        elseif k == 11
            k = 13;
        
        elseif k == 15
            k = 17;
        
        elseif k == 19
            k = 21;
        end

        for i=5:6
            a(1,i,r)=data(k,i-4,n);
        end

        for i=3:8
            a(2,i,r)=data(k,i,n);
        end

        for i=1:8
            a(3,i+1,r)=data(k,i+8,n);
        end

        for i=2:9
            a(4,i,r)=data(k,i+15,n);
        end

        for i=26:35
            a(5,i-25,r)=data(k,i-1,n);
        end

        for i=1:10
            a(6,i,r)=data(k,i+34,n);
        end

        for i=1:8
            a(7,i+1,r)=data(k,i+44,n);
        end

        for i=1:8
            a(8,i+1,r)=data(k,i+52,n);
        end

        for i=1:6
            a(9,i+2,r)=data(k,i+60,n);
        end

        for i=1:2
            a(10,i+4,r)=data(k,i+66,n);
        end
   k=k+1;

    end
% HIER ENTSTEHT NUN DER CELLARRAY "PROBANDEN_10_2", der von jedem Probanden
% eine 10x10x12 Matrix enthält. Hierin sind die Abbilder der Perimetrie der
% 10-2er Versuche enthalten. Die Reihenfolge der 12 beträgt Anodal_L_R_prae

probanden_10_2(n,1)={a};


 

end


for n=1:12

    data(:,:,n)=xlsread('C:\Users\Bortolomeo7\Desktop\Doktorarbeit\Perimetrie Auswertung\Zeitreihenfolge.xls',n,'A1:BX24'); %Mastertabelle
    %im Format : pro Sheet 24 Zeilen à jeweils 8 für anodal/kathodal/sham

   k=1; 

    for r=1:12

        if k == 1
            k = 3;
        
        elseif k == 5
            k = 7;
            
        elseif k == 9
            k = 11;
        
        elseif k == 13
            k = 15;
        
        elseif k == 17
            k = 19;
                
        elseif k == 21
            k = 23;
        end

        
   
for i=1:4
    a(1,i+3,r)=data(k,i,n);
end

for i=1:6
    a(2,i+2,r)=data(k,i+4,n);
end

for i=1:8 
    a(3,i+1,r)=data(k,i+10,n);
end

for i=1:10
    a(4,i,r)=data(k,i+18,n);
end

for i=1:10
    a(5,i,r)=data(k,i+28,n);
end

for i=1:10
    a(6,i,r)=data(k,i+38,n);
end

for i=1:10
    a(7,i,r)=data(k,i+48,n);
end

for i=1:8
    a(8,i+1,r)=data(k,i+58,n);
end

for i=1:6
    a(9,i+2,r)=data(k,i+66,n);
end

for i=1:4
    a(10,i+3,r)=data(k,i+72,n);
end
       
k=k+1;

end
% HIER ENTSTEHT NUN DER CELLARRAY "PROBANDEN_30_2", der von jedem Probanden
% eine 10x10x12 Matrix enthält. Hierin sind die Abbilder der Perimetrie der
% 30-2er Versuche enthalten. Die Reihenfolge der 12 beträgt Anodal_L_R_prae
%Anodal_L_R_post.....dann kathodal.....dann sham 
   
probanden_30_2(n,1)={a};

end
