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
    T = I1MSim.static_resid_tt(T, y, x, params);
end
residual = zeros(13, 1);
lhs = y(1);
rhs = params(25)*y(3)+params(24)*y(4)+y(13);
residual(1) = lhs - rhs;
lhs = y(4);
rhs = y(4)-y(5);
residual(2) = lhs - rhs;
lhs = params(23)*y(11);
rhs = params(25)*y(3)+params(23)*params(26)*(y(11)+y(6)-y(7))-(1-params(21))*(y(1)-y(8));
residual(3) = lhs - rhs;
lhs = y(10);
rhs = y(10)*params(19)+(1-params(19))*(y(1)-y(8)-y(9))-y(5)*params(10)*params(1);
residual(4) = lhs - rhs;
lhs = y(10);
rhs = y(4)+y(10)*params(1)-y(4)*params(1);
residual(5) = lhs - rhs;
lhs = y(11);
rhs = y(9)+y(10)-y(5);
residual(6) = lhs - rhs;
lhs = y(1);
rhs = y(9)*params(4)*params(5)/(params(5)+params(4)-1)-T(1)*(y(4)+y(8));
residual(7) = lhs - rhs;
lhs = y(7);
rhs = y(7)*params(1)-y(8)*params(20)+y(12);
residual(8) = lhs - rhs;
lhs = y(6);
rhs = y(7)*(1-params(16))*(1+params(17))+y(1)*(1-params(16))*params(18)+y(6)*params(16)+x(1);
residual(9) = lhs - rhs;
lhs = y(2);
rhs = params(25)*y(3)+params(24)*y(4);
residual(10) = lhs - rhs;
lhs = y(5);
rhs = y(6)-y(7);
residual(11) = lhs - rhs;
lhs = y(12);
rhs = y(12)*params(11)+x(2);
residual(12) = lhs - rhs;
lhs = y(13);
rhs = y(13)*params(12)+x(3);
residual(13) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
