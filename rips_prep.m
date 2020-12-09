function rips_prep
load('PosCorr.mat');
tmpa = 1 - PosCorr;
tmpb = double(tmpa);
tmpc = sqrt(tmpb);
tmpc(tmpc==1)=0;
tmpd = weight_conversion(tmpc, 'autofix');
writematrix(real(tmpd),'distmatposfc'); 
end