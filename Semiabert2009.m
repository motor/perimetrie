
function[Mittelwerte] =Semiabert2009(subjects,Vergleich,Punkte,ProbandenArray)
%wen teste ich (welches Subject, welcher Test)


Mittelwerte=[];
for i=1:length(subjects)
    Sub= cell2mat(ProbandenArray(subjects(i)));
   
    % welcher Vergleich pre post sham ..  oder welche augen teste ich (l,
    % r,l+r gemittelt, l+r einzeln)
    for j=1:length(Vergleich)
         Matrix=Sub(:,:,Vergleich(j));
        
         hilfe=[];
       % welche Felder sollen gemittelt werden
         for L=1:length(Punkte(:,1))
           hilfe=[hilfe Matrix(Punkte(L,1),Punkte(L,2))];
         end
         hilfe(hilfe == 0) = []; %nullen rausholen
         Mittelwerte = [Mittelwerte mean(hilfe)];
         
    end
 end



