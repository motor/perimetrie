% Definition der Subjectklassen
SubjectCellArray{1}=1:12;      %Gesamte Gruppe
%SubjectCellArray{1}=1:6;    % Linksstimulierte
%SubjectCellArray{1}=7:12;   % Rechtsstimulierte
%SubjectCellArray{4}=[2,3,8,9,10];   %M‰nner
%SubjectCellArray{5}=[1,4,5,6,7,11,12];  % Frauen


% Definition mˆglicher Vergleiche
%VergleicheCellArray{1}=[1;3]; %Anodal Linkes Auge Pr‰Post bzw 1. Test pr‰
%VergleicheCellArray{1}=[2;4]; %Anodal Rechtes Auge Pr‰Post bzw 2. Test pr‰
VergleicheCellArray{1}=[[1,2];[3,4]]; %Anodal Beide Augen Pr‰Post
%VergleicheCellArray{2}=[5;7]; % Kathodal linkes Auge Pr‰Post
%VergleicheCellArray{2}=[6;8]; % Kathodal rechtes Auge Pr‰Post
%VergleicheCellArray{2}=[[5,6];[7,8]]; % Kathodal beide Augen Pr‰Post
%VergleicheCellArray{3}=[9;11]; %Sham linkes Auge Pr‰Post
%VergleicheCellArray{3}=[10;12]; %Sham rechtes Auge Pr‰Post
%VergleicheCellArray{3}=[[9,10];[11,12]]; %Sham beide Augen Pr‰Post
%VergleicheCellArray{4}=[3;11]; %Anodal linkes Auge Post/Shampost
%VergleicheCellArray{4}=[4;12]; %Anodal rechtes Auge Post/Shampost
%VergleicheCellArray{4}=[[3,4];[11,12]]; %Anodal beide Augen Post/Shampost
%VergleicheCellArray{5}=[7;11]; %Kathodal linkes Auge Post/Shampost
%VergleicheCellArray{5}=[8;12]; %Kathodal rechtes Auge Post/Shampost
%VergleicheCellArray{5}=[[7,8];[11,12]]; %Kathodal beide Augen Post/Shampost
% VergleicheCellArray{1}={[1,2,5,6,9,10];[3,4]}; %Anodal beide Augen Ges.Pr
% VergleicheCellArray{2}={[1,2,5,6,9,10];[7,8]}; %Kathodal beide Augen
% Ges.Pr.


%Definition der Felder
 FelderCellArray{1}=[[5,5];[5,6];[6,5];[6,6]]; % Isopter 1
% FelderCellArray{2}=[[4,5];[5,4];[4,6];[5,7];[6,4];[7,5];[7,6];[6,7]]; % Isoper 2
% FelderCellArray{3}=[[5,3];[4,4];[3,5];[3,6];[4,7];[5,8];[6,3];[7,4];[8,5];[8,6];[7,7];[6,8]];% Isoper 3
% FelderCellArray{4}=[[5,2];[4,3];[3,4];[2,5];[2,6];[3,7];[4,8];[5,9];[6,9];[7,8];[8,7];[9,6];[9,5];[8,4];[7,3];[6,2]]; % Isoper 4
%FelderCellArray{5}=[[5,1];[4,2];[3,3];[2,4];[1,5];[3,2];[2,3];[1,6];[2,7];[3,8];[4,9];[5,10];[2,8];[3,9];[6,10];[7,9];[8,8];[9,7];[10,6];[8,9];[9,8];[10,5];[9,4];[8,3];[7,2];[6,1];[9,3];[8,2]]; % Isoper 5
%FelderCellArray{1}=[[5,1];[5,2];[5,3];[5,4];[5,5]]; %Meridian horizontal Quadrant 1
%FelderCellArray{2}=[[5,5];[4,5];[3,5];[2,5];[1,5]]; %Meridian vertikal Quadrant 1
%FelderCellArray{3}=[[5,6];[5,7];[5,8];[5,9];[5,10]];%Meridian horizontal Quadrant 2
%FelderCellArray{4}=[[5,6];[4,6];[3,6];[2,6];[1,6]]; %Meridian vertikal Quadrant 2
%FelderCellArray{5}=[[6,1];[6,2];[6,3];[6,4];[6,5]];%Meridian horizontal Quadrant 3
%FelderCellArray{6}=[[6,5];[7,5];[8,5];[9,5];[10,5]]; %Meridian vertikal Quadrant 3
%FelderCellArray{7}=[[6,6];[6,7];[6,8];[6,9];[6,10]];%Meridian horizontal Quadrant 4
%FelderCellArray{8}=[[6,6];[7,6];[8,6];[9,6];[10,6]]; %Meridian vertikal Quadrant 4
% FelderCellArray{1}=[[1,1];[1,2];[1,3];[1,4];[1,5];[2,1];[2,2];[2,3];[2,4];[2,5];[3,1];[3,2];[3,3];[3,4];[3,5];[4,1];[4,2];[4,3];[4,4];[4,5];[5,1];[5,2];[5,3];[5,4];[5,5]]; %Quadrant 1
% FelderCellArray{2}=[[1,6];[1,7];[1,8];[1,9];[1,10];[2,6];[2,7];[2,8];[2,9];[2,10];[3,6];[3,7];[3,8];[3,9];[3,10];[4,6];[4,7];[4,8];[4,9];[4,10];[5,6];[5,7];[5,8];[5,9];[5,10]]; %Quadrant 2
% FelderCellArray{3}=[[6,1];[6,2];[6,3];[6,4];[6,5];[7,1];[7,2];[7,3];[7,4];[7,5];[8,1];[8,2];[8,3];[8,4];[8,5];[9,1];[9,2];[9,3];[9,4];[9,5];[10,1];[10,2];[10,3];[10,4];[10,5]]; %Quadrant 3
% FelderCellArray{4}=[[6,6];[6,7];[6,8];[6,9];[6,10];[7,6];[7,7];[7,8];[7,9];[7,10];[8,6];[8,7];[8,8];[8,9];[8,10];[9,6];[9,7];[9,8];[9,9];[9,10];[10,6];[10,7];[10,8];[10,9];[10,10]];%Quadrant 4
% % FelderCellArray{18}=[[1,1];[1,2];[1,3];[1,4];[1,5];[2,1];[2,2];[2,3];[2,4];[2,5];[3,1];[3,2];[3,3];[3,4];[3,5];[4,1];[4,2];[4,3];[4,4];[4,5];[5,1];[5,2];[5,3];[5,4];[5,5];[1,6];[1,7];[1,8];[1,9];[1,10];[2,6];[2,7];[2,8];[2,9];[2,10];[3,6];[3,7];[3,8];[3,9];[3,10];[4,6];[4,7];[4,8];[4,9];[4,10];[5,6];[5,7];[5,8];[5,9];[5,10]]; %Oberfeld
% % FelderCellArray{19}=[[6,1];[6,2];[6,3];[6,4];[6,5];[7,1];[7,2];[7,3];[7,4];[7,5];[8,1];[8,2];[8,3];[8,4];[8,5];[9,1];[9,2];[9,3];[9,4];[9,5];[10,1];[10,2];[10,3];[10,4];[10,5];[6,6];[6,7];[6,8];[6,9];[6,10];[7,6];[7,7];[7,8];[7,9];[7,10];[8,6];[8,7];[8,8];[8,9];[8,10];[9,6];[9,7];[9,8];[9,9];[9,10];[10,6];[10,7];[10,8];[10,9];[10,10]]; %Unterfeld
% FelderCellArray{10}=[[1,1];[1,2];[1,3];[1,4];[1,5];[2,1];[2,2];[2,3];[2,4];[2,5];[3,1];[3,2];[3,3];[3,4];[3,5];[4,1];[4,2];[4,3];[4,4];[4,5];[5,1];[5,2];[5,3];[5,4];[5,5];[6,1];[6,2];[6,3];[6,4];[6,5];[7,1];[7,2];[7,3];[7,4];[7,5];[8,1];[8,2];[8,3];[8,4];[8,5];[9,1];[9,2];[9,3];[9,4];[9,5];[10,1];[10,2];[10,3];[10,4];[10,5]]; %Halbfeld links
% FelderCellArray{11}=[[1,6];[1,7];[1,8];[1,9];[1,10];[2,6];[2,7];[2,8];[2,9];[2,10];[3,6];[3,7];[3,8];[3,9];[3,10];[4,6];[4,7];[4,8];[4,9];[4,10];[5,6];[5,7];[5,8];[5,9];[5,10];[6,6];[6,7];[6,8];[6,9];[6,10];[7,6];[7,7];[7,8];[7,9];[7,10];[8,6];[8,7];[8,8];[8,9];[8,10];[9,6];[9,7];[9,8];[9,9];[9,10];[10,6];[10,7];[10,8];[10,9];[10,10]]; %Halbfeld rechts
% % 


