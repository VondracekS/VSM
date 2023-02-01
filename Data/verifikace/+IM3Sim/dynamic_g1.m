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
    T = IM3Sim.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(20, 45);
g1(1,12)=1;
g1(1,13)=(-params(44));
g1(1,14)=(-params(35));
g1(1,15)=(-params(41));
g1(1,16)=(-params(42));
g1(1,17)=(-params(45));
g1(2,13)=(-params(44));
g1(2,14)=(-params(35));
g1(2,15)=(-params(41));
g1(2,16)=(-params(42));
g1(2,27)=1;
g1(3,14)=1;
g1(3,34)=(-1);
g1(3,28)=1;
g1(4,32)=(-((1-params(3)*(1-params(9)))/params(8)));
g1(4,13)=(-(1/params(8)));
g1(4,33)=(-((-1)/params(8)));
g1(4,17)=1;
g1(4,36)=(-params(3));
g1(4,2)=(-1);
g1(4,18)=(-((-(1-params(3)*(1-params(9))))/params(8)-params(3)));
g1(4,37)=(-((-(1-params(3)*(1-params(9))))/params(8)));
g1(5,32)=(-(1-params(27)));
g1(5,13)=(-(1-params(15)*params(1)));
g1(5,33)=1-params(15)*params(1);
g1(5,37)=1-params(27);
g1(5,20)=1;
g1(5,38)=(-params(27));
g1(5,5)=(-params(10));
g1(5,23)=(-((-(1-params(27)))-params(10)*(1+params(3))));
g1(5,39)=params(10)*(-params(3));
g1(5,28)=params(15)*params(1);
g1(6,15)=(-(1-params(1)*params(16)));
g1(6,35)=(-((1-params(1)*params(16))*(-params(29))));
g1(6,20)=1;
g1(6,38)=(-params(28));
g1(6,6)=(-params(11));
g1(6,24)=(-((-(1-params(28)))-params(11)*(1+params(2))));
g1(6,40)=params(11)*(-params(2));
g1(6,28)=params(1)*params(16);
g1(6,29)=(-(1-params(28)));
g1(7,14)=(-1);
g1(7,34)=params(1);
g1(7,20)=1;
g1(7,38)=(-params(1));
g1(7,5)=(-(params(11)*(-params(38))));
g1(7,23)=(-(params(46)+params(11)*(params(38)+params(1)*params(38))));
g1(7,39)=(-(params(11)*(-(params(1)*params(38)))));
g1(7,6)=(-(params(11)*(-params(39))));
g1(7,24)=(-(params(47)+params(11)*(params(39)+params(1)*params(39))));
g1(7,40)=(-(params(11)*(-(params(1)*params(39)))));
g1(7,29)=(-(1-params(1)));
g1(8,12)=params(43)*(1-params(7)-params(6));
g1(8,16)=(-params(42));
g1(9,38)=(-1);
g1(9,21)=1;
g1(9,23)=(-1);
g1(9,28)=1;
g1(10,38)=(-1);
g1(10,22)=1;
g1(10,24)=(-1);
g1(10,28)=1;
g1(11,12)=1;
g1(11,14)=(1-params(7)-params(6))*params(14)/(params(5)-(1-params(7)-params(6)));
g1(11,15)=(1-params(7)-params(6))*(1-params(14)-params(43))/(params(5)-(1-params(7)-params(6)));
g1(11,16)=params(43)*(1-params(7)-params(6))/(params(5)-(1-params(7)-params(6)));
g1(11,2)=(-(params(6)*params(5)/(params(5)-(1-params(7)-params(6)))));
g1(11,19)=(1-params(7)-params(6))/(params(5)-(1-params(7)-params(6)));
g1(11,5)=(-(params(7)*params(5)/(params(5)-(1-params(7)-params(6)))));
g1(11,30)=(-(params(5)/(params(5)-(1-params(7)-params(6)))));
g1(12,19)=params(30);
g1(12,25)=1;
g1(12,41)=(-params(1));
g1(12,31)=(-1);
g1(13,17)=(-params(9));
g1(13,2)=(-(1-params(9)));
g1(13,18)=1;
g1(14,12)=1-params(31)-params(32);
g1(14,13)=(-params(44));
g1(14,17)=(-params(45));
g1(14,19)=(-(1-params(31)-params(32)));
g1(14,3)=(-(params(34)*params(48)));
g1(14,21)=params(34);
g1(14,5)=params(33);
g1(14,23)=(-params(33));
g1(14,25)=params(34)*params(48);
g1(14,8)=(-(params(34)*params(48)));
g1(15,12)=params(32);
g1(15,15)=(-params(41));
g1(15,19)=(-params(32));
g1(15,4)=(-(params(48)*params(40)));
g1(15,22)=params(40);
g1(15,6)=params(37);
g1(15,24)=(-params(37));
g1(15,25)=params(48)*params(40);
g1(15,8)=(-(params(48)*params(40)));
g1(16,1)=(-((1-params(24))*params(26)));
g1(16,7)=(-((1-params(24))*(1+params(25))));
g1(16,8)=(-params(24));
g1(16,26)=1;
g1(16,45)=(-1);
g1(17,41)=1;
g1(17,26)=(-1);
g1(17,28)=1;
g1(18,9)=(-params(18));
g1(18,29)=1;
g1(18,42)=(-1);
g1(19,11)=(-params(17));
g1(19,31)=1;
g1(19,43)=(-1);
g1(20,10)=(-params(19));
g1(20,30)=1;
g1(20,44)=(-1);

end
