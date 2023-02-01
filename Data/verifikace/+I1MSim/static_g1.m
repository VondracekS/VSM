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
    T = I1MSim.static_g1_tt(T, y, x, params);
end
g1 = zeros(13, 13);
g1(1,1)=1;
g1(1,3)=(-params(25));
g1(1,4)=(-params(24));
g1(1,13)=(-1);
g1(2,5)=1;
g1(3,1)=1-params(21);
g1(3,3)=(-params(25));
g1(3,6)=(-(params(23)*params(26)));
g1(3,7)=params(23)*params(26);
g1(3,8)=(-(1-params(21)));
g1(3,11)=params(23)-params(23)*params(26);
g1(4,1)=(-(1-params(19)));
g1(4,5)=params(10)*params(1);
g1(4,8)=1-params(19);
g1(4,9)=1-params(19);
g1(4,10)=1-params(19);
g1(5,4)=(-(1-params(1)));
g1(5,10)=1-params(1);
g1(6,5)=1;
g1(6,9)=(-1);
g1(6,10)=(-1);
g1(6,11)=1;
g1(7,1)=1;
g1(7,4)=T(1);
g1(7,8)=T(1);
g1(7,9)=(-(params(4)*params(5)/(params(5)+params(4)-1)));
g1(8,7)=1-params(1);
g1(8,8)=params(20);
g1(8,12)=(-1);
g1(9,1)=(-((1-params(16))*params(18)));
g1(9,6)=1-params(16);
g1(9,7)=(-((1-params(16))*(1+params(17))));
g1(10,2)=1;
g1(10,3)=(-params(25));
g1(10,4)=(-params(24));
g1(11,5)=1;
g1(11,6)=(-1);
g1(11,7)=1;
g1(12,12)=1-params(11);
g1(13,13)=1-params(12);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
