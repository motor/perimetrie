clear all
RohdatenEinlesen;   %ohne Zeitreihenfolge
%Rohdateneinlesen2; %mit Zeitreihenfolge
%Matrixinvertierung;    %dreht rechtsstimuliert um den vertikalen Median
%(dann vergleichbar mit linksstimuliert wenn Seitenvergleiche gefordert
VariablenKlassen;  %hier definiert man, welche Vergleiche gezogen werden sollen
laufvariable=0; %Hilsvariable
laufvariable2=zeros(15,6);  %Hilsmatrix für Datenexport
laufvariable3=0; %Hilsvariable
speicher=zeros(55,(length(SubjectCellArray)*length(VergleicheCellArray)*length(FelderCellArray))); %Exportvariable
for probandosch=1: length(SubjectCellArray)    %Funktionsschleife
    subjects=cell2mat(SubjectCellArray(probandosch)); %Funktionsschleife
    for vergleichosch=1: length(VergleicheCellArray) %Funktionsschleife
        Vergleich=cell2mat(VergleicheCellArray(vergleichosch)); %Funktionsschleife
        laufvariable=0; %Funktionsschleife
        for punktosch=1: length(FelderCellArray) %Funktionsschleife
            Punkte=cell2mat(FelderCellArray(punktosch)); %Funktionsschleife
            MittelX = Semiabert2009(subjects,Vergleich(1,:),Punkte,probanden_10_2);   %hier bie Bedarf 30_2 eintragen
            MittelY = Semiabert2009(subjects,Vergleich(2,:),Punkte,probanden_10_2);   %hier bie Bedarf 30_2 eintragen
            % for r=1:(length(MittelX)/2)            % folgendes muss aktiviert werden,
            % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% wenn man die beiden Augen eines Subjects mitteln will
            %    testtesterX(r)=((MittelX(r*2-1))+(MittelX(r*2)))/2;%%%%%%%%%%%%%%%%%%%
            % end                                    %%%%%%%%%%%%%%%%%%%%%%%%%%%
            % for r=1:(length(MittelY)/2)            %%%%%%%%%%%%%%%%%%%%%%%%%%%
            %    testtesterY(r)=((MittelY(r*2-1))+(MittelY(r*2)))/2; %%%%%%%
            % end                                   %%%BEI Doppelaugentests aktivieren
            %  MittelX=testtesterX;
            %  MittelY=testtesterY;
            [h,p,ci]=ttest(MittelX,MittelY);    %pwertberechnung
            laufvariable3=laufvariable3+1; %Hilfsvariable
            speicher(1,laufvariable3)=mean(MittelX); %Datenexport
            speicher(2,laufvariable3)=mean(MittelY); %Datenexport
            speicher(3,laufvariable3)=p; %Datenexport
            speicher(4,laufvariable3)=std(MittelX); %Datenexport
            speicher(5,laufvariable3)=std(MittelY); %Datenexport
            %%%%%%%%%%%%%AntjeAuswertungszusätze
            for g=1:length(MittelX)
                speicher(5+g,laufvariable3)=MittelX(g);
            end
            speicher(30,:)=0;
            for g=1:length(MittelX)
                speicher(30+g,laufvariable3)=MittelY(g);
            end
            
            laufvariable2(vergleichosch,probandosch)=laufvariable;
            
        end;
    end;
end;
%xlswrite('LinksundRechts3.xls',speicher);    %Excelexport