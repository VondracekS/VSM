%clear all
%close all
%clc

load simul_results_IM1.mat
%Yhat Chat Ihat qhat Rhat pihat;
data_pop = {'Y' 'C' 'I' 'q' 'R' 'pi'};

fprintf('-----------------------------------\n')
fprintf('COEFFICIENTS OF AUTOCORRELATION\n')
fprintf('-----------------------------------\n')
fprintf('Lag          Y                  C                  I                q               R               pi                 Y\n')
pom = mean(sim_auto,3);
ql = quantile(sim_auto,0.05,3);
qu = quantile(sim_auto,0.95,3);
for ii=1:5
    fprintf('%3.0f      %6.4f              %6.4f             %6.4f           %6.4f           %6.4f            %6.4f\r\n',[ii pom(:,ii)']);
    fprintf('       (%6.4f,%6.4f)  (%6.4f,%6.4f)  (%6.4f,%6.4f)   (%6.4f,%6.4f)        (%6.4f,%6.4f)       (%6.4f,%6.4f)\n',[ql(1,ii) qu(1,ii)...
        ql(2,ii) qu(2,ii) ql(3,ii) qu(3,ii) ql(4,ii) qu(4,ii) ... 
        ql(5,ii) qu(5,ii) ql(6,ii) qu(6,ii)]);
end


fprintf('-------------------\n')
fprintf('SAMPLE MOMENTS\n')
fprintf('-------------------\n')
fprintf('               Y               C                   I                   q               R               pi\n')
pom = mean(sim_mean,2);
ql = quantile(sim_mean,0.05,2);
qu = quantile(sim_mean,0.95,2);
ii=1;
fprintf('Mean       %6.4f           %6.4f              %6.4f               %6.4f                %6.4f            %6.4f\n',pom(:)');
fprintf('       (%6.4f,%6.4f)   (%6.4f,%6.4f)   (%6.4f,%6.4f)    (%6.4f,%6.4f)    (%6.4f,%6.4f)   (%6.4f,%6.4f)\r\n',[ql(1,ii) qu(1,ii)...
        ql(2,ii) qu(2,ii) ql(3,ii) qu(3,ii) ql(4,ii) qu(4,ii)...
          ql(5,ii) qu(5,ii) ql(6,ii) qu(6,ii)]);
pom = mean(sim_std,2);
ql = quantile(sim_std,0.05,2);
qu = quantile(sim_std,0.95,2);
fprintf('Std.       %6.4f           %6.4f            %6.4f          %6.4f                %6.4f         %6.4f\n',pom(:)');
fprintf('       (%6.4f,%6.4f)   (%6.4f,%6.4f)  (%6.4f,%6.4f)  (%6.4f,%6.4f)   (%6.4f,%6.4f)   (%6.4f,%6.4f)\r\n',[ql(1,ii) qu(1,ii)...
        ql(2,ii) qu(2,ii) ql(3,ii) qu(3,ii) ql(4,ii) qu(4,ii)...
          ql(5,ii) qu(5,ii) ql(6,ii) qu(6,ii)]);

fprintf('--------------------------\n')
fprintf('MATRIX OF CORRELATIONS\n')
fprintf('--------------------------\n')
fprintf('               Y               C                   I                   q             R             pi\n')
pom = mean(sim_corr,3);
ql = quantile(sim_corr,0.05,3);
qu = quantile(sim_corr,0.95,3);
for ii = 1:6
    fprintf('%5s  ',cell2mat(data_pop(ii)));
    fprintf('    %6.4f              %6.4f         %6.4f            %6.4f        %6.4f        %6.4f\n',pom(ii,:));
    fprintf('       (%6.4f,%6.4f)   (%6.4f,%6.4f)  (%6.4f,%6.4f)   (%6.4f,%6.4f)    (%6.4f,%6.4f)   (%6.4f,%6.4f)\n',[ql(1,ii) qu(1,ii)...
        ql(2,ii) qu(2,ii) ql(3,ii) qu(3,ii) ql(4,ii) qu(4,ii)...
          ql(5,ii) qu(5,ii) ql(6,ii) qu(6,ii)]);

end

