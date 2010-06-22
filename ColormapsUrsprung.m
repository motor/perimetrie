clear all

a=zeros(10,10,12);
for n=1:12

    data(:,:,n)=xlsread('C:\Users\Bertie Notebook7\Desktop\Antje Auswertung\Matlab\Perimetrie_komplette_Tabelle_Reihenfolge_AKS_10.12.2008.xls',n,'A1:BX24'); %Mastertabelle
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
%Anodal_L_R_post.....dann kathodal.....dann sham 
    % links=zeros(10,10,5);
    % links(:,:,1)=(a(:,:,5)-a(:,:,1))./a(:,:,1);
    % links(:,:,2)=(a(:,:,13)-a(:,:,9))./a(:,:,9);
    % links(:,:,3)=(a(:,:,21)-a(:,:,17))./a(:,:,17);
    % links(:,:,4)=(a(:,:,29)-a(:,:,25))./a(:,:,25);
probanden_10_2(n,1)={a};


 

end


for n=1:12

    data(:,:,n)=xlsread('C:\Users\Bertie Notebook7\Desktop\Antje Auswertung\Matlab\Perimetrie_komplette_Tabelle_Reihenfolge_AKS_10.12.2008.xls',n,'A1:BX24'); %Mastertabelle
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
    % links=zeros(10,10,5);
    % links(:,:,1)=(a(:,:,5)-a(:,:,1))./a(:,:,1);
    % links(:,:,2)=(a(:,:,13)-a(:,:,9))./a(:,:,9);
    % links(:,:,3)=(a(:,:,21)-a(:,:,17))./a(:,:,17);
    % links(:,:,4)=(a(:,:,29)-a(:,:,25))./a(:,:,25);
probanden_30_2(n,1)={a};


 

end



%heir werden die Cellarrays in Variablen umgeschrieben

proband1_10_2=cell2mat(probanden_10_2(1));
proband2_10_2=cell2mat(probanden_10_2(2));
proband3_10_2=cell2mat(probanden_10_2(3));
proband4_10_2=cell2mat(probanden_10_2(4));
proband5_10_2=cell2mat(probanden_10_2(5));
proband6_10_2=cell2mat(probanden_10_2(6));
proband7_10_2=cell2mat(probanden_10_2(7));
proband8_10_2=cell2mat(probanden_10_2(8));
proband9_10_2=cell2mat(probanden_10_2(9));
proband10_10_2=cell2mat(probanden_10_2(10));
proband11_10_2=cell2mat(probanden_10_2(11));
proband12_10_2=cell2mat(probanden_10_2(12));

proband1_30_2=cell2mat(probanden_30_2(1));
proband2_30_2=cell2mat(probanden_30_2(2));
proband3_30_2=cell2mat(probanden_30_2(3));
proband4_30_2=cell2mat(probanden_30_2(4));
proband5_30_2=cell2mat(probanden_30_2(5));
proband6_30_2=cell2mat(probanden_30_2(6));
proband7_30_2=cell2mat(probanden_30_2(7));
proband8_30_2=cell2mat(probanden_30_2(8));
proband9_30_2=cell2mat(probanden_30_2(9));
proband10_30_2=cell2mat(probanden_30_2(10));
proband11_30_2=cell2mat(probanden_30_2(11));
proband12_30_2=cell2mat(probanden_30_2(12));


bert=[31 36];
bert2=[34 35.5];
anodal_linksstim_prae=(proband1_10_2(:,:,1) + proband1_10_2(:,:,2)+proband2_10_2(:,:,1) + proband2_10_2(:,:,2)+proband3_10_2(:,:,1) + proband3_10_2(:,:,2)+proband4_10_2(:,:,1) + proband4_10_2(:,:,2)+proband5_10_2(:,:,1) + proband5_10_2(:,:,2)+proband6_10_2(:,:,1) + proband6_10_2(:,:,2))/12;
anodal_linksstim_post=(proband1_10_2(:,:,3) + proband1_10_2(:,:,4)+proband2_10_2(:,:,3) + proband2_10_2(:,:,4)+proband3_10_2(:,:,3) + proband3_10_2(:,:,4)+proband4_10_2(:,:,3) + proband4_10_2(:,:,4)+proband5_10_2(:,:,3) + proband5_10_2(:,:,4)+proband6_10_2(:,:,3) + proband6_10_2(:,:,4))/12;
figure(1);
imagesc(anodal_linksstim_prae,bert);
figure(2);
imagesc(anodal_linksstim_post,bert);

kathodal_linksstim_prae=(proband1_10_2(:,:,5) + proband1_10_2(:,:,6)+proband2_10_2(:,:,5) + proband2_10_2(:,:,6)+proband3_10_2(:,:,5) + proband3_10_2(:,:,6)+proband4_10_2(:,:,5) + proband4_10_2(:,:,6)+proband5_10_2(:,:,5) + proband5_10_2(:,:,6)+proband6_10_2(:,:,5) + proband6_10_2(:,:,6))/12;
kathodal_linksstim_post=(proband1_10_2(:,:,7) + proband1_10_2(:,:,8)+proband2_10_2(:,:,7) + proband2_10_2(:,:,8)+proband3_10_2(:,:,7) + proband3_10_2(:,:,8)+proband4_10_2(:,:,7) + proband4_10_2(:,:,8)+proband5_10_2(:,:,7) + proband5_10_2(:,:,8)+proband6_10_2(:,:,7) + proband6_10_2(:,:,8))/12;

figure(3);
imagesc(kathodal_linksstim_prae,bert);
figure(4);
imagesc(kathodal_linksstim_post,bert);


sham_linksstim_prae=(proband1_10_2(:,:,9) + proband1_10_2(:,:,10)+proband2_10_2(:,:,9) + proband2_10_2(:,:,10)+proband3_10_2(:,:,9) + proband3_10_2(:,:,10)+proband4_10_2(:,:,9) + proband4_10_2(:,:,10)+proband5_10_2(:,:,9) + proband5_10_2(:,:,10)+proband6_10_2(:,:,9) + proband6_10_2(:,:,10))/12;
sham_linksstim_post=(proband1_10_2(:,:,11) + proband1_10_2(:,:,12)+proband2_10_2(:,:,1) + proband2_10_2(:,:,12)+proband3_10_2(:,:,11) + proband3_10_2(:,:,12)+proband4_10_2(:,:,11) + proband4_10_2(:,:,12)+proband5_10_2(:,:,11) + proband5_10_2(:,:,12)+proband6_10_2(:,:,11) + proband6_10_2(:,:,12))/12;


figure(5);
imagesc(sham_linksstim_prae,bert);
figure(6);
imagesc(sham_linksstim_post,bert);


anodal_rechtsstim_prae=(proband7_10_2(:,:,1) + proband7_10_2(:,:,2)+proband8_10_2(:,:,1) + proband8_10_2(:,:,2)+proband9_10_2(:,:,1) + proband9_10_2(:,:,2)+proband10_10_2(:,:,1) + proband10_10_2(:,:,2)+proband11_10_2(:,:,1) + proband11_10_2(:,:,2)+proband12_10_2(:,:,1) + proband12_10_2(:,:,2))/12;
anodal_rechtsstim_post=(proband7_10_2(:,:,3) + proband7_10_2(:,:,4)+proband8_10_2(:,:,3) + proband8_10_2(:,:,4)+proband9_10_2(:,:,3) + proband9_10_2(:,:,4)+proband10_10_2(:,:,3) + proband10_10_2(:,:,4)+proband11_10_2(:,:,3) + proband11_10_2(:,:,4)+proband12_10_2(:,:,3) + proband12_10_2(:,:,4))/12;
figure(7);
imagesc(anodal_rechtsstim_prae,bert);
figure(8);
imagesc(anodal_rechtsstim_post,bert);

kathodal_rechtsstim_prae=(proband7_10_2(:,:,5) + proband7_10_2(:,:,6)+proband8_10_2(:,:,5) + proband8_10_2(:,:,6)+proband9_10_2(:,:,5) + proband9_10_2(:,:,6)+proband10_10_2(:,:,5) + proband10_10_2(:,:,6)+proband11_10_2(:,:,5) + proband11_10_2(:,:,6)+proband12_10_2(:,:,5) + proband12_10_2(:,:,6))/12;
kathodal_rechtsstim_post=(proband7_10_2(:,:,7) + proband7_10_2(:,:,8)+proband8_10_2(:,:,7) + proband8_10_2(:,:,8)+proband9_10_2(:,:,7) + proband9_10_2(:,:,8)+proband10_10_2(:,:,7) + proband10_10_2(:,:,8)+proband11_10_2(:,:,7) + proband11_10_2(:,:,8)+proband12_10_2(:,:,7) + proband12_10_2(:,:,8))/12;

figure(9);
imagesc(kathodal_rechtsstim_prae,bert);
figure(10);
imagesc(kathodal_rechtsstim_post,bert);


sham_rechtsstim_prae=(proband7_10_2(:,:,9) + proband7_10_2(:,:,10)+proband8_10_2(:,:,9) + proband8_10_2(:,:,10)+proband9_10_2(:,:,9) + proband9_10_2(:,:,10)+proband10_10_2(:,:,9) + proband10_10_2(:,:,10)+proband11_10_2(:,:,9) + proband11_10_2(:,:,10)+proband12_10_2(:,:,9) + proband12_10_2(:,:,10))/12;
sham_rechtsstim_post=(proband7_10_2(:,:,11) + proband7_10_2(:,:,12)+proband8_10_2(:,:,1) + proband8_10_2(:,:,12)+proband9_10_2(:,:,11) + proband9_10_2(:,:,12)+proband10_10_2(:,:,11) + proband10_10_2(:,:,12)+proband11_10_2(:,:,11) + proband11_10_2(:,:,12)+proband12_10_2(:,:,11) + proband12_10_2(:,:,12))/12;


figure(11);
imagesc(sham_rechtsstim_prae,bert);
figure(12);
imagesc(sham_rechtsstim_post,bert);

