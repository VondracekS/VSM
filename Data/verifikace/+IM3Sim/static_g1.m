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
    T = IM3Sim.static_g1_tt(T, y, x, params);
end
g1 = zeros(20, 20);
g1(1,1)=1;
g1(1,2)=(-params(44));
g1(1,3)=(-params(35));
g1(1,4)=(-params(41));
g1(1,5)=(-params(42));
g1(1,6)=(-params(45));
g1(2,2)=(-params(44));
g1(2,3)=(-params(35));
g1(2,4)=(-params(41));
g1(2,5)=(-params(42));
g1(2,16)=1;
g1(3,17)=1;
g1(4,1)=(-((1-params(3)*(1-params(9)))/params(8)));
g1(4,6)=1-params(3);
g1(4,7)=(-(1-params(3)+(-(1-params(3)*(1-params(9))))/params(8)));
g1(4,8)=(-((-(1-params(3)*(1-params(9))))/params(8)));
g1(5,1)=(-(1-params(27)));
g1(5,8)=1-params(27);
g1(5,9)=1-params(27);
g1(5,12)=1-params(27);
g1(5,17)=params(15)*params(1);
g1(6,4)=(-((1-params(1)*params(16))*(1-params(29))));
g1(6,9)=1-params(28);
g1(6,13)=1-params(28);
g1(6,17)=params(1)*params(16);
g1(6,18)=(-(1-params(28)));
g1(7,3)=(-(1-params(1)));
g1(7,9)=1-params(1);
g1(7,12)=(-params(46));
g1(7,13)=(-params(47));
g1(7,18)=(-(1-params(1)));
g1(8,1)=params(43)*(1-params(7)-params(6));
g1(8,5)=(-params(42));
g1(9,9)=(-1);
g1(9,10)=1;
g1(9,12)=(-1);
g1(9,17)=1;
g1(10,9)=(-1);
g1(10,11)=1;
g1(10,13)=(-1);
g1(10,17)=1;
g1(11,1)=1;
g1(11,3)=(1-params(7)-params(6))*params(14)/(params(5)-(1-params(7)-params(6)));
g1(11,4)=(1-params(7)-params(6))*(1-params(14)-params(43))/(params(5)-(1-params(7)-params(6)));
g1(11,5)=params(43)*(1-params(7)-params(6))/(params(5)-(1-params(7)-params(6)));
g1(11,7)=(-(params(6)*params(5)/(params(5)-(1-params(7)-params(6)))));
g1(11,8)=(1-params(7)-params(6))/(params(5)-(1-params(7)-params(6)));
g1(11,12)=(-(params(7)*params(5)/(params(5)-(1-params(7)-params(6)))));
g1(11,19)=(-(params(5)/(params(5)-(1-params(7)-params(6)))));
g1(12,8)=params(30);
g1(12,14)=1-params(1);
g1(12,20)=(-1);
g1(13,6)=(-params(9));
g1(13,7)=1-(1-params(9));
g1(14,1)=1-params(31)-params(32);
g1(14,2)=(-params(44));
g1(14,6)=(-params(45));
g1(14,8)=(-(1-params(31)-params(32)));
g1(14,10)=params(34)-params(34)*params(48);
g1(14,14)=params(34)*params(48);
g1(14,15)=(-(params(34)*params(48)));
g1(15,1)=params(32);
g1(15,4)=(-params(41));
g1(15,8)=(-params(32));
g1(15,11)=params(40)-params(48)*params(40);
g1(15,14)=params(48)*params(40);
g1(15,15)=(-(params(48)*params(40)));
g1(16,1)=(-((1-params(24))*params(26)));
g1(16,14)=(-((1-params(24))*(1+params(25))));
g1(16,15)=1-params(24);
g1(17,14)=1;
g1(17,15)=(-1);
g1(17,17)=1;
g1(18,18)=1-params(18);
g1(19,20)=1-params(17);
g1(20,19)=1-params(19);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
