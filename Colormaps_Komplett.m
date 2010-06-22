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





%%%%%%%%%%%%%%%%%%%AUSWERTUNG%%%%%%%%%%%%%%%%%%%%%%%%%% (AKTUELL NUR
%%%%%%%%%%%%%%%%%%%PROBAND 1)


%%%%%%%%%%%%%%%10-2-Test%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%PROBAND 1%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_10_2_links_post_normiert_auf_prae1=(proband1_10_2(:,:,3)-proband1_10_2(:,:,1))./proband1_10_2(:,:,1);
anodal_10_2_rechts_post_normiert_auf_prae1=(proband1_10_2(:,:,4)-proband1_10_2(:,:,2))./proband1_10_2(:,:,2);
anodal_10_2_links_post_normiert_auf_sham1=(proband1_10_2(:,:,3)-proband1_10_2(:,:,11))./proband1_10_2(:,:,11);
anodal_10_2_rechts_post_normiert_auf_sham1=(proband1_10_2(:,:,3)-proband1_10_2(:,:,12))./proband1_10_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_10_2_links_post_normiert_auf_prae1=(proband1_10_2(:,:,7)-proband1_10_2(:,:,5))./proband1_10_2(:,:,5);
kathodal_10_2_rechts_post_normiert_auf_prae1=(proband1_10_2(:,:,8)-proband1_10_2(:,:,6))./proband1_10_2(:,:,6);
kathodal_10_2_links_post_normiert_auf_sham1=(proband1_10_2(:,:,7)-proband1_10_2(:,:,11))./proband1_10_2(:,:,11);
kathodal_10_2_rechts_post_normiert_auf_sham1=(proband1_10_2(:,:,8)-proband1_10_2(:,:,12))./proband1_10_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_10_2_links_post_normiert_auf_prae1=(proband1_10_2(:,:,11)-proband1_10_2(:,:,9))./proband1_10_2(:,:,9);
sham_10_2_rechts_post_normiert_auf_prae1=(proband1_10_2(:,:,12)-proband1_10_2(:,:,10))./proband1_10_2(:,:,10);


%%%%%%%%%%%%PROBAND 2%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_10_2_links_post_normiert_auf_prae2=(proband2_10_2(:,:,3)-proband2_10_2(:,:,1))./proband2_10_2(:,:,1);
anodal_10_2_rechts_post_normiert_auf_prae2=(proband2_10_2(:,:,4)-proband2_10_2(:,:,2))./proband2_10_2(:,:,2);
anodal_10_2_links_post_normiert_auf_sham2=(proband2_10_2(:,:,3)-proband2_10_2(:,:,11))./proband2_10_2(:,:,11);
anodal_10_2_rechts_post_normiert_auf_sham2=(proband2_10_2(:,:,3)-proband2_10_2(:,:,12))./proband2_10_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_10_2_links_post_normiert_auf_prae2=(proband2_10_2(:,:,7)-proband2_10_2(:,:,5))./proband2_10_2(:,:,5);
kathodal_10_2_rechts_post_normiert_auf_prae2=(proband2_10_2(:,:,8)-proband2_10_2(:,:,6))./proband2_10_2(:,:,6);
kathodal_10_2_links_post_normiert_auf_sham2=(proband2_10_2(:,:,7)-proband2_10_2(:,:,11))./proband2_10_2(:,:,11);
kathodal_10_2_rechts_post_normiert_auf_sham2=(proband2_10_2(:,:,8)-proband2_10_2(:,:,12))./proband2_10_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_10_2_links_post_normiert_auf_prae2=(proband2_10_2(:,:,11)-proband2_10_2(:,:,9))./proband2_10_2(:,:,9);
sham_10_2_rechts_post_normiert_auf_prae2=(proband2_10_2(:,:,12)-proband2_10_2(:,:,10))./proband2_10_2(:,:,10);

%%%%%%%%%%%%PROBAND 3%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_10_2_links_post_normiert_auf_prae3=(proband3_10_2(:,:,3)-proband3_10_2(:,:,1))./proband3_10_2(:,:,1);
anodal_10_2_rechts_post_normiert_auf_prae3=(proband3_10_2(:,:,4)-proband3_10_2(:,:,2))./proband3_10_2(:,:,2);
anodal_10_2_links_post_normiert_auf_sham3=(proband3_10_2(:,:,3)-proband3_10_2(:,:,11))./proband3_10_2(:,:,11);
anodal_10_2_rechts_post_normiert_auf_sham3=(proband3_10_2(:,:,3)-proband3_10_2(:,:,12))./proband3_10_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_10_2_links_post_normiert_auf_prae3=(proband3_10_2(:,:,7)-proband3_10_2(:,:,5))./proband3_10_2(:,:,5);
kathodal_10_2_rechts_post_normiert_auf_prae3=(proband3_10_2(:,:,8)-proband3_10_2(:,:,6))./proband3_10_2(:,:,6);
kathodal_10_2_links_post_normiert_auf_sham3=(proband3_10_2(:,:,7)-proband3_10_2(:,:,11))./proband3_10_2(:,:,11);
kathodal_10_2_rechts_post_normiert_auf_sham3=(proband3_10_2(:,:,8)-proband3_10_2(:,:,12))./proband3_10_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_10_2_links_post_normiert_auf_prae3=(proband3_10_2(:,:,11)-proband3_10_2(:,:,9))./proband3_10_2(:,:,9);
sham_10_2_rechts_post_normiert_auf_prae3=(proband3_10_2(:,:,12)-proband3_10_2(:,:,10))./proband3_10_2(:,:,10);

%%%%%%%%%%%%PROBAND 4%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_10_2_links_post_normiert_auf_prae4=(proband4_10_2(:,:,3)-proband4_10_2(:,:,1))./proband4_10_2(:,:,1);
anodal_10_2_rechts_post_normiert_auf_prae4=(proband4_10_2(:,:,4)-proband4_10_2(:,:,2))./proband4_10_2(:,:,2);
anodal_10_2_links_post_normiert_auf_sham4=(proband4_10_2(:,:,3)-proband4_10_2(:,:,11))./proband4_10_2(:,:,11);
anodal_10_2_rechts_post_normiert_auf_sham4=(proband4_10_2(:,:,3)-proband4_10_2(:,:,12))./proband4_10_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_10_2_links_post_normiert_auf_prae4=(proband4_10_2(:,:,7)-proband4_10_2(:,:,5))./proband4_10_2(:,:,5);
kathodal_10_2_rechts_post_normiert_auf_prae4=(proband4_10_2(:,:,8)-proband4_10_2(:,:,6))./proband4_10_2(:,:,6);
kathodal_10_2_links_post_normiert_auf_sham4=(proband4_10_2(:,:,7)-proband4_10_2(:,:,11))./proband4_10_2(:,:,11);
kathodal_10_2_rechts_post_normiert_auf_sham4=(proband4_10_2(:,:,8)-proband4_10_2(:,:,12))./proband4_10_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_10_2_links_post_normiert_auf_prae4=(proband4_10_2(:,:,11)-proband4_10_2(:,:,9))./proband4_10_2(:,:,9);
sham_10_2_rechts_post_normiert_auf_prae4=(proband4_10_2(:,:,12)-proband4_10_2(:,:,10))./proband4_10_2(:,:,10);


%%%%%%%%%%%%PROBAND 5%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_10_2_links_post_normiert_auf_prae5=(proband5_10_2(:,:,3)-proband5_10_2(:,:,1))./proband5_10_2(:,:,1);
anodal_10_2_rechts_post_normiert_auf_prae5=(proband5_10_2(:,:,4)-proband5_10_2(:,:,2))./proband5_10_2(:,:,2);
anodal_10_2_links_post_normiert_auf_sham5=(proband5_10_2(:,:,3)-proband5_10_2(:,:,11))./proband5_10_2(:,:,11);
anodal_10_2_rechts_post_normiert_auf_sham5=(proband5_10_2(:,:,3)-proband5_10_2(:,:,12))./proband5_10_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_10_2_links_post_normiert_auf_prae5=(proband5_10_2(:,:,7)-proband5_10_2(:,:,5))./proband5_10_2(:,:,5);
kathodal_10_2_rechts_post_normiert_auf_prae5=(proband5_10_2(:,:,8)-proband5_10_2(:,:,6))./proband5_10_2(:,:,6);
kathodal_10_2_links_post_normiert_auf_sham5=(proband5_10_2(:,:,7)-proband5_10_2(:,:,11))./proband5_10_2(:,:,11);
kathodal_10_2_rechts_post_normiert_auf_sham5=(proband5_10_2(:,:,8)-proband5_10_2(:,:,12))./proband5_10_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_10_2_links_post_normiert_auf_prae5=(proband5_10_2(:,:,11)-proband5_10_2(:,:,9))./proband5_10_2(:,:,9);
sham_10_2_rechts_post_normiert_auf_prae5=(proband5_10_2(:,:,12)-proband5_10_2(:,:,10))./proband5_10_2(:,:,10);



%%%%%%%%%%%%PROBAND 6%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_10_2_links_post_normiert_auf_prae6=(proband6_10_2(:,:,3)-proband6_10_2(:,:,1))./proband6_10_2(:,:,1);
anodal_10_2_rechts_post_normiert_auf_prae6=(proband6_10_2(:,:,4)-proband6_10_2(:,:,2))./proband6_10_2(:,:,2);
anodal_10_2_links_post_normiert_auf_sham6=(proband6_10_2(:,:,3)-proband6_10_2(:,:,11))./proband6_10_2(:,:,11);
anodal_10_2_rechts_post_normiert_auf_sham6=(proband6_10_2(:,:,3)-proband6_10_2(:,:,12))./proband6_10_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_10_2_links_post_normiert_auf_prae6=(proband6_10_2(:,:,7)-proband6_10_2(:,:,5))./proband6_10_2(:,:,5);
kathodal_10_2_rechts_post_normiert_auf_prae6=(proband6_10_2(:,:,8)-proband6_10_2(:,:,6))./proband6_10_2(:,:,6);
kathodal_10_2_links_post_normiert_auf_sham6=(proband6_10_2(:,:,7)-proband6_10_2(:,:,11))./proband6_10_2(:,:,11);
kathodal_10_2_rechts_post_normiert_auf_sham6=(proband6_10_2(:,:,8)-proband6_10_2(:,:,12))./proband6_10_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_10_2_links_post_normiert_auf_prae6=(proband6_10_2(:,:,11)-proband6_10_2(:,:,9))./proband6_10_2(:,:,9);
sham_10_2_rechts_post_normiert_auf_prae6=(proband6_10_2(:,:,12)-proband6_10_2(:,:,10))./proband6_10_2(:,:,10);



%%%%%%%%%%%%PROBAND 7%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_10_2_links_post_normiert_auf_prae7=(proband7_10_2(:,:,3)-proband7_10_2(:,:,1))./proband7_10_2(:,:,1);
anodal_10_2_rechts_post_normiert_auf_prae7=(proband7_10_2(:,:,4)-proband7_10_2(:,:,2))./proband7_10_2(:,:,2);
anodal_10_2_links_post_normiert_auf_sham7=(proband7_10_2(:,:,3)-proband7_10_2(:,:,11))./proband7_10_2(:,:,11);
anodal_10_2_rechts_post_normiert_auf_sham7=(proband7_10_2(:,:,3)-proband7_10_2(:,:,12))./proband7_10_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_10_2_links_post_normiert_auf_prae7=(proband7_10_2(:,:,7)-proband7_10_2(:,:,5))./proband7_10_2(:,:,5);
kathodal_10_2_rechts_post_normiert_auf_prae7=(proband7_10_2(:,:,8)-proband7_10_2(:,:,6))./proband7_10_2(:,:,6);
kathodal_10_2_links_post_normiert_auf_sham7=(proband7_10_2(:,:,7)-proband7_10_2(:,:,11))./proband7_10_2(:,:,11);
kathodal_10_2_rechts_post_normiert_auf_sham7=(proband7_10_2(:,:,8)-proband7_10_2(:,:,12))./proband7_10_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_10_2_links_post_normiert_auf_prae7=(proband7_10_2(:,:,11)-proband7_10_2(:,:,9))./proband7_10_2(:,:,9);
sham_10_2_rechts_post_normiert_auf_prae7=(proband7_10_2(:,:,12)-proband7_10_2(:,:,10))./proband7_10_2(:,:,10);


%%%%%%%%%%%%PROBAND 8%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_10_2_links_post_normiert_auf_prae8=(proband8_10_2(:,:,3)-proband8_10_2(:,:,1))./proband8_10_2(:,:,1);
anodal_10_2_rechts_post_normiert_auf_prae8=(proband8_10_2(:,:,4)-proband8_10_2(:,:,2))./proband8_10_2(:,:,2);
anodal_10_2_links_post_normiert_auf_sham8=(proband8_10_2(:,:,3)-proband8_10_2(:,:,11))./proband8_10_2(:,:,11);
anodal_10_2_rechts_post_normiert_auf_sham8=(proband8_10_2(:,:,3)-proband8_10_2(:,:,12))./proband8_10_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_10_2_links_post_normiert_auf_prae8=(proband8_10_2(:,:,7)-proband8_10_2(:,:,5))./proband8_10_2(:,:,5);
kathodal_10_2_rechts_post_normiert_auf_prae8=(proband8_10_2(:,:,8)-proband8_10_2(:,:,6))./proband8_10_2(:,:,6);
kathodal_10_2_links_post_normiert_auf_sham8=(proband8_10_2(:,:,7)-proband8_10_2(:,:,11))./proband8_10_2(:,:,11);
kathodal_10_2_rechts_post_normiert_auf_sham8=(proband8_10_2(:,:,8)-proband8_10_2(:,:,12))./proband8_10_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_10_2_links_post_normiert_auf_prae8=(proband8_10_2(:,:,11)-proband8_10_2(:,:,9))./proband8_10_2(:,:,9);
sham_10_2_rechts_post_normiert_auf_prae8=(proband8_10_2(:,:,12)-proband8_10_2(:,:,10))./proband8_10_2(:,:,10);


%%%%%%%%%%%%PROBAND 9%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_10_2_links_post_normiert_auf_prae9=(proband9_10_2(:,:,3)-proband9_10_2(:,:,1))./proband9_10_2(:,:,1);
anodal_10_2_rechts_post_normiert_auf_prae9=(proband9_10_2(:,:,4)-proband9_10_2(:,:,2))./proband9_10_2(:,:,2);
anodal_10_2_links_post_normiert_auf_sham9=(proband9_10_2(:,:,3)-proband9_10_2(:,:,11))./proband9_10_2(:,:,11);
anodal_10_2_rechts_post_normiert_auf_sham9=(proband9_10_2(:,:,3)-proband9_10_2(:,:,12))./proband9_10_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_10_2_links_post_normiert_auf_prae9=(proband9_10_2(:,:,7)-proband9_10_2(:,:,5))./proband9_10_2(:,:,5);
kathodal_10_2_rechts_post_normiert_auf_prae9=(proband9_10_2(:,:,8)-proband9_10_2(:,:,6))./proband9_10_2(:,:,6);
kathodal_10_2_links_post_normiert_auf_sham9=(proband9_10_2(:,:,7)-proband9_10_2(:,:,11))./proband9_10_2(:,:,11);
kathodal_10_2_rechts_post_normiert_auf_sham9=(proband9_10_2(:,:,8)-proband9_10_2(:,:,12))./proband9_10_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_10_2_links_post_normiert_auf_prae9=(proband9_10_2(:,:,11)-proband9_10_2(:,:,9))./proband9_10_2(:,:,9);
sham_10_2_rechts_post_normiert_auf_prae9=(proband9_10_2(:,:,12)-proband9_10_2(:,:,10))./proband9_10_2(:,:,10);

%%%%%%%%%%%%PROBAND 10%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_10_2_links_post_normiert_auf_prae10=(proband10_10_2(:,:,3)-proband10_10_2(:,:,1))./proband10_10_2(:,:,1);
anodal_10_2_rechts_post_normiert_auf_prae10=(proband10_10_2(:,:,4)-proband10_10_2(:,:,2))./proband10_10_2(:,:,2);
anodal_10_2_links_post_normiert_auf_sham10=(proband10_10_2(:,:,3)-proband10_10_2(:,:,11))./proband10_10_2(:,:,11);
anodal_10_2_rechts_post_normiert_auf_sham10=(proband10_10_2(:,:,3)-proband10_10_2(:,:,12))./proband10_10_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_10_2_links_post_normiert_auf_prae10=(proband10_10_2(:,:,7)-proband10_10_2(:,:,5))./proband10_10_2(:,:,5);
kathodal_10_2_rechts_post_normiert_auf_prae10=(proband10_10_2(:,:,8)-proband10_10_2(:,:,6))./proband10_10_2(:,:,6);
kathodal_10_2_links_post_normiert_auf_sham10=(proband10_10_2(:,:,7)-proband10_10_2(:,:,11))./proband10_10_2(:,:,11);
kathodal_10_2_rechts_post_normiert_auf_sham10=(proband10_10_2(:,:,8)-proband10_10_2(:,:,12))./proband10_10_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_10_2_links_post_normiert_auf_prae10=(proband10_10_2(:,:,11)-proband10_10_2(:,:,9))./proband10_10_2(:,:,9);
sham_10_2_rechts_post_normiert_auf_prae10=(proband10_10_2(:,:,12)-proband10_10_2(:,:,10))./proband10_10_2(:,:,10);


%%%%%%%%%%%%PROBAND 11%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_10_2_links_post_normiert_auf_prae11=(proband11_10_2(:,:,3)-proband11_10_2(:,:,1))./proband11_10_2(:,:,1);
anodal_10_2_rechts_post_normiert_auf_prae11=(proband11_10_2(:,:,4)-proband11_10_2(:,:,2))./proband11_10_2(:,:,2);
anodal_10_2_links_post_normiert_auf_sham11=(proband11_10_2(:,:,3)-proband11_10_2(:,:,11))./proband11_10_2(:,:,11);
anodal_10_2_rechts_post_normiert_auf_sham11=(proband11_10_2(:,:,3)-proband11_10_2(:,:,12))./proband11_10_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_10_2_links_post_normiert_auf_prae11=(proband11_10_2(:,:,7)-proband11_10_2(:,:,5))./proband11_10_2(:,:,5);
kathodal_10_2_rechts_post_normiert_auf_prae11=(proband11_10_2(:,:,8)-proband11_10_2(:,:,6))./proband11_10_2(:,:,6);
kathodal_10_2_links_post_normiert_auf_sham11=(proband11_10_2(:,:,7)-proband11_10_2(:,:,11))./proband11_10_2(:,:,11);
kathodal_10_2_rechts_post_normiert_auf_sham11=(proband11_10_2(:,:,8)-proband11_10_2(:,:,12))./proband11_10_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_10_2_links_post_normiert_auf_prae11=(proband11_10_2(:,:,11)-proband11_10_2(:,:,9))./proband11_10_2(:,:,9);
sham_10_2_rechts_post_normiert_auf_prae11=(proband11_10_2(:,:,12)-proband11_10_2(:,:,10))./proband11_10_2(:,:,10);


%%%%%%%%%%%%PROBAND 12%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_10_2_links_post_normiert_auf_prae12=(proband12_10_2(:,:,3)-proband12_10_2(:,:,1))./proband12_10_2(:,:,1);
anodal_10_2_rechts_post_normiert_auf_prae12=(proband12_10_2(:,:,4)-proband12_10_2(:,:,2))./proband12_10_2(:,:,2);
anodal_10_2_links_post_normiert_auf_sham12=(proband12_10_2(:,:,3)-proband12_10_2(:,:,11))./proband12_10_2(:,:,11);
anodal_10_2_rechts_post_normiert_auf_sham12=(proband12_10_2(:,:,3)-proband12_10_2(:,:,12))./proband12_10_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_10_2_links_post_normiert_auf_prae12=(proband12_10_2(:,:,7)-proband12_10_2(:,:,5))./proband12_10_2(:,:,5);
kathodal_10_2_rechts_post_normiert_auf_prae12=(proband12_10_2(:,:,8)-proband12_10_2(:,:,6))./proband12_10_2(:,:,6);
kathodal_10_2_links_post_normiert_auf_sham12=(proband12_10_2(:,:,7)-proband12_10_2(:,:,11))./proband12_10_2(:,:,11);
kathodal_10_2_rechts_post_normiert_auf_sham12=(proband12_10_2(:,:,8)-proband12_10_2(:,:,12))./proband12_10_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_10_2_links_post_normiert_auf_prae12=(proband12_10_2(:,:,11)-proband12_10_2(:,:,9))./proband12_10_2(:,:,9);
sham_10_2_rechts_post_normiert_auf_prae12=(proband12_10_2(:,:,12)-proband12_10_2(:,:,10))./proband12_10_2(:,:,10);





%%%%%%%%%%%%%%%30-2-Test%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%PROBAND 1%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_30_2_links_post_normiert_auf_prae1=(proband1_30_2(:,:,3)-proband1_30_2(:,:,1))./proband1_30_2(:,:,1);
anodal_30_2_rechts_post_normiert_auf_prae1=(proband1_30_2(:,:,4)-proband1_30_2(:,:,2))./proband1_30_2(:,:,2);
anodal_30_2_links_post_normiert_auf_sham1=(proband1_30_2(:,:,3)-proband1_30_2(:,:,11))./proband1_30_2(:,:,11);
anodal_30_2_rechts_post_normiert_auf_sham1=(proband1_30_2(:,:,3)-proband1_30_2(:,:,12))./proband1_30_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_30_2_links_post_normiert_auf_prae1=(proband1_30_2(:,:,7)-proband1_30_2(:,:,5))./proband1_30_2(:,:,5);
kathodal_30_2_rechts_post_normiert_auf_prae1=(proband1_30_2(:,:,8)-proband1_30_2(:,:,6))./proband1_30_2(:,:,6);
kathodal_30_2_links_post_normiert_auf_sham1=(proband1_30_2(:,:,7)-proband1_30_2(:,:,11))./proband1_30_2(:,:,11);
kathodal_30_2_rechts_post_normiert_auf_sham1=(proband1_30_2(:,:,8)-proband1_30_2(:,:,12))./proband1_30_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_30_2_links_post_normiert_auf_prae1=(proband1_30_2(:,:,11)-proband1_30_2(:,:,9))./proband1_30_2(:,:,9);
sham_30_2_rechts_post_normiert_auf_prae1=(proband1_30_2(:,:,12)-proband1_30_2(:,:,10))./proband1_30_2(:,:,10);



%%%%%%%PROBAND 2%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_30_2_links_post_normiert_auf_prae2=(proband2_30_2(:,:,3)-proband2_30_2(:,:,1))./proband2_30_2(:,:,1);
anodal_30_2_rechts_post_normiert_auf_prae2=(proband2_30_2(:,:,4)-proband2_30_2(:,:,2))./proband2_30_2(:,:,2);
anodal_30_2_links_post_normiert_auf_sham2=(proband2_30_2(:,:,3)-proband2_30_2(:,:,11))./proband2_30_2(:,:,11);
anodal_30_2_rechts_post_normiert_auf_sham2=(proband2_30_2(:,:,3)-proband2_30_2(:,:,12))./proband2_30_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_30_2_links_post_normiert_auf_prae2=(proband2_30_2(:,:,7)-proband2_30_2(:,:,5))./proband2_30_2(:,:,5);
kathodal_30_2_rechts_post_normiert_auf_prae2=(proband2_30_2(:,:,8)-proband2_30_2(:,:,6))./proband2_30_2(:,:,6);
kathodal_30_2_links_post_normiert_auf_sham2=(proband2_30_2(:,:,7)-proband2_30_2(:,:,11))./proband2_30_2(:,:,11);
kathodal_30_2_rechts_post_normiert_auf_sham2=(proband2_30_2(:,:,8)-proband2_30_2(:,:,12))./proband2_30_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_30_2_links_post_normiert_auf_prae2=(proband2_30_2(:,:,11)-proband2_30_2(:,:,9))./proband2_30_2(:,:,9);
sham_30_2_rechts_post_normiert_auf_prae2=(proband2_30_2(:,:,12)-proband2_30_2(:,:,10))./proband2_30_2(:,:,10);


%%%%%%%PROBAND 3%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_30_2_links_post_normiert_auf_prae3=(proband3_30_2(:,:,3)-proband3_30_2(:,:,1))./proband3_30_2(:,:,1);
anodal_30_2_rechts_post_normiert_auf_prae3=(proband3_30_2(:,:,4)-proband3_30_2(:,:,2))./proband3_30_2(:,:,2);
anodal_30_2_links_post_normiert_auf_sham3=(proband3_30_2(:,:,3)-proband3_30_2(:,:,11))./proband3_30_2(:,:,11);
anodal_30_2_rechts_post_normiert_auf_sham3=(proband3_30_2(:,:,3)-proband3_30_2(:,:,12))./proband3_30_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_30_2_links_post_normiert_auf_prae3=(proband3_30_2(:,:,7)-proband3_30_2(:,:,5))./proband3_30_2(:,:,5);
kathodal_30_2_rechts_post_normiert_auf_prae3=(proband3_30_2(:,:,8)-proband3_30_2(:,:,6))./proband3_30_2(:,:,6);
kathodal_30_2_links_post_normiert_auf_sham3=(proband3_30_2(:,:,7)-proband3_30_2(:,:,11))./proband3_30_2(:,:,11);
kathodal_30_2_rechts_post_normiert_auf_sham3=(proband3_30_2(:,:,8)-proband3_30_2(:,:,12))./proband3_30_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_30_2_links_post_normiert_auf_prae3=(proband3_30_2(:,:,11)-proband3_30_2(:,:,9))./proband3_30_2(:,:,9);
sham_30_2_rechts_post_normiert_auf_prae3=(proband3_30_2(:,:,12)-proband3_30_2(:,:,10))./proband3_30_2(:,:,10);


%%%%%%%PROBAND 4%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_30_2_links_post_normiert_auf_prae4=(proband4_30_2(:,:,3)-proband4_30_2(:,:,1))./proband4_30_2(:,:,1);
anodal_30_2_rechts_post_normiert_auf_prae4=(proband4_30_2(:,:,4)-proband4_30_2(:,:,2))./proband4_30_2(:,:,2);
anodal_30_2_links_post_normiert_auf_sham4=(proband4_30_2(:,:,3)-proband4_30_2(:,:,11))./proband4_30_2(:,:,11);
anodal_30_2_rechts_post_normiert_auf_sham4=(proband4_30_2(:,:,3)-proband4_30_2(:,:,12))./proband4_30_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_30_2_links_post_normiert_auf_prae4=(proband4_30_2(:,:,7)-proband4_30_2(:,:,5))./proband4_30_2(:,:,5);
kathodal_30_2_rechts_post_normiert_auf_prae4=(proband4_30_2(:,:,8)-proband4_30_2(:,:,6))./proband4_30_2(:,:,6);
kathodal_30_2_links_post_normiert_auf_sham4=(proband4_30_2(:,:,7)-proband4_30_2(:,:,11))./proband4_30_2(:,:,11);
kathodal_30_2_rechts_post_normiert_auf_sham4=(proband4_30_2(:,:,8)-proband4_30_2(:,:,12))./proband4_30_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_30_2_links_post_normiert_auf_prae4=(proband4_30_2(:,:,11)-proband4_30_2(:,:,9))./proband4_30_2(:,:,9);
sham_30_2_rechts_post_normiert_auf_prae4=(proband4_30_2(:,:,12)-proband4_30_2(:,:,10))./proband4_30_2(:,:,10);


%%%%%%%PROBAND 5%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_30_2_links_post_normiert_auf_prae5=(proband5_30_2(:,:,3)-proband5_30_2(:,:,1))./proband5_30_2(:,:,1);
anodal_30_2_rechts_post_normiert_auf_prae5=(proband5_30_2(:,:,4)-proband5_30_2(:,:,2))./proband5_30_2(:,:,2);
anodal_30_2_links_post_normiert_auf_sham5=(proband5_30_2(:,:,3)-proband5_30_2(:,:,11))./proband5_30_2(:,:,11);
anodal_30_2_rechts_post_normiert_auf_sham5=(proband5_30_2(:,:,3)-proband5_30_2(:,:,12))./proband5_30_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_30_2_links_post_normiert_auf_prae5=(proband5_30_2(:,:,7)-proband5_30_2(:,:,5))./proband5_30_2(:,:,5);
kathodal_30_2_rechts_post_normiert_auf_prae5=(proband5_30_2(:,:,8)-proband5_30_2(:,:,6))./proband5_30_2(:,:,6);
kathodal_30_2_links_post_normiert_auf_sham5=(proband5_30_2(:,:,7)-proband5_30_2(:,:,11))./proband5_30_2(:,:,11);
kathodal_30_2_rechts_post_normiert_auf_sham5=(proband5_30_2(:,:,8)-proband5_30_2(:,:,12))./proband5_30_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_30_2_links_post_normiert_auf_prae5=(proband5_30_2(:,:,11)-proband5_30_2(:,:,9))./proband5_30_2(:,:,9);
sham_30_2_rechts_post_normiert_auf_prae5=(proband5_30_2(:,:,12)-proband5_30_2(:,:,10))./proband5_30_2(:,:,10);


%%%%%%%PROBAND 6%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_30_2_links_post_normiert_auf_prae6=(proband6_30_2(:,:,3)-proband6_30_2(:,:,1))./proband6_30_2(:,:,1);
anodal_30_2_rechts_post_normiert_auf_prae6=(proband6_30_2(:,:,4)-proband6_30_2(:,:,2))./proband6_30_2(:,:,2);
anodal_30_2_links_post_normiert_auf_sham6=(proband6_30_2(:,:,3)-proband6_30_2(:,:,11))./proband6_30_2(:,:,11);
anodal_30_2_rechts_post_normiert_auf_sham6=(proband6_30_2(:,:,3)-proband6_30_2(:,:,12))./proband6_30_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_30_2_links_post_normiert_auf_prae6=(proband6_30_2(:,:,7)-proband6_30_2(:,:,5))./proband6_30_2(:,:,5);
kathodal_30_2_rechts_post_normiert_auf_prae6=(proband6_30_2(:,:,8)-proband6_30_2(:,:,6))./proband6_30_2(:,:,6);
kathodal_30_2_links_post_normiert_auf_sham6=(proband6_30_2(:,:,7)-proband6_30_2(:,:,11))./proband6_30_2(:,:,11);
kathodal_30_2_rechts_post_normiert_auf_sham6=(proband6_30_2(:,:,8)-proband6_30_2(:,:,12))./proband6_30_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_30_2_links_post_normiert_auf_prae6=(proband6_30_2(:,:,11)-proband6_30_2(:,:,9))./proband6_30_2(:,:,9);
sham_30_2_rechts_post_normiert_auf_prae6=(proband6_30_2(:,:,12)-proband6_30_2(:,:,10))./proband6_30_2(:,:,10);


%%%%%%%PROBAND 7%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_30_2_links_post_normiert_auf_prae7=(proband7_30_2(:,:,3)-proband7_30_2(:,:,1))./proband7_30_2(:,:,1);
anodal_30_2_rechts_post_normiert_auf_prae7=(proband7_30_2(:,:,4)-proband7_30_2(:,:,2))./proband7_30_2(:,:,2);
anodal_30_2_links_post_normiert_auf_sham7=(proband7_30_2(:,:,3)-proband7_30_2(:,:,11))./proband7_30_2(:,:,11);
anodal_30_2_rechts_post_normiert_auf_sham7=(proband7_30_2(:,:,3)-proband7_30_2(:,:,12))./proband7_30_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_30_2_links_post_normiert_auf_prae7=(proband7_30_2(:,:,7)-proband7_30_2(:,:,5))./proband7_30_2(:,:,5);
kathodal_30_2_rechts_post_normiert_auf_prae7=(proband7_30_2(:,:,8)-proband7_30_2(:,:,6))./proband7_30_2(:,:,6);
kathodal_30_2_links_post_normiert_auf_sham7=(proband7_30_2(:,:,7)-proband7_30_2(:,:,11))./proband7_30_2(:,:,11);
kathodal_30_2_rechts_post_normiert_auf_sham7=(proband7_30_2(:,:,8)-proband7_30_2(:,:,12))./proband7_30_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_30_2_links_post_normiert_auf_prae7=(proband7_30_2(:,:,11)-proband7_30_2(:,:,9))./proband7_30_2(:,:,9);
sham_30_2_rechts_post_normiert_auf_prae7=(proband7_30_2(:,:,12)-proband7_30_2(:,:,10))./proband7_30_2(:,:,10);


%%%%%%%PROBAND 8%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_30_2_links_post_normiert_auf_prae8=(proband8_30_2(:,:,3)-proband8_30_2(:,:,1))./proband8_30_2(:,:,1);
anodal_30_2_rechts_post_normiert_auf_prae8=(proband8_30_2(:,:,4)-proband8_30_2(:,:,2))./proband8_30_2(:,:,2);
anodal_30_2_links_post_normiert_auf_sham8=(proband8_30_2(:,:,3)-proband8_30_2(:,:,11))./proband8_30_2(:,:,11);
anodal_30_2_rechts_post_normiert_auf_sham8=(proband8_30_2(:,:,3)-proband8_30_2(:,:,12))./proband8_30_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_30_2_links_post_normiert_auf_prae8=(proband8_30_2(:,:,7)-proband8_30_2(:,:,5))./proband8_30_2(:,:,5);
kathodal_30_2_rechts_post_normiert_auf_prae8=(proband8_30_2(:,:,8)-proband8_30_2(:,:,6))./proband8_30_2(:,:,6);
kathodal_30_2_links_post_normiert_auf_sham8=(proband8_30_2(:,:,7)-proband8_30_2(:,:,11))./proband8_30_2(:,:,11);
kathodal_30_2_rechts_post_normiert_auf_sham8=(proband8_30_2(:,:,8)-proband8_30_2(:,:,12))./proband8_30_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_30_2_links_post_normiert_auf_prae8=(proband8_30_2(:,:,11)-proband8_30_2(:,:,9))./proband8_30_2(:,:,9);
sham_30_2_rechts_post_normiert_auf_prae8=(proband8_30_2(:,:,12)-proband8_30_2(:,:,10))./proband8_30_2(:,:,10);


%%%%%%%PROBAND 9%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_30_2_links_post_normiert_auf_prae9=(proband9_30_2(:,:,3)-proband9_30_2(:,:,1))./proband9_30_2(:,:,1);
anodal_30_2_rechts_post_normiert_auf_prae9=(proband9_30_2(:,:,4)-proband9_30_2(:,:,2))./proband9_30_2(:,:,2);
anodal_30_2_links_post_normiert_auf_sham9=(proband9_30_2(:,:,3)-proband9_30_2(:,:,11))./proband9_30_2(:,:,11);
anodal_30_2_rechts_post_normiert_auf_sham9=(proband9_30_2(:,:,3)-proband9_30_2(:,:,12))./proband9_30_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_30_2_links_post_normiert_auf_prae9=(proband9_30_2(:,:,7)-proband9_30_2(:,:,5))./proband9_30_2(:,:,5);
kathodal_30_2_rechts_post_normiert_auf_prae9=(proband9_30_2(:,:,8)-proband9_30_2(:,:,6))./proband9_30_2(:,:,6);
kathodal_30_2_links_post_normiert_auf_sham9=(proband9_30_2(:,:,7)-proband9_30_2(:,:,11))./proband9_30_2(:,:,11);
kathodal_30_2_rechts_post_normiert_auf_sham9=(proband9_30_2(:,:,8)-proband9_30_2(:,:,12))./proband9_30_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_30_2_links_post_normiert_auf_prae9=(proband9_30_2(:,:,11)-proband9_30_2(:,:,9))./proband9_30_2(:,:,9);
sham_30_2_rechts_post_normiert_auf_prae9=(proband9_30_2(:,:,12)-proband9_30_2(:,:,10))./proband9_30_2(:,:,10);


%%%%%%%PROBAND 10%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_30_2_links_post_normiert_auf_prae10=(proband10_30_2(:,:,3)-proband10_30_2(:,:,1))./proband10_30_2(:,:,1);
anodal_30_2_rechts_post_normiert_auf_prae10=(proband10_30_2(:,:,4)-proband10_30_2(:,:,2))./proband10_30_2(:,:,2);
anodal_30_2_links_post_normiert_auf_sham10=(proband10_30_2(:,:,3)-proband10_30_2(:,:,11))./proband10_30_2(:,:,11);
anodal_30_2_rechts_post_normiert_auf_sham10=(proband10_30_2(:,:,3)-proband10_30_2(:,:,12))./proband10_30_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_30_2_links_post_normiert_auf_prae10=(proband10_30_2(:,:,7)-proband10_30_2(:,:,5))./proband10_30_2(:,:,5);
kathodal_30_2_rechts_post_normiert_auf_prae10=(proband10_30_2(:,:,8)-proband10_30_2(:,:,6))./proband10_30_2(:,:,6);
kathodal_30_2_links_post_normiert_auf_sham10=(proband10_30_2(:,:,7)-proband10_30_2(:,:,11))./proband10_30_2(:,:,11);
kathodal_30_2_rechts_post_normiert_auf_sham10=(proband10_30_2(:,:,8)-proband10_30_2(:,:,12))./proband10_30_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_30_2_links_post_normiert_auf_prae10=(proband10_30_2(:,:,11)-proband10_30_2(:,:,9))./proband10_30_2(:,:,9);
sham_30_2_rechts_post_normiert_auf_prae10=(proband10_30_2(:,:,12)-proband10_30_2(:,:,10))./proband10_30_2(:,:,10);


%%%%%%%PROBAND 11%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_30_2_links_post_normiert_auf_prae11=(proband11_30_2(:,:,3)-proband11_30_2(:,:,1))./proband11_30_2(:,:,1);
anodal_30_2_rechts_post_normiert_auf_prae11=(proband11_30_2(:,:,4)-proband11_30_2(:,:,2))./proband11_30_2(:,:,2);
anodal_30_2_links_post_normiert_auf_sham11=(proband11_30_2(:,:,3)-proband11_30_2(:,:,11))./proband11_30_2(:,:,11);
anodal_30_2_rechts_post_normiert_auf_sham11=(proband11_30_2(:,:,3)-proband11_30_2(:,:,12))./proband11_30_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_30_2_links_post_normiert_auf_prae11=(proband11_30_2(:,:,7)-proband11_30_2(:,:,5))./proband11_30_2(:,:,5);
kathodal_30_2_rechts_post_normiert_auf_prae11=(proband11_30_2(:,:,8)-proband11_30_2(:,:,6))./proband11_30_2(:,:,6);
kathodal_30_2_links_post_normiert_auf_sham11=(proband11_30_2(:,:,7)-proband11_30_2(:,:,11))./proband11_30_2(:,:,11);
kathodal_30_2_rechts_post_normiert_auf_sham11=(proband11_30_2(:,:,8)-proband11_30_2(:,:,12))./proband11_30_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_30_2_links_post_normiert_auf_prae11=(proband11_30_2(:,:,11)-proband11_30_2(:,:,9))./proband11_30_2(:,:,9);
sham_30_2_rechts_post_normiert_auf_prae11=(proband11_30_2(:,:,12)-proband11_30_2(:,:,10))./proband11_30_2(:,:,10);


%%%%%%%PROBAND 12%%%%%%%%%

%%%%%%%%%ANODAL%%%%%%%%%%

anodal_30_2_links_post_normiert_auf_prae12=(proband12_30_2(:,:,3)-proband12_30_2(:,:,1))./proband12_30_2(:,:,1);
anodal_30_2_rechts_post_normiert_auf_prae12=(proband12_30_2(:,:,4)-proband12_30_2(:,:,2))./proband12_30_2(:,:,2);
anodal_30_2_links_post_normiert_auf_sham12=(proband12_30_2(:,:,3)-proband12_30_2(:,:,11))./proband12_30_2(:,:,11);
anodal_30_2_rechts_post_normiert_auf_sham12=(proband12_30_2(:,:,3)-proband12_30_2(:,:,12))./proband12_30_2(:,:,12);


%%%%%%%%%%KATHODAL%%%%%%%%%%%%

kathodal_30_2_links_post_normiert_auf_prae12=(proband12_30_2(:,:,7)-proband12_30_2(:,:,5))./proband12_30_2(:,:,5);
kathodal_30_2_rechts_post_normiert_auf_prae12=(proband12_30_2(:,:,8)-proband12_30_2(:,:,6))./proband12_30_2(:,:,6);
kathodal_30_2_links_post_normiert_auf_sham12=(proband12_30_2(:,:,7)-proband12_30_2(:,:,11))./proband12_30_2(:,:,11);
kathodal_30_2_rechts_post_normiert_auf_sham12=(proband12_30_2(:,:,8)-proband12_30_2(:,:,12))./proband12_30_2(:,:,12);


%%%%%%%%%%%SHAM%%%%%%%%%%%%%%%

sham_30_2_links_post_normiert_auf_prae12=(proband12_30_2(:,:,11)-proband12_30_2(:,:,9))./proband12_30_2(:,:,9);
sham_30_2_rechts_post_normiert_auf_prae12=(proband12_30_2(:,:,12)-proband12_30_2(:,:,10))./proband12_30_2(:,:,10);



%%%%%%%%Darstellung%%%%%%%%%%%%%(AKTUELL NUR FÜR PROBAND1)
clemens=[-0.05 0.05]; %hier wird die Range für das Einfärben des ImageSC Befehls festgelegt
figure(1);
subplot(5,4,1), imagesc(anodal_10_2_links_post_normiert_auf_prae1,clemens);
subplot(5,4,2), imagesc(anodal_10_2_rechts_post_normiert_auf_prae1,clemens);
subplot(5,4,3), imagesc(anodal_10_2_links_post_normiert_auf_sham1,clemens);
subplot(5,4,4), imagesc(anodal_10_2_rechts_post_normiert_auf_sham1,clemens);
subplot(5,4,5), imagesc(anodal_30_2_links_post_normiert_auf_prae1,clemens);
subplot(5,4,6), imagesc(anodal_30_2_rechts_post_normiert_auf_prae1,clemens);
subplot(5,4,7), imagesc(anodal_30_2_links_post_normiert_auf_sham1,clemens);
subplot(5,4,8), imagesc(anodal_30_2_rechts_post_normiert_auf_sham1,clemens);

subplot(5,4,9), imagesc(kathodal_10_2_links_post_normiert_auf_prae1,clemens);
subplot(5,4,10), imagesc(kathodal_10_2_rechts_post_normiert_auf_prae1,clemens);
subplot(5,4,11), imagesc(kathodal_10_2_links_post_normiert_auf_sham1,clemens);
subplot(5,4,12), imagesc(kathodal_10_2_rechts_post_normiert_auf_sham1,clemens);
subplot(5,4,13), imagesc(kathodal_30_2_links_post_normiert_auf_prae1,clemens);
subplot(5,4,14), imagesc(kathodal_30_2_rechts_post_normiert_auf_prae1,clemens);
subplot(5,4,15), imagesc(kathodal_30_2_links_post_normiert_auf_sham1,clemens);
subplot(5,4,16), imagesc(kathodal_30_2_rechts_post_normiert_auf_sham1,clemens);

subplot(5,4,17), imagesc(sham_10_2_links_post_normiert_auf_prae1,clemens);
subplot(5,4,18), imagesc(sham_10_2_rechts_post_normiert_auf_prae1,clemens);
subplot(5,4,19), imagesc(sham_30_2_links_post_normiert_auf_prae1,clemens);
subplot(5,4,20), imagesc(sham_30_2_rechts_post_normiert_auf_prae1,clemens);


figure(2);
subplot(5,4,1), imagesc(anodal_10_2_links_post_normiert_auf_prae2,clemens);
subplot(5,4,2), imagesc(anodal_10_2_rechts_post_normiert_auf_prae2,clemens);
subplot(5,4,3), imagesc(anodal_10_2_links_post_normiert_auf_sham2,clemens);
subplot(5,4,4), imagesc(anodal_10_2_rechts_post_normiert_auf_sham2,clemens);
subplot(5,4,5), imagesc(anodal_30_2_links_post_normiert_auf_prae2,clemens);
subplot(5,4,6), imagesc(anodal_30_2_rechts_post_normiert_auf_prae2,clemens);
subplot(5,4,7), imagesc(anodal_30_2_links_post_normiert_auf_sham2,clemens);
subplot(5,4,8), imagesc(anodal_30_2_rechts_post_normiert_auf_sham2,clemens);

subplot(5,4,9), imagesc(kathodal_10_2_links_post_normiert_auf_prae2,clemens);
subplot(5,4,10), imagesc(kathodal_10_2_rechts_post_normiert_auf_prae2,clemens);
subplot(5,4,11), imagesc(kathodal_10_2_links_post_normiert_auf_sham2,clemens);
subplot(5,4,12), imagesc(kathodal_10_2_rechts_post_normiert_auf_sham2,clemens);
subplot(5,4,13), imagesc(kathodal_30_2_links_post_normiert_auf_prae2,clemens);
subplot(5,4,14), imagesc(kathodal_30_2_rechts_post_normiert_auf_prae2,clemens);
subplot(5,4,15), imagesc(kathodal_30_2_links_post_normiert_auf_sham2,clemens);
subplot(5,4,16), imagesc(kathodal_30_2_rechts_post_normiert_auf_sham2,clemens);

subplot(5,4,17), imagesc(sham_10_2_links_post_normiert_auf_prae2,clemens);
subplot(5,4,18), imagesc(sham_10_2_rechts_post_normiert_auf_prae2,clemens);
subplot(5,4,19), imagesc(sham_30_2_links_post_normiert_auf_prae2,clemens);
subplot(5,4,20), imagesc(sham_30_2_rechts_post_normiert_auf_prae2,clemens);

figure(3);
subplot(5,4,1), imagesc(anodal_10_2_links_post_normiert_auf_prae3,clemens);
subplot(5,4,2), imagesc(anodal_10_2_rechts_post_normiert_auf_prae3,clemens);
subplot(5,4,3), imagesc(anodal_10_2_links_post_normiert_auf_sham3,clemens);
subplot(5,4,4), imagesc(anodal_10_2_rechts_post_normiert_auf_sham3,clemens);
subplot(5,4,5), imagesc(anodal_30_2_links_post_normiert_auf_prae3,clemens);
subplot(5,4,6), imagesc(anodal_30_2_rechts_post_normiert_auf_prae3,clemens);
subplot(5,4,7), imagesc(anodal_30_2_links_post_normiert_auf_sham3,clemens);
subplot(5,4,8), imagesc(anodal_30_2_rechts_post_normiert_auf_sham3,clemens);

subplot(5,4,9), imagesc(kathodal_10_2_links_post_normiert_auf_prae3,clemens);
subplot(5,4,10), imagesc(kathodal_10_2_rechts_post_normiert_auf_prae3,clemens);
subplot(5,4,11), imagesc(kathodal_10_2_links_post_normiert_auf_sham3,clemens);
subplot(5,4,12), imagesc(kathodal_10_2_rechts_post_normiert_auf_sham3,clemens);
subplot(5,4,13), imagesc(kathodal_30_2_links_post_normiert_auf_prae3,clemens);
subplot(5,4,14), imagesc(kathodal_30_2_rechts_post_normiert_auf_prae3,clemens);
subplot(5,4,15), imagesc(kathodal_30_2_links_post_normiert_auf_sham3,clemens);
subplot(5,4,16), imagesc(kathodal_30_2_rechts_post_normiert_auf_sham3,clemens);

subplot(5,4,17), imagesc(sham_10_2_links_post_normiert_auf_prae3,clemens);
subplot(5,4,18), imagesc(sham_10_2_rechts_post_normiert_auf_prae3,clemens);
subplot(5,4,19), imagesc(sham_30_2_links_post_normiert_auf_prae3,clemens);
subplot(5,4,20), imagesc(sham_30_2_rechts_post_normiert_auf_prae3,clemens);


figure(4);
subplot(5,4,1), imagesc(anodal_10_2_links_post_normiert_auf_prae4,clemens);
subplot(5,4,2), imagesc(anodal_10_2_rechts_post_normiert_auf_prae4,clemens);
subplot(5,4,3), imagesc(anodal_10_2_links_post_normiert_auf_sham4,clemens);
subplot(5,4,4), imagesc(anodal_10_2_rechts_post_normiert_auf_sham4,clemens);
subplot(5,4,5), imagesc(anodal_30_2_links_post_normiert_auf_prae4,clemens);
subplot(5,4,6), imagesc(anodal_30_2_rechts_post_normiert_auf_prae4,clemens);
subplot(5,4,7), imagesc(anodal_30_2_links_post_normiert_auf_sham4,clemens);
subplot(5,4,8), imagesc(anodal_30_2_rechts_post_normiert_auf_sham4,clemens);

subplot(5,4,9), imagesc(kathodal_10_2_links_post_normiert_auf_prae4,clemens);
subplot(5,4,10), imagesc(kathodal_10_2_rechts_post_normiert_auf_prae4,clemens);
subplot(5,4,11), imagesc(kathodal_10_2_links_post_normiert_auf_sham4,clemens);
subplot(5,4,12), imagesc(kathodal_10_2_rechts_post_normiert_auf_sham4,clemens);
subplot(5,4,13), imagesc(kathodal_30_2_links_post_normiert_auf_prae4,clemens);
subplot(5,4,14), imagesc(kathodal_30_2_rechts_post_normiert_auf_prae4,clemens);
subplot(5,4,15), imagesc(kathodal_30_2_links_post_normiert_auf_sham4,clemens);
subplot(5,4,16), imagesc(kathodal_30_2_rechts_post_normiert_auf_sham4,clemens);

subplot(5,4,17), imagesc(sham_10_2_links_post_normiert_auf_prae4,clemens);
subplot(5,4,18), imagesc(sham_10_2_rechts_post_normiert_auf_prae4,clemens);
subplot(5,4,19), imagesc(sham_30_2_links_post_normiert_auf_prae4,clemens);
subplot(5,4,20), imagesc(sham_30_2_rechts_post_normiert_auf_prae4,clemens);


figure(5);
subplot(5,4,1), imagesc(anodal_10_2_links_post_normiert_auf_prae5,clemens);
subplot(5,4,2), imagesc(anodal_10_2_rechts_post_normiert_auf_prae5,clemens);
subplot(5,4,3), imagesc(anodal_10_2_links_post_normiert_auf_sham5,clemens);
subplot(5,4,4), imagesc(anodal_10_2_rechts_post_normiert_auf_sham5,clemens);
subplot(5,4,5), imagesc(anodal_30_2_links_post_normiert_auf_prae5,clemens);
subplot(5,4,6), imagesc(anodal_30_2_rechts_post_normiert_auf_prae5,clemens);
subplot(5,4,7), imagesc(anodal_30_2_links_post_normiert_auf_sham5,clemens);
subplot(5,4,8), imagesc(anodal_30_2_rechts_post_normiert_auf_sham5,clemens);

subplot(5,4,9), imagesc(kathodal_10_2_links_post_normiert_auf_prae5,clemens);
subplot(5,4,10), imagesc(kathodal_10_2_rechts_post_normiert_auf_prae5,clemens);
subplot(5,4,11), imagesc(kathodal_10_2_links_post_normiert_auf_sham5,clemens);
subplot(5,4,12), imagesc(kathodal_10_2_rechts_post_normiert_auf_sham5,clemens);
subplot(5,4,13), imagesc(kathodal_30_2_links_post_normiert_auf_prae5,clemens);
subplot(5,4,14), imagesc(kathodal_30_2_rechts_post_normiert_auf_prae5,clemens);
subplot(5,4,15), imagesc(kathodal_30_2_links_post_normiert_auf_sham5,clemens);
subplot(5,4,16), imagesc(kathodal_30_2_rechts_post_normiert_auf_sham5,clemens);

subplot(5,4,17), imagesc(sham_10_2_links_post_normiert_auf_prae5,clemens);
subplot(5,4,18), imagesc(sham_10_2_rechts_post_normiert_auf_prae5,clemens);
subplot(5,4,19), imagesc(sham_30_2_links_post_normiert_auf_prae5,clemens);
subplot(5,4,20), imagesc(sham_30_2_rechts_post_normiert_auf_prae5,clemens);


figure(6);
subplot(5,4,1), imagesc(anodal_10_2_links_post_normiert_auf_prae6,clemens);
subplot(5,4,2), imagesc(anodal_10_2_rechts_post_normiert_auf_prae6,clemens);
subplot(5,4,3), imagesc(anodal_10_2_links_post_normiert_auf_sham6,clemens);
subplot(5,4,4), imagesc(anodal_10_2_rechts_post_normiert_auf_sham6,clemens);
subplot(5,4,5), imagesc(anodal_30_2_links_post_normiert_auf_prae6,clemens);
subplot(5,4,6), imagesc(anodal_30_2_rechts_post_normiert_auf_prae6,clemens);
subplot(5,4,7), imagesc(anodal_30_2_links_post_normiert_auf_sham6,clemens);
subplot(5,4,8), imagesc(anodal_30_2_rechts_post_normiert_auf_sham6,clemens);

subplot(5,4,9), imagesc(kathodal_10_2_links_post_normiert_auf_prae6,clemens);
subplot(5,4,10), imagesc(kathodal_10_2_rechts_post_normiert_auf_prae6,clemens);
subplot(5,4,11), imagesc(kathodal_10_2_links_post_normiert_auf_sham6,clemens);
subplot(5,4,12), imagesc(kathodal_10_2_rechts_post_normiert_auf_sham6,clemens);
subplot(5,4,13), imagesc(kathodal_30_2_links_post_normiert_auf_prae6,clemens);
subplot(5,4,14), imagesc(kathodal_30_2_rechts_post_normiert_auf_prae6,clemens);
subplot(5,4,15), imagesc(kathodal_30_2_links_post_normiert_auf_sham6,clemens);
subplot(5,4,16), imagesc(kathodal_30_2_rechts_post_normiert_auf_sham6,clemens);

subplot(5,4,17), imagesc(sham_10_2_links_post_normiert_auf_prae6,clemens);
subplot(5,4,18), imagesc(sham_10_2_rechts_post_normiert_auf_prae6,clemens);
subplot(5,4,19), imagesc(sham_30_2_links_post_normiert_auf_prae6,clemens);
subplot(5,4,20), imagesc(sham_30_2_rechts_post_normiert_auf_prae6,clemens);


figure(7);
subplot(5,4,1), imagesc(anodal_10_2_links_post_normiert_auf_prae7,clemens);
subplot(5,4,2), imagesc(anodal_10_2_rechts_post_normiert_auf_prae7,clemens);
subplot(5,4,3), imagesc(anodal_10_2_links_post_normiert_auf_sham7,clemens);
subplot(5,4,4), imagesc(anodal_10_2_rechts_post_normiert_auf_sham7,clemens);
subplot(5,4,5), imagesc(anodal_30_2_links_post_normiert_auf_prae7,clemens);
subplot(5,4,6), imagesc(anodal_30_2_rechts_post_normiert_auf_prae7,clemens);
subplot(5,4,7), imagesc(anodal_30_2_links_post_normiert_auf_sham7,clemens);
subplot(5,4,8), imagesc(anodal_30_2_rechts_post_normiert_auf_sham7,clemens);

subplot(5,4,9), imagesc(kathodal_10_2_links_post_normiert_auf_prae7,clemens);
subplot(5,4,10), imagesc(kathodal_10_2_rechts_post_normiert_auf_prae7,clemens);
subplot(5,4,11), imagesc(kathodal_10_2_links_post_normiert_auf_sham7,clemens);
subplot(5,4,12), imagesc(kathodal_10_2_rechts_post_normiert_auf_sham7,clemens);
subplot(5,4,13), imagesc(kathodal_30_2_links_post_normiert_auf_prae7,clemens);
subplot(5,4,14), imagesc(kathodal_30_2_rechts_post_normiert_auf_prae7,clemens);
subplot(5,4,15), imagesc(kathodal_30_2_links_post_normiert_auf_sham7,clemens);
subplot(5,4,16), imagesc(kathodal_30_2_rechts_post_normiert_auf_sham7,clemens);

subplot(5,4,17), imagesc(sham_10_2_links_post_normiert_auf_prae7,clemens);
subplot(5,4,18), imagesc(sham_10_2_rechts_post_normiert_auf_prae7,clemens);
subplot(5,4,19), imagesc(sham_30_2_links_post_normiert_auf_prae7,clemens);
subplot(5,4,20), imagesc(sham_30_2_rechts_post_normiert_auf_prae7,clemens);


figure(8);
subplot(5,4,1), imagesc(anodal_10_2_links_post_normiert_auf_prae8,clemens);
subplot(5,4,2), imagesc(anodal_10_2_rechts_post_normiert_auf_prae8,clemens);
subplot(5,4,3), imagesc(anodal_10_2_links_post_normiert_auf_sham8,clemens);
subplot(5,4,4), imagesc(anodal_10_2_rechts_post_normiert_auf_sham8,clemens);
subplot(5,4,5), imagesc(anodal_30_2_links_post_normiert_auf_prae8,clemens);
subplot(5,4,6), imagesc(anodal_30_2_rechts_post_normiert_auf_prae8,clemens);
subplot(5,4,7), imagesc(anodal_30_2_links_post_normiert_auf_sham8,clemens);
subplot(5,4,8), imagesc(anodal_30_2_rechts_post_normiert_auf_sham8,clemens);

subplot(5,4,9), imagesc(kathodal_10_2_links_post_normiert_auf_prae8,clemens);
subplot(5,4,10), imagesc(kathodal_10_2_rechts_post_normiert_auf_prae8,clemens);
subplot(5,4,11), imagesc(kathodal_10_2_links_post_normiert_auf_sham8,clemens);
subplot(5,4,12), imagesc(kathodal_10_2_rechts_post_normiert_auf_sham8,clemens);
subplot(5,4,13), imagesc(kathodal_30_2_links_post_normiert_auf_prae8,clemens);
subplot(5,4,14), imagesc(kathodal_30_2_rechts_post_normiert_auf_prae8,clemens);
subplot(5,4,15), imagesc(kathodal_30_2_links_post_normiert_auf_sham8,clemens);
subplot(5,4,16), imagesc(kathodal_30_2_rechts_post_normiert_auf_sham8,clemens);

subplot(5,4,17), imagesc(sham_10_2_links_post_normiert_auf_prae8,clemens);
subplot(5,4,18), imagesc(sham_10_2_rechts_post_normiert_auf_prae8,clemens);
subplot(5,4,19), imagesc(sham_30_2_links_post_normiert_auf_prae8,clemens);
subplot(5,4,20), imagesc(sham_30_2_rechts_post_normiert_auf_prae8,clemens);


figure(9);
subplot(5,4,1), imagesc(anodal_10_2_links_post_normiert_auf_prae9,clemens);
subplot(5,4,2), imagesc(anodal_10_2_rechts_post_normiert_auf_prae9,clemens);
subplot(5,4,3), imagesc(anodal_10_2_links_post_normiert_auf_sham9,clemens);
subplot(5,4,4), imagesc(anodal_10_2_rechts_post_normiert_auf_sham9,clemens);
subplot(5,4,5), imagesc(anodal_30_2_links_post_normiert_auf_prae9,clemens);
subplot(5,4,6), imagesc(anodal_30_2_rechts_post_normiert_auf_prae9,clemens);
subplot(5,4,7), imagesc(anodal_30_2_links_post_normiert_auf_sham9,clemens);
subplot(5,4,8), imagesc(anodal_30_2_rechts_post_normiert_auf_sham9,clemens);

subplot(5,4,9), imagesc(kathodal_10_2_links_post_normiert_auf_prae9,clemens);
subplot(5,4,10), imagesc(kathodal_10_2_rechts_post_normiert_auf_prae9,clemens);
subplot(5,4,11), imagesc(kathodal_10_2_links_post_normiert_auf_sham9,clemens);
subplot(5,4,12), imagesc(kathodal_10_2_rechts_post_normiert_auf_sham9,clemens);
subplot(5,4,13), imagesc(kathodal_30_2_links_post_normiert_auf_prae9,clemens);
subplot(5,4,14), imagesc(kathodal_30_2_rechts_post_normiert_auf_prae9,clemens);
subplot(5,4,15), imagesc(kathodal_30_2_links_post_normiert_auf_sham9,clemens);
subplot(5,4,16), imagesc(kathodal_30_2_rechts_post_normiert_auf_sham9,clemens);

subplot(5,4,17), imagesc(sham_10_2_links_post_normiert_auf_prae9,clemens);
subplot(5,4,18), imagesc(sham_10_2_rechts_post_normiert_auf_prae9,clemens);
subplot(5,4,19), imagesc(sham_30_2_links_post_normiert_auf_prae9,clemens);
subplot(5,4,20), imagesc(sham_30_2_rechts_post_normiert_auf_prae9,clemens);


figure(10);
subplot(5,4,1), imagesc(anodal_10_2_links_post_normiert_auf_prae10,clemens);
subplot(5,4,2), imagesc(anodal_10_2_rechts_post_normiert_auf_prae10,clemens);
subplot(5,4,3), imagesc(anodal_10_2_links_post_normiert_auf_sham10,clemens);
subplot(5,4,4), imagesc(anodal_10_2_rechts_post_normiert_auf_sham10,clemens);
subplot(5,4,5), imagesc(anodal_30_2_links_post_normiert_auf_prae10,clemens);
subplot(5,4,6), imagesc(anodal_30_2_rechts_post_normiert_auf_prae10,clemens);
subplot(5,4,7), imagesc(anodal_30_2_links_post_normiert_auf_sham10,clemens);
subplot(5,4,8), imagesc(anodal_30_2_rechts_post_normiert_auf_sham10,clemens);

subplot(5,4,9), imagesc(kathodal_10_2_links_post_normiert_auf_prae10,clemens);
subplot(5,4,10), imagesc(kathodal_10_2_rechts_post_normiert_auf_prae10,clemens);
subplot(5,4,11), imagesc(kathodal_10_2_links_post_normiert_auf_sham10,clemens);
subplot(5,4,12), imagesc(kathodal_10_2_rechts_post_normiert_auf_sham10,clemens);
subplot(5,4,13), imagesc(kathodal_30_2_links_post_normiert_auf_prae10,clemens);
subplot(5,4,14), imagesc(kathodal_30_2_rechts_post_normiert_auf_prae10,clemens);
subplot(5,4,15), imagesc(kathodal_30_2_links_post_normiert_auf_sham10,clemens);
subplot(5,4,16), imagesc(kathodal_30_2_rechts_post_normiert_auf_sham10,clemens);

subplot(5,4,17), imagesc(sham_10_2_links_post_normiert_auf_prae10,clemens);
subplot(5,4,18), imagesc(sham_10_2_rechts_post_normiert_auf_prae10,clemens);
subplot(5,4,19), imagesc(sham_30_2_links_post_normiert_auf_prae10,clemens);
subplot(5,4,20), imagesc(sham_30_2_rechts_post_normiert_auf_prae10,clemens);


figure(11);
subplot(5,4,1), imagesc(anodal_10_2_links_post_normiert_auf_prae11,clemens);
subplot(5,4,2), imagesc(anodal_10_2_rechts_post_normiert_auf_prae11,clemens);
subplot(5,4,3), imagesc(anodal_10_2_links_post_normiert_auf_sham11,clemens);
subplot(5,4,4), imagesc(anodal_10_2_rechts_post_normiert_auf_sham11,clemens);
subplot(5,4,5), imagesc(anodal_30_2_links_post_normiert_auf_prae11,clemens);
subplot(5,4,6), imagesc(anodal_30_2_rechts_post_normiert_auf_prae11,clemens);
subplot(5,4,7), imagesc(anodal_30_2_links_post_normiert_auf_sham11,clemens);
subplot(5,4,8), imagesc(anodal_30_2_rechts_post_normiert_auf_sham11,clemens);

subplot(5,4,9), imagesc(kathodal_10_2_links_post_normiert_auf_prae11,clemens);
subplot(5,4,10), imagesc(kathodal_10_2_rechts_post_normiert_auf_prae11,clemens);
subplot(5,4,11), imagesc(kathodal_10_2_links_post_normiert_auf_sham11,clemens);
subplot(5,4,12), imagesc(kathodal_10_2_rechts_post_normiert_auf_sham11,clemens);
subplot(5,4,13), imagesc(kathodal_30_2_links_post_normiert_auf_prae11,clemens);
subplot(5,4,14), imagesc(kathodal_30_2_rechts_post_normiert_auf_prae11,clemens);
subplot(5,4,15), imagesc(kathodal_30_2_links_post_normiert_auf_sham11,clemens);
subplot(5,4,16), imagesc(kathodal_30_2_rechts_post_normiert_auf_sham11,clemens);

subplot(5,4,17), imagesc(sham_10_2_links_post_normiert_auf_prae11,clemens);
subplot(5,4,18), imagesc(sham_10_2_rechts_post_normiert_auf_prae11,clemens);
subplot(5,4,19), imagesc(sham_30_2_links_post_normiert_auf_prae11,clemens);
subplot(5,4,20), imagesc(sham_30_2_rechts_post_normiert_auf_prae11,clemens);


figure(12);
subplot(5,4,1), imagesc(anodal_10_2_links_post_normiert_auf_prae12,clemens);
subplot(5,4,2), imagesc(anodal_10_2_rechts_post_normiert_auf_prae12,clemens);
subplot(5,4,3), imagesc(anodal_10_2_links_post_normiert_auf_sham12,clemens);
subplot(5,4,4), imagesc(anodal_10_2_rechts_post_normiert_auf_sham12,clemens);
subplot(5,4,5), imagesc(anodal_30_2_links_post_normiert_auf_prae12,clemens);
subplot(5,4,6), imagesc(anodal_30_2_rechts_post_normiert_auf_prae12,clemens);
subplot(5,4,7), imagesc(anodal_30_2_links_post_normiert_auf_sham12,clemens);
subplot(5,4,8), imagesc(anodal_30_2_rechts_post_normiert_auf_sham12,clemens);

subplot(5,4,9), imagesc(kathodal_10_2_links_post_normiert_auf_prae12,clemens);
subplot(5,4,10), imagesc(kathodal_10_2_rechts_post_normiert_auf_prae12,clemens);
subplot(5,4,11), imagesc(kathodal_10_2_links_post_normiert_auf_sham12,clemens);
subplot(5,4,12), imagesc(kathodal_10_2_rechts_post_normiert_auf_sham12,clemens);
subplot(5,4,13), imagesc(kathodal_30_2_links_post_normiert_auf_prae12,clemens);
subplot(5,4,14), imagesc(kathodal_30_2_rechts_post_normiert_auf_prae12,clemens);
subplot(5,4,15), imagesc(kathodal_30_2_links_post_normiert_auf_sham12,clemens);
subplot(5,4,16), imagesc(kathodal_30_2_rechts_post_normiert_auf_sham12,clemens);

subplot(5,4,17), imagesc(sham_10_2_links_post_normiert_auf_prae12,clemens);
subplot(5,4,18), imagesc(sham_10_2_rechts_post_normiert_auf_prae12,clemens);
subplot(5,4,19), imagesc(sham_30_2_links_post_normiert_auf_prae12,clemens);
subplot(5,4,20), imagesc(sham_30_2_rechts_post_normiert_auf_prae12,clemens);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DARSTELLUNG VON MITTELWERTEN ÜBER DIE GRUPPEN normiert auf PRAE%%%%%%%%%%%%%%%%%%%%%%%

%Anodal Mittelwert der Linksstimulierten linkes Auge

anodal_linksstimuliert_mittelwert=(anodal_10_2_links_post_normiert_auf_prae1+anodal_10_2_links_post_normiert_auf_prae2+anodal_10_2_links_post_normiert_auf_prae3+anodal_10_2_links_post_normiert_auf_prae4+anodal_10_2_links_post_normiert_auf_prae5+anodal_10_2_links_post_normiert_auf_prae6+anodal_10_2_rechts_post_normiert_auf_prae1+anodal_10_2_rechts_post_normiert_auf_prae2+anodal_10_2_rechts_post_normiert_auf_prae3+anodal_10_2_rechts_post_normiert_auf_prae4+anodal_10_2_rechts_post_normiert_auf_prae5+anodal_10_2_rechts_post_normiert_auf_prae6)/12;
figure(13);
imagesc(anodal_linksstimuliert_mittelwert,clemens);

%anodal Mittelwert der Rechtsstimulierten linkes Auge

anodal_rechtsstimuliert_mittelwert=(anodal_10_2_links_post_normiert_auf_prae7+anodal_10_2_links_post_normiert_auf_prae8+anodal_10_2_links_post_normiert_auf_prae9+anodal_10_2_links_post_normiert_auf_prae10+anodal_10_2_links_post_normiert_auf_prae11+anodal_10_2_links_post_normiert_auf_prae12+anodal_10_2_rechts_post_normiert_auf_prae7+anodal_10_2_rechts_post_normiert_auf_prae8+anodal_10_2_rechts_post_normiert_auf_prae9+anodal_10_2_rechts_post_normiert_auf_prae10+anodal_10_2_rechts_post_normiert_auf_prae11+anodal_10_2_rechts_post_normiert_auf_prae12)/12;
figure(14);
imagesc(anodal_rechtsstimuliert_mittelwert,clemens);

%anodal Mittelwert vom 30_2 der Linksstimulierten linkes Auge

anodal_linksstimuliert_30_2_mittelwert=(anodal_30_2_links_post_normiert_auf_prae1+anodal_30_2_links_post_normiert_auf_prae2+anodal_30_2_links_post_normiert_auf_prae3+anodal_30_2_links_post_normiert_auf_prae4+anodal_30_2_links_post_normiert_auf_prae5+anodal_30_2_links_post_normiert_auf_prae6+anodal_30_2_rechts_post_normiert_auf_prae1+anodal_30_2_rechts_post_normiert_auf_prae2+anodal_30_2_rechts_post_normiert_auf_prae3+anodal_30_2_rechts_post_normiert_auf_prae4+anodal_30_2_rechts_post_normiert_auf_prae5+anodal_30_2_rechts_post_normiert_auf_prae6)/12;
figure(15);
imagesc(anodal_linksstimuliert_30_2_mittelwert,clemens);

%anodal Mittelwert vom 30_2 der Rechtsstimulierten linkes Auge

anodal_rechtsstimuliert_30_2_mittelwert=(anodal_30_2_links_post_normiert_auf_prae7+anodal_30_2_links_post_normiert_auf_prae8+anodal_30_2_links_post_normiert_auf_prae9+anodal_30_2_links_post_normiert_auf_prae10+anodal_30_2_links_post_normiert_auf_prae11+anodal_30_2_links_post_normiert_auf_prae12+anodal_30_2_rechts_post_normiert_auf_prae7+anodal_30_2_rechts_post_normiert_auf_prae8+anodal_30_2_rechts_post_normiert_auf_prae9+anodal_30_2_rechts_post_normiert_auf_prae10+anodal_30_2_rechts_post_normiert_auf_prae11+anodal_30_2_rechts_post_normiert_auf_prae12)/12;
figure(16);
imagesc(anodal_rechtsstimuliert_30_2_mittelwert,clemens);








%Kathodal Mittelwert der Linksstimulierten beide Auge

kathodal_linksstimuliert_mittelwert=(kathodal_10_2_links_post_normiert_auf_prae1+kathodal_10_2_links_post_normiert_auf_prae2+kathodal_10_2_links_post_normiert_auf_prae3+kathodal_10_2_links_post_normiert_auf_prae4+kathodal_10_2_links_post_normiert_auf_prae5+kathodal_10_2_links_post_normiert_auf_prae6+kathodal_10_2_rechts_post_normiert_auf_prae1+kathodal_10_2_rechts_post_normiert_auf_prae2+kathodal_10_2_rechts_post_normiert_auf_prae3+kathodal_10_2_rechts_post_normiert_auf_prae4+kathodal_10_2_rechts_post_normiert_auf_prae5+kathodal_10_2_rechts_post_normiert_auf_prae6)/12;
figure(17);
imagesc(kathodal_linksstimuliert_mittelwert,clemens);

%Kathodal Mittelwert der Rechtsstimulierten beide Augen

kathodal_rechtsstimuliert_mittelwert=(kathodal_10_2_links_post_normiert_auf_prae7+kathodal_10_2_links_post_normiert_auf_prae8+kathodal_10_2_links_post_normiert_auf_prae9+kathodal_10_2_links_post_normiert_auf_prae10+kathodal_10_2_links_post_normiert_auf_prae11+kathodal_10_2_links_post_normiert_auf_prae12+kathodal_10_2_rechts_post_normiert_auf_prae7+kathodal_10_2_rechts_post_normiert_auf_prae8+kathodal_10_2_rechts_post_normiert_auf_prae9+kathodal_10_2_rechts_post_normiert_auf_prae10+kathodal_10_2_rechts_post_normiert_auf_prae11+kathodal_10_2_rechts_post_normiert_auf_prae12)/12;
figure(18);
imagesc(kathodal_rechtsstimuliert_mittelwert,clemens);

%kathodal Mittelwert vom 30_2 der Linksstimulierten linkes Auge

kathodal_linksstimuliert_30_2_mittelwert=(kathodal_30_2_links_post_normiert_auf_prae1+kathodal_30_2_links_post_normiert_auf_prae2+kathodal_30_2_links_post_normiert_auf_prae3+kathodal_30_2_links_post_normiert_auf_prae4+kathodal_30_2_links_post_normiert_auf_prae5+kathodal_30_2_links_post_normiert_auf_prae6+kathodal_30_2_rechts_post_normiert_auf_prae1+kathodal_30_2_rechts_post_normiert_auf_prae2+kathodal_30_2_rechts_post_normiert_auf_prae3+kathodal_30_2_rechts_post_normiert_auf_prae4+kathodal_30_2_rechts_post_normiert_auf_prae5+kathodal_30_2_rechts_post_normiert_auf_prae6)/12;
figure(19);
imagesc(kathodal_linksstimuliert_30_2_mittelwert,clemens);

%kathodal Mittelwert vom 30_2 der Rechtsstimulierten linkes Auge

kathodal_rechtsstimuliert_30_2_mittelwert=(kathodal_30_2_links_post_normiert_auf_prae7+kathodal_30_2_links_post_normiert_auf_prae8+kathodal_30_2_links_post_normiert_auf_prae9+kathodal_30_2_links_post_normiert_auf_prae10+kathodal_30_2_links_post_normiert_auf_prae11+kathodal_30_2_links_post_normiert_auf_prae12+kathodal_30_2_rechts_post_normiert_auf_prae7+kathodal_30_2_rechts_post_normiert_auf_prae8+kathodal_30_2_rechts_post_normiert_auf_prae9+kathodal_30_2_rechts_post_normiert_auf_prae10+kathodal_30_2_rechts_post_normiert_auf_prae11+kathodal_30_2_rechts_post_normiert_auf_prae12)/6;
figure(20);
imagesc(kathodal_rechtsstimuliert_30_2_mittelwert,clemens);





%SHAM Mittelwert der Linksstimulierten linkes Auge

sham_linksstimuliert_mittelwert=(sham_10_2_links_post_normiert_auf_prae1+sham_10_2_links_post_normiert_auf_prae2+sham_10_2_links_post_normiert_auf_prae3+sham_10_2_links_post_normiert_auf_prae4+sham_10_2_links_post_normiert_auf_prae5+sham_10_2_links_post_normiert_auf_prae6+sham_10_2_rechts_post_normiert_auf_prae1+sham_10_2_rechts_post_normiert_auf_prae2+sham_10_2_rechts_post_normiert_auf_prae3+sham_10_2_rechts_post_normiert_auf_prae4+sham_10_2_rechts_post_normiert_auf_prae5+sham_10_2_rechts_post_normiert_auf_prae6)/12;
figure(21);
imagesc(sham_linksstimuliert_mittelwert,clemens);

%sham Mittelwert der Rechtsstimulierten linkes Auge

sham_rechtsstimuliert_mittelwert=(sham_10_2_links_post_normiert_auf_prae7+sham_10_2_links_post_normiert_auf_prae8+sham_10_2_links_post_normiert_auf_prae9+sham_10_2_links_post_normiert_auf_prae10+sham_10_2_links_post_normiert_auf_prae11+sham_10_2_links_post_normiert_auf_prae12+sham_10_2_rechts_post_normiert_auf_prae7+sham_10_2_rechts_post_normiert_auf_prae8+sham_10_2_rechts_post_normiert_auf_prae9+sham_10_2_rechts_post_normiert_auf_prae10+sham_10_2_rechts_post_normiert_auf_prae11+sham_10_2_rechts_post_normiert_auf_prae12)/12;
figure(22);
imagesc(sham_rechtsstimuliert_mittelwert,clemens);

%sham Mittelwert vom 30_2 der Linksstimulierten linkes Auge

sham_linksstimuliert_30_2_mittelwert=(sham_30_2_links_post_normiert_auf_prae1+sham_30_2_links_post_normiert_auf_prae2+sham_30_2_links_post_normiert_auf_prae3+sham_30_2_links_post_normiert_auf_prae4+sham_30_2_links_post_normiert_auf_prae5+sham_30_2_links_post_normiert_auf_prae6)/6;
figure(23);
imagesc(sham_linksstimuliert_30_2_mittelwert,clemens);

%sham Mittelwert vom 30_2 der Rechtsstimulierten linkes Auge

sham_rechtsstimuliert_30_2_mittelwert=(sham_30_2_links_post_normiert_auf_prae7+sham_30_2_links_post_normiert_auf_prae8+sham_30_2_links_post_normiert_auf_prae9+sham_30_2_links_post_normiert_auf_prae10+sham_30_2_links_post_normiert_auf_prae11+sham_30_2_links_post_normiert_auf_prae12)/6;
figure(24);
imagesc(sham_rechtsstimuliert_30_2_mittelwert,clemens);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DARSTELLUNG VON MITTELWERTEN ÜBER DIE GRUPPEN normiert auf SHAM%%%%%%%%%%%%%%%%%%%%%%%


%Anodal Mittelwert der Linksstimulierten linkes Auge

anodal_linksstimuliert_mittelwert_sham=(anodal_10_2_links_post_normiert_auf_sham1+anodal_10_2_links_post_normiert_auf_sham2+anodal_10_2_links_post_normiert_auf_sham3+anodal_10_2_links_post_normiert_auf_sham4+anodal_10_2_links_post_normiert_auf_sham5+anodal_10_2_links_post_normiert_auf_sham6+anodal_10_2_rechts_post_normiert_auf_sham1+anodal_10_2_rechts_post_normiert_auf_sham2+anodal_10_2_rechts_post_normiert_auf_sham3+anodal_10_2_rechts_post_normiert_auf_sham4+anodal_10_2_rechts_post_normiert_auf_sham5+anodal_10_2_rechts_post_normiert_auf_sham6)/12;
figure(27);
imagesc(anodal_linksstimuliert_mittelwert_sham,clemens);

%anodal Mittelwert der Rechtsstimulierten linkes Auge

anodal_rechtsstimuliert_mittelwert_sham=(anodal_10_2_links_post_normiert_auf_sham7+anodal_10_2_links_post_normiert_auf_sham8+anodal_10_2_links_post_normiert_auf_sham9+anodal_10_2_links_post_normiert_auf_sham10+anodal_10_2_links_post_normiert_auf_sham11+anodal_10_2_links_post_normiert_auf_sham12+anodal_10_2_rechts_post_normiert_auf_sham7+anodal_10_2_rechts_post_normiert_auf_sham8+anodal_10_2_rechts_post_normiert_auf_sham9+anodal_10_2_rechts_post_normiert_auf_sham10+anodal_10_2_rechts_post_normiert_auf_sham11+anodal_10_2_rechts_post_normiert_auf_sham12)/12;
figure(28);
imagesc(anodal_rechtsstimuliert_mittelwert_sham,clemens);


%Kathodal Mittelwert der Linksstimulierten beide Auge

kathodal_linksstimuliert_mittelwert_sham=(kathodal_10_2_links_post_normiert_auf_sham1+kathodal_10_2_links_post_normiert_auf_sham2+kathodal_10_2_links_post_normiert_auf_sham3+kathodal_10_2_links_post_normiert_auf_sham4+kathodal_10_2_links_post_normiert_auf_sham5+kathodal_10_2_links_post_normiert_auf_sham6+kathodal_10_2_rechts_post_normiert_auf_sham1+kathodal_10_2_rechts_post_normiert_auf_sham2+kathodal_10_2_rechts_post_normiert_auf_sham3+kathodal_10_2_rechts_post_normiert_auf_sham4+kathodal_10_2_rechts_post_normiert_auf_sham5+kathodal_10_2_rechts_post_normiert_auf_sham6)/12;
figure(29);
imagesc(kathodal_linksstimuliert_mittelwert_sham,clemens);

%Kathodal Mittelwert der Rechtsstimulierten beide Augen

kathodal_rechtsstimuliert_mittelwert_sham=(kathodal_10_2_links_post_normiert_auf_sham7+kathodal_10_2_links_post_normiert_auf_sham8+kathodal_10_2_links_post_normiert_auf_sham9+kathodal_10_2_links_post_normiert_auf_sham10+kathodal_10_2_links_post_normiert_auf_sham11+kathodal_10_2_links_post_normiert_auf_sham12+kathodal_10_2_rechts_post_normiert_auf_sham7+kathodal_10_2_rechts_post_normiert_auf_sham8+kathodal_10_2_rechts_post_normiert_auf_sham9+kathodal_10_2_rechts_post_normiert_auf_sham10+kathodal_10_2_rechts_post_normiert_auf_sham11+kathodal_10_2_rechts_post_normiert_auf_sham12)/12;
figure(30);
imagesc(kathodal_rechtsstimuliert_mittelwert_sham,clemens);



%hiermit kann man Matrizen von Dezibel in Apostilb umrechnen
% for a=1:12
%     for b=1:76
%         for c=1:24
%
%             peter(c,b,a)=10^((peter(c,b,a)-40)/(-10));
%         end
%     end
% end
%
% for m=1:12
%     xlswrite('C:\Dokumente und Einstellungen\tDCS-King!\Desktop\testtesttest555534.xls',peter(:,:,m),m);
% end



