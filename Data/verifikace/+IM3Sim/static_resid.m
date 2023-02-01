function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = IM3Sim.static_resid_tt(T, y, x, params);
end
residual = zeros(20, 1);
lhs = y(1);
rhs = params(44)*y(2)+params(35)*y(3)+params(41)*y(4)+params(42)*y(5)+params(45)*y(6);
residual(1) = lhs - rhs;
lhs = y(16);
rhs = params(44)*y(2)+params(35)*y(3)+params(41)*y(4)+params(42)*y(5);
residual(2) = lhs - rhs;
lhs = y(3);
rhs = y(3)-y(17);
residual(3) = lhs - rhs;
lhs = y(6);
rhs = y(7)+params(3)*(y(6)-y(7))+(1-params(3)*(1-params(9)))*(y(1)-y(8)-y(7))/params(8);
residual(4) = lhs - rhs;
lhs = y(9);
rhs = y(9)*params(27)+(1-params(27))*(y(1)-y(8)-y(12))-y(17)*params(15)*params(1);
residual(5) = lhs - rhs;
lhs = y(9);
rhs = y(9)*params(28)+(1-params(28))*(y(18)-y(13))-y(17)*params(1)*params(16)+(1-params(1)*params(16))*(y(4)-y(4)*params(29));
residual(6) = lhs - rhs;
lhs = y(9);
rhs = y(3)+y(9)*params(1)+y(18)*(1-params(1))+y(12)*params(46)+y(13)*params(47)-y(3)*params(1);
residual(7) = lhs - rhs;
lhs = y(1)*params(43)*(1-params(7)-params(6));
rhs = params(42)*y(5);
residual(8) = lhs - rhs;
lhs = y(10);
rhs = y(9)+y(12)-y(17);
residual(9) = lhs - rhs;
lhs = y(11);
rhs = y(9)+y(13)-y(17);
residual(10) = lhs - rhs;
lhs = y(1);
rhs = params(5)*(y(19)+y(12)*params(7)+y(7)*params(6))/(params(5)-(1-params(7)-params(6)))-(1-params(7)-params(6))*(y(8)+y(3)*params(14)+y(4)*(1-params(14)-params(43))+y(5)*params(43))/(params(5)-(1-params(7)-params(6)));
residual(11) = lhs - rhs;
lhs = y(14);
rhs = params(1)*y(14)-y(8)*params(30)+y(20);
residual(12) = lhs - rhs;
lhs = y(7);
rhs = y(6)*params(9)+y(7)*(1-params(9));
residual(13) = lhs - rhs;
lhs = y(10)*params(34);
rhs = params(44)*y(2)+params(45)*y(6)+params(34)*params(48)*(y(10)+y(15)-y(14))-(y(1)-y(8))*(1-params(31)-params(32));
residual(14) = lhs - rhs;
lhs = y(11)*params(40);
rhs = params(41)*y(4)+params(48)*params(40)*(y(11)+y(15)-y(14))-(y(1)-y(8))*params(32);
residual(15) = lhs - rhs;
lhs = y(15);
rhs = y(14)*(1-params(24))*(1+params(25))+y(1)*(1-params(24))*params(26)+y(15)*params(24)+x(4);
residual(16) = lhs - rhs;
lhs = y(17);
rhs = y(15)-y(14);
residual(17) = lhs - rhs;
lhs = y(18);
rhs = y(18)*params(18)+x(1);
residual(18) = lhs - rhs;
lhs = y(20);
rhs = y(20)*params(17)+x(2);
residual(19) = lhs - rhs;
lhs = y(19);
rhs = y(19)*params(19)+x(3);
residual(20) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
