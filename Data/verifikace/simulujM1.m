clear all
close all
clc

replic = 10;   % pocet simulaci
endo = 6;     % pocet endogennich promenych 
lags = 5;      % pocet zpozdeni pro autokorelaci
periods = 150;  % pocet obdobi (dle po�tu pozorov�n�)
drop = 50;    % vyhodi pocatecnich 100 pozorovani (kvuli poctacnim podminkam) periods v modfile = drops  + periods

% varobs - all
% Yhat Chat Ihat qhat Rhat pihat

index = [1 2 3 4 5 6];

ser = zeros(length(index),periods-drop,replic);
sim_mean =zeros(length(index),replic);
sim_std = zeros(length(index),replic);
sim_auto =zeros(length(index),lags,replic);
sim_corr = zeros(length(index),length(index),replic);
rr = 1;
save simul_results_IM1.mat replic endo lags periods drop index ser sim_mean sim_std sim_auto sim_corr rr

while rr<=replic
    dynare IM1Sim.mod
    load simul_results_IM1.mat
    pom_tot= oo_.endo_simul(index,drop+1:end);
    [pom_tr pom_gap] = hpfilter(pom_tot',1600);
     pom = pom_gap';
  
%     pom = oo_.endo_simul(index,drop+1:end);
%      ser(:,:,rr)=pom;
    
    
    sim_mean(:,rr) = mean(pom,2);
    sim_std(:,rr) = std(pom,0,2);
    
    for ii =1:length(index)
      sim_auto(ii,:,rr)= autocorrel(pom(ii,:), lags);
    end
    sim_corr(:,:,rr) = corr(pom');
    rr = rr+1;
    save simul_results_IM1.mat replic endo lags periods drop index ser sim_mean sim_std sim_auto sim_corr rr
end

run run_resultsM1.m

