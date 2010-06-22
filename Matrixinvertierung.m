inversible=zeros(10,10,12);
for gert=7:12
    hilfsgert=cell2mat(probanden_10_2(gert));
for z=1:12
for i=1:10
for k=1:10
     inversible(i,11-k,z)= hilfsgert(i,k,z);
    end
end
    probanden_10_2{gert}=inversible;
end
end


