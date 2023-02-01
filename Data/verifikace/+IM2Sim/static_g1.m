function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = IM2Sim.static_g1_tt(T, y, x, params);
end
g1 = zeros(20, 20);
g1(1,1)=1;
g1(1,2)=(-params(43));
g1(1,3)=(-params(36));
g1(1,4)=(-params(42));
g1(1,5)=(-params(44));
g1(2,15)=1;
g1(3,1)=(-((1-params(3)*(1-params(9)))/params(8)));
g1(3,5)=1-params(3);
g1(3,6)=(-(1-params(3)+(-(1-params(3)*(1-params(9))))/params(8)));
g1(3,7)=(-((-(1-params(3)*(1-params(9))))/params(8)));
g1(4,1)=(-(1-params(28)));
g1(4,7)=1-params(28);
g1(4,8)=1-params(28);
g1(4,11)=1-params(28);
g1(4,15)=params(15)*params(1);
g1(5,4)=(-((1-params(1)*params(16))*(1-params(30))));
g1(5,8)=1-params(29);
g1(5,12)=1-params(29);
g1(5,15)=params(1)*params(16);
g1(5,18)=(-(1-params(29)));
g1(6,3)=(-(1-params(1)));
g1(6,8)=1-params(1);
g1(6,11)=(-params(45));
g1(6,12)=(-params(46));
g1(6,18)=(-(1-params(1)));
g1(7,8)=(-1);
g1(7,9)=1;
g1(7,11)=(-1);
g1(7,15)=1;
g1(8,8)=(-1);
g1(8,10)=1;
g1(8,12)=(-1);
g1(8,15)=1;
g1(9,1)=1;
g1(9,3)=(1-params(7)-params(6))*params(14)/(params(5)-(1-params(7)-params(6)));
g1(9,4)=(1-params(7)-params(6))*(1-params(14))/(params(5)-(1-params(7)-params(6)));
g1(9,6)=(-(params(5)*params(6)/(params(5)-(1-params(7)-params(6)))));
g1(9,7)=(1-params(7)-params(6))/(params(5)-(1-params(7)-params(6)));
g1(9,11)=(-(params(5)*params(7)/(params(5)-(1-params(7)-params(6)))));
g1(9,19)=(-(params(5)/(params(5)-(1-params(7)-params(6)))));
g1(10,7)=params(31);
g1(10,13)=1-params(1);
g1(10,20)=(-1);
g1(11,5)=(-params(9));
g1(11,6)=1-(1-params(9));
g1(12,1)=1-params(32)-params(33);
g1(12,2)=(-params(43));
g1(12,5)=(-params(44));
g1(12,7)=(-(1-params(32)-params(33)));
g1(12,9)=params(35)-params(35)*params(47);
g1(12,13)=params(35)*params(47);
g1(12,14)=(-(params(35)*params(47)));
g1(13,1)=params(33);
g1(13,4)=(-params(42));
g1(13,7)=(-params(33));
g1(13,10)=params(41)-params(47)*params(41);
g1(13,13)=params(47)*params(41);
g1(13,14)=(-(params(47)*params(41)));
g1(14,1)=(-((1-params(24))*params(26)));
g1(14,13)=(-((1-params(24))*(1+params(25))));
g1(14,14)=1-params(24);
g1(15,2)=(-params(43));
g1(15,3)=(-params(36));
g1(15,4)=(-params(42));
g1(15,16)=1;
g1(16,1)=(-1);
g1(16,17)=1;
g1(17,13)=1;
g1(17,14)=(-1);
g1(17,15)=1;
g1(18,18)=1-params(18);
g1(19,20)=1-params(17);
g1(20,19)=1-params(19);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
