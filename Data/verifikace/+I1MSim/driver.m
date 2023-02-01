%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'I1MSim';
M_.dynare_version = '5.2';
oo_.dynare_version = '5.2';
options_.dynare_version = '5.2';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(3,1);
M_.exo_names_tex = cell(3,1);
M_.exo_names_long = cell(3,1);
M_.exo_names(1) = {'eRhat'};
M_.exo_names_tex(1) = {'eRhat'};
M_.exo_names_long(1) = {'eRhat'};
M_.exo_names(2) = {'euhat'};
M_.exo_names_tex(2) = {'euhat'};
M_.exo_names_long(2) = {'euhat'};
M_.exo_names(3) = {'eAhat'};
M_.exo_names_tex(3) = {'eAhat'};
M_.exo_names_long(3) = {'eAhat'};
M_.endo_names = cell(13,1);
M_.endo_names_tex = cell(13,1);
M_.endo_names_long = cell(13,1);
M_.endo_names(1) = {'Yhat'};
M_.endo_names_tex(1) = {'Yhat'};
M_.endo_names_long(1) = {'Yhat'};
M_.endo_names(2) = {'Chat'};
M_.endo_names_tex(2) = {'Chat'};
M_.endo_names_long(2) = {'Chat'};
M_.endo_names(3) = {'chat'};
M_.endo_names_tex(3) = {'chat'};
M_.endo_names_long(3) = {'chat'};
M_.endo_names(4) = {'c1hat'};
M_.endo_names_tex(4) = {'c1hat'};
M_.endo_names_long(4) = {'c1hat'};
M_.endo_names(5) = {'rrhat'};
M_.endo_names_tex(5) = {'rrhat'};
M_.endo_names_long(5) = {'rrhat'};
M_.endo_names(6) = {'Rhat'};
M_.endo_names_tex(6) = {'Rhat'};
M_.endo_names_long(6) = {'Rhat'};
M_.endo_names(7) = {'pihat'};
M_.endo_names_tex(7) = {'pihat'};
M_.endo_names_long(7) = {'pihat'};
M_.endo_names(8) = {'Xhat'};
M_.endo_names_tex(8) = {'Xhat'};
M_.endo_names_long(8) = {'Xhat'};
M_.endo_names(9) = {'hhat'};
M_.endo_names_tex(9) = {'hhat'};
M_.endo_names_long(9) = {'hhat'};
M_.endo_names(10) = {'qhat'};
M_.endo_names_tex(10) = {'qhat'};
M_.endo_names_long(10) = {'qhat'};
M_.endo_names(11) = {'bhat'};
M_.endo_names_tex(11) = {'bhat'};
M_.endo_names_long(11) = {'bhat'};
M_.endo_names(12) = {'uhat'};
M_.endo_names_tex(12) = {'uhat'};
M_.endo_names_long(12) = {'uhat'};
M_.endo_names(13) = {'Ahat'};
M_.endo_names_tex(13) = {'Ahat'};
M_.endo_names_long(13) = {'Ahat'};
M_.endo_partitions = struct();
M_.param_names = cell(26,1);
M_.param_names_tex = cell(26,1);
M_.param_names_long = cell(26,1);
M_.param_names(1) = {'beta'};
M_.param_names_tex(1) = {'beta'};
M_.param_names_long(1) = {'beta'};
M_.param_names(2) = {'gamma'};
M_.param_names_tex(2) = {'gamma'};
M_.param_names_long(2) = {'gamma'};
M_.param_names(3) = {'j'};
M_.param_names_tex(3) = {'j'};
M_.param_names_long(3) = {'j'};
M_.param_names(4) = {'eta'};
M_.param_names_tex(4) = {'eta'};
M_.param_names_long(4) = {'eta'};
M_.param_names(5) = {'my'};
M_.param_names_tex(5) = {'my'};
M_.param_names_long(5) = {'my'};
M_.param_names(6) = {'ypsilon'};
M_.param_names_tex(6) = {'ypsilon'};
M_.param_names_long(6) = {'ypsilon'};
M_.param_names(7) = {'delta'};
M_.param_names_tex(7) = {'delta'};
M_.param_names_long(7) = {'delta'};
M_.param_names(8) = {'X'};
M_.param_names_tex(8) = {'X'};
M_.param_names_long(8) = {'X'};
M_.param_names(9) = {'theta'};
M_.param_names_tex(9) = {'theta'};
M_.param_names_long(9) = {'theta'};
M_.param_names(10) = {'m'};
M_.param_names_tex(10) = {'m'};
M_.param_names_long(10) = {'m'};
M_.param_names(11) = {'rhou'};
M_.param_names_tex(11) = {'rhou'};
M_.param_names_long(11) = {'rhou'};
M_.param_names(12) = {'rhoA'};
M_.param_names_tex(12) = {'rhoA'};
M_.param_names_long(12) = {'rhoA'};
M_.param_names(13) = {'sigmau'};
M_.param_names_tex(13) = {'sigmau'};
M_.param_names_long(13) = {'sigmau'};
M_.param_names(14) = {'sigmaA'};
M_.param_names_tex(14) = {'sigmaA'};
M_.param_names_long(14) = {'sigmaA'};
M_.param_names(15) = {'sigmaR'};
M_.param_names_tex(15) = {'sigmaR'};
M_.param_names_long(15) = {'sigmaR'};
M_.param_names(16) = {'rR'};
M_.param_names_tex(16) = {'rR'};
M_.param_names_long(16) = {'rR'};
M_.param_names(17) = {'rpi'};
M_.param_names_tex(17) = {'rpi'};
M_.param_names_long(17) = {'rpi'};
M_.param_names(18) = {'rY'};
M_.param_names_tex(18) = {'rY'};
M_.param_names_long(18) = {'rY'};
M_.param_names(19) = {'gammae'};
M_.param_names_tex(19) = {'gammae'};
M_.param_names_long(19) = {'gammae'};
M_.param_names(20) = {'kappa'};
M_.param_names_tex(20) = {'kappa'};
M_.param_names_long(20) = {'kappa'};
M_.param_names(21) = {'s1'};
M_.param_names_tex(21) = {'s1'};
M_.param_names_long(21) = {'s1'};
M_.param_names(22) = {'qhtoY'};
M_.param_names_tex(22) = {'qhtoY'};
M_.param_names_long(22) = {'qhtoY'};
M_.param_names(23) = {'btoY'};
M_.param_names_tex(23) = {'btoY'};
M_.param_names_long(23) = {'btoY'};
M_.param_names(24) = {'c1toY'};
M_.param_names_tex(24) = {'c1toY'};
M_.param_names_long(24) = {'c1toY'};
M_.param_names(25) = {'ctoY'};
M_.param_names_tex(25) = {'ctoY'};
M_.param_names_long(25) = {'ctoY'};
M_.param_names(26) = {'R'};
M_.param_names_tex(26) = {'R'};
M_.param_names_long(26) = {'R'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 13;
M_.param_nbr = 26;
M_.orig_endo_nbr = 13;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 13;
M_.eq_nbr = 13;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 1 8 21;
 0 9 0;
 0 10 22;
 0 11 23;
 0 12 0;
 2 13 0;
 3 14 24;
 0 15 25;
 4 16 0;
 0 17 26;
 5 18 0;
 6 19 0;
 7 20 0;]';
M_.nstatic = 2;
M_.nfwrd   = 4;
M_.npred   = 5;
M_.nboth   = 2;
M_.nsfwrd   = 6;
M_.nspred   = 7;
M_.ndynamic   = 11;
M_.dynamic_tmp_nbr = [1; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'Yhat' ;
  2 , 'name' , 'c1hat' ;
  3 , 'name' , '3' ;
  4 , 'name' , 'qhat' ;
  5 , 'name' , '5' ;
  6 , 'name' , 'bhat' ;
  7 , 'name' , '7' ;
  8 , 'name' , 'pihat' ;
  9 , 'name' , 'Rhat' ;
  10 , 'name' , 'Chat' ;
  11 , 'name' , 'rrhat' ;
  12 , 'name' , 'uhat' ;
  13 , 'name' , 'Ahat' ;
};
M_.mapping.Yhat.eqidx = [1 3 4 7 9 ];
M_.mapping.Chat.eqidx = [10 ];
M_.mapping.chat.eqidx = [1 3 4 10 ];
M_.mapping.c1hat.eqidx = [1 2 5 7 10 ];
M_.mapping.rrhat.eqidx = [2 4 6 11 ];
M_.mapping.Rhat.eqidx = [3 9 11 ];
M_.mapping.pihat.eqidx = [3 8 9 11 ];
M_.mapping.Xhat.eqidx = [3 4 7 8 ];
M_.mapping.hhat.eqidx = [3 4 6 7 ];
M_.mapping.qhat.eqidx = [4 5 6 ];
M_.mapping.bhat.eqidx = [3 6 ];
M_.mapping.uhat.eqidx = [8 12 ];
M_.mapping.Ahat.eqidx = [1 13 ];
M_.mapping.eRhat.eqidx = [9 ];
M_.mapping.euhat.eqidx = [12 ];
M_.mapping.eAhat.eqidx = [13 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 6 7 9 11 12 13 ];
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(13, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(26, 1);
M_.endo_trends = struct('deflator', cell(13, 1), 'log_deflator', cell(13, 1), 'growth_factor', cell(13, 1), 'log_growth_factor', cell(13, 1));
M_.NNZDerivatives = [57; 0; -1; ];
M_.static_tmp_nbr = [1; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.99;
beta = M_.params(1);
M_.params(2) = 0.98;
gamma = M_.params(2);
M_.params(3) = 0.1;
j = M_.params(3);
M_.params(4) = 1.01;
eta = M_.params(4);
M_.params(5) = 0.3;
my = M_.params(5);
M_.params(6) = 0.05;
ypsilon = M_.params(6);
M_.params(7) = 0.05;
delta = M_.params(7);
M_.params(8) = 1.1;
X = M_.params(8);
M_.params(9) = 0.6;
theta = M_.params(9);
M_.params(18) = 0;
rY = M_.params(18);
M_.params(10) = 0.89;
m = M_.params(10);
M_.params(16) = 0.9652;
rR = M_.params(16);
M_.params(17) = 0.5941;
rpi = M_.params(17);
M_.params(11) = 0.9739;
rhou = M_.params(11);
M_.params(12) = 0.7594;
rhoA = M_.params(12);
M_.params(13) = 0.0048;
sigmau = M_.params(13);
M_.params(14) = 0.1151;
sigmaA = M_.params(14);
M_.params(15) = 0.0016;
sigmaR = M_.params(15);
M_.params(19) = (1-M_.params(10))*M_.params(2)+M_.params(10)*M_.params(1);
gammae = M_.params(19);
M_.params(20) = (1-M_.params(9))*(1-M_.params(1)*M_.params(9))/M_.params(9);
kappa = M_.params(20);
M_.params(21) = (1-M_.params(5)-M_.params(6)+M_.params(8)-1)/M_.params(8);
s1 = M_.params(21);
M_.params(22) = M_.params(2)*M_.params(6)/(M_.params(8)*(1-M_.params(19)));
qhtoY = M_.params(22);
M_.params(23) = M_.params(10)*M_.params(1)*M_.params(22);
btoY = M_.params(23);
M_.params(24) = M_.params(21)+(1-M_.params(1))*M_.params(10)*M_.params(22);
c1toY = M_.params(24);
M_.params(25) = (M_.params(5)+M_.params(6)-M_.params(5)*M_.params(2)*M_.params(7)/(1-M_.params(2)*(1-M_.params(7)))-M_.params(22)*M_.params(8)*M_.params(10)*(1-M_.params(1)))/M_.params(8);
ctoY = M_.params(25);
M_.params(26) = 1/M_.params(1);
R = M_.params(26);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (M_.params(15))^2;
M_.Sigma_e(2, 2) = (M_.params(13))^2;
M_.Sigma_e(3, 3) = (M_.params(14))^2;
randn('seed',sum(clock));
options_.drop = 0;
options_.irf = 0;
options_.nograph = true;
options_.noprint = true;
options_.order = 1;
options_.periods = 44;
var_list_ = {'Yhat';'Chat';'qhat';'Rhat';'pihat'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
return


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'I1MSim_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'I1MSim_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'I1MSim_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'I1MSim_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'I1MSim_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'I1MSim_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'I1MSim_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
