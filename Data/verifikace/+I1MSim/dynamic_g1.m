function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = I1MSim.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(13, 29);
g1(1,8)=1;
g1(1,10)=(-params(25));
g1(1,11)=(-params(24));
g1(1,20)=(-1);
g1(2,11)=1;
g1(2,23)=(-1);
g1(2,12)=1;
g1(3,8)=1-params(21);
g1(3,10)=(-params(25));
g1(3,2)=(-(params(23)*params(26)));
g1(3,14)=params(23)*params(26);
g1(3,15)=(-(1-params(21)));
g1(3,4)=params(22);
g1(3,16)=(-params(22));
g1(3,5)=(-(params(23)*params(26)));
g1(3,18)=params(23);
g1(4,21)=(-(1-params(19)));
g1(4,10)=(-(1-params(10)*params(1)));
g1(4,22)=1-params(10)*params(1);
g1(4,12)=params(10)*params(1);
g1(4,25)=1-params(19);
g1(4,16)=1-params(19);
g1(4,17)=1;
g1(4,26)=(-params(19));
g1(5,11)=(-1);
g1(5,23)=params(1);
g1(5,17)=1;
g1(5,26)=(-params(1));
g1(6,12)=1;
g1(6,16)=(-1);
g1(6,26)=(-1);
g1(6,18)=1;
g1(7,8)=1;
g1(7,11)=T(1);
g1(7,15)=T(1);
g1(7,4)=(-(params(4)*params(5)/(params(5)+params(4)-1)));
g1(8,14)=1;
g1(8,24)=(-params(1));
g1(8,15)=params(20);
g1(8,19)=(-1);
g1(9,1)=(-((1-params(16))*params(18)));
g1(9,2)=(-params(16));
g1(9,13)=1;
g1(9,3)=(-((1-params(16))*(1+params(17))));
g1(9,27)=(-1);
g1(10,9)=1;
g1(10,10)=(-params(25));
g1(10,11)=(-params(24));
g1(11,12)=1;
g1(11,13)=(-1);
g1(11,24)=1;
g1(12,6)=(-params(11));
g1(12,19)=1;
g1(12,28)=(-1);
g1(13,7)=(-params(12));
g1(13,20)=1;
g1(13,29)=(-1);

end
