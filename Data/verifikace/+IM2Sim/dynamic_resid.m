function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = IM2Sim.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(20, 1);
lhs = y(12);
rhs = params(43)*y(13)+params(36)*y(14)+params(42)*y(15)+params(44)*y(16);
residual(1) = lhs - rhs;
lhs = y(14);
rhs = y(34)-y(26);
residual(2) = lhs - rhs;
lhs = y(16);
rhs = y(2)+params(3)*(y(36)-y(17))+(1-params(3)*(1-params(9)))*(y(32)-y(37)-y(17))/params(8)+(y(13)-y(33))/params(8);
residual(3) = lhs - rhs;
lhs = y(19);
rhs = params(28)*y(38)+(1-params(28))*(y(32)-y(37)-y(22))-y(26)*params(15)*params(1)-(1-params(15)*params(1))*(y(33)-y(13))-params(10)*(y(22)-y(5)-params(3)*(y(39)-y(22)));
residual(4) = lhs - rhs;
lhs = y(19);
rhs = y(38)*params(29)+(1-params(29))*(y(29)-y(23))-y(26)*params(1)*params(16)+(1-params(1)*params(16))*(y(15)-params(30)*y(35))-params(11)*(y(23)-y(6)-params(2)*(y(40)-y(23)));
residual(5) = lhs - rhs;
lhs = y(19);
rhs = y(14)+y(38)*params(1)+y(29)*(1-params(1))+y(22)*params(45)+y(23)*params(46)-y(34)*params(1)+params(11)*((y(22)-y(5))*params(39)+(y(23)-y(6))*params(40)-(y(39)-y(22))*params(1)*params(39)-(y(40)-y(23))*params(1)*params(40));
residual(6) = lhs - rhs;
lhs = y(20);
rhs = y(38)+y(22)-y(26);
residual(7) = lhs - rhs;
lhs = y(21);
rhs = y(38)+y(23)-y(26);
residual(8) = lhs - rhs;
lhs = y(12);
rhs = params(5)*(y(30)+y(5)*params(7)+y(2)*params(6))/(params(5)-(1-params(7)-params(6)))-(1-params(7)-params(6))*(y(18)+y(14)*params(14)+y(15)*(1-params(14)))/(params(5)-(1-params(7)-params(6)));
residual(9) = lhs - rhs;
lhs = y(24);
rhs = params(1)*y(41)-y(18)*params(31)+y(31);
residual(10) = lhs - rhs;
lhs = y(17);
rhs = y(16)*params(9)+y(2)*(1-params(9));
residual(11) = lhs - rhs;
lhs = y(20)*params(35);
rhs = params(44)*y(16)+params(43)*y(13)+(y(22)-y(5))*params(34)+params(35)*params(47)*(y(8)+y(3)-y(24))-(1-params(32)-params(33))*(y(12)-y(18));
residual(12) = lhs - rhs;
lhs = y(21)*params(41);
rhs = params(42)*y(15)+(y(23)-y(6))*params(38)+params(47)*params(41)*(y(8)+y(4)-y(24))-params(33)*(y(12)-y(18));
residual(13) = lhs - rhs;
lhs = y(25);
rhs = (1-params(24))*(1+params(25))*y(7)+(1-params(24))*params(26)*y(1)+y(8)*params(24)+x(it_, 4);
residual(14) = lhs - rhs;
lhs = y(27);
rhs = params(43)*y(13)+params(36)*y(14)+params(42)*y(15);
residual(15) = lhs - rhs;
lhs = y(28);
rhs = y(12);
residual(16) = lhs - rhs;
lhs = y(26);
rhs = y(25)-y(41);
residual(17) = lhs - rhs;
lhs = y(29);
rhs = params(18)*y(9)+x(it_, 1);
residual(18) = lhs - rhs;
lhs = y(31);
rhs = params(17)*y(11)+x(it_, 2);
residual(19) = lhs - rhs;
lhs = y(30);
rhs = params(19)*y(10)+x(it_, 3);
residual(20) = lhs - rhs;

end
