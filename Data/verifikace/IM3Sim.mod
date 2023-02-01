//% Estimation I3M model with three types of households

//% Declaration of endogenous variable
Var 
//% basic endogeneous variables
Yhat, 
chat,
c1hat,
c2hat,
c3hat, %edded
Ihat,
Khat,
Xhat,
qhat,
bhat,
b2hat,
hhat,
h2hat,
pihat,
Rhat,
Chat,

//% Defined variable(s)
rrhat,

//% Endogenous variables with exogenous dynamics

jhat,
Ahat,
uhat;


//% Declaration of exogeneous variables (shocks)
Varexo
ejhat,
euhat,
eAhat,
eRhat;


parameters
//% Deep parameters
beta,
beta2,
gamma,
j,
eta,
my,
ypsilon,
psi,
delta,
fie,
fih,
X,
theta,
alfa,
m,
m2,
rhou,
rhoj,
rhoA,
sigmau,
sigmaj,
sigmaA,
sigmaR,
rR,
rpi,
rY,
%h1ss,                     % h1ss is steady state stock of houses owned by
                           % patient hoeseholds
gammae,
gammah,
omega,
kappa,
s1,
s2,
qhtoY,
btoY,
c1toY,
qh1toY,
qh2toY,
htoh1,
h2toh1,
b2toY,
c2toY,
c3toY, % edded
tau,   % edded
ctoY,
ItoY,
jota,
jota2,
R;


//% Setting of numerical values for parameters

//% Calibrated params
beta = 0.99;
beta2 = 0.95;
gamma = 0.98;
j = 0.1;
eta = 1.01;
my = 0.3;
ypsilon = 0.05;  
psi = 2;
delta = 0.05;
fie = 0;
fih = 0;
X = 1.1;
theta = 0.6;
rY = 0;

//% Estimated params
alfa = 0.5175;
tau = 0.0233;  
m = 0.7938;
m2 = 0.3333;
rhou = 0.8281;
rhoj = 0.9255;
rhoA = 0.7050;
sigmau = 0.0051;
sigmaj = 0.2896;
sigmaA = 0.0210;
sigmaR = 0.0020;
rR = 0.9131;
rpi = 0.6970;

//% Defined parameters
gammae = (1-m)*gamma + m*beta;
gammah = beta2 + m2*(beta - beta2);
omega = (beta2 - m2*beta2)/(1 - m2*beta);
kappa = (1 - theta)*(1 - beta*theta)/theta;
s1 = ((alfa - tau)*(1 - my - ypsilon) + X - 1)/X;
s2 = (1 - alfa - tau)*(1 - my - ypsilon)/X;
s3 = (tau*(1 - my - ypsilon) + X - 1)/X;
qhtoY = gamma*ypsilon/(X*(1 - gammae));
btoY = beta*m*qhtoY;


qh1toY = j*s1/(1 - beta) + j*m*qhtoY 
      + j*m2*s2/(1 - beta2 - m2*(beta - beta2 - j*(1 - beta)));

qh2toY = j*s2/(1 - beta2 - m2*(beta - beta2 - j*(1 - beta)));

c1toY = s1 + (1 - beta)*(m*qhtoY + m2*qh2toY);

htoh1 = qhtoY/qh1toY;
h2toh1 = qh2toY/qh1toY;

b2toY = j*beta*m2/(1 - beta2 - m2*(beta - beta2) + j*m2*(1 - beta))*s2;

c2toY = s2*(1 - beta2 - m2*(beta - beta2))/(1 - beta2 - m2*(beta - beta2) 
      + j*m2*(1 - beta))/2; % adjust 

c3toY = s3*((my + ypsilon - delta*gamma*my/(1 - gamma*(1 - delta)) 
      - (1 - beta)*m*X*qhtoY)/X); % adjust

ctoY = (my + ypsilon - delta*gamma*my/(1 - gamma*(1 - delta)) 
     - (1 - beta)*m*X*qhtoY)/X;

ItoY = 1 - ctoY - c1toY - c2toY;
jota = (1 - beta)*htoh1;
jota2 = (1 - beta)*h2toh1;
R = 1/beta;

//% Model equations
model;
Yhat = ctoY*chat + c1toY*c1hat + c2toY*c2hat + c3toY*c3hat + ItoY*Ihat;

Chat = ctoY*chat + c1toY*c1hat + c2toY*c2hat + c3toY*c3hat; % edded for estimation

c1hat = c1hat(+1) - rrhat;

Ihat = Khat(-1) + gamma*(Ihat(+1) - Khat) + (1 - gamma*(1 - delta))*(Yhat(+1) 
     - Xhat(+1) - Khat)/(psi) + (chat - chat(+1))/(psi);

qhat = gammae*qhat(+1) + (1 - gammae)*(Yhat(+1) - Xhat(+1) - hhat)
     - m*beta*rrhat - (1 - m*beta)*(chat(+1) - chat) - fie*(hhat - hhat(-1) 
     - gamma*(hhat(+1) - hhat));

qhat = gammah*qhat(+1) + (1 - gammah)*(jhat - h2hat) - m2*beta*rrhat 
     + (1 - m2*beta)*(c2hat - omega*c2hat(+1))
     - fih*(h2hat - h2hat(-1) - beta2*(h2hat(+1) - h2hat));

qhat = beta*qhat(+1) + (1-beta)*jhat + jota*hhat + jota2*h2hat + c1hat 
     - beta*c1hat(+1) + fih*(htoh1*(hhat - hhat(-1))
     + h2toh1*(h2hat - h2hat(-1)) - beta*htoh1*(hhat(+1) - hhat) 
     - beta*h2toh1*(h2hat(+1) - h2hat));


tau*(1-ypsilon - my)*Yhat = c3hat*c3toY;    % Reichel (2020): 5.17

bhat = qhat(+1) + hhat - rrhat;

b2hat = qhat(+1) + h2hat - rrhat;

Yhat = eta*(Ahat + ypsilon*hhat(-1) + my*Khat(-1))/(eta - (1 - ypsilon - my))
     - (1 - ypsilon - my)*(Xhat + (alfa)*c1hat + (1 - alfa - tau)*c2hat 
     + tau*c3hat)/(eta - (1 - ypsilon - my));

pihat = beta*pihat(+1) - kappa*Xhat + uhat;

Khat = delta*Ihat + (1 - delta)*Khat(-1);

btoY*bhat = ctoY*chat + qhtoY*(hhat - hhat(-1)) + ItoY*Ihat + R*btoY*(Rhat(-1)
          + bhat(-1) - pihat) - (1 - s1 - s2)*(Yhat - Xhat);

b2toY*b2hat = c2toY*c2hat + qh2toY*(h2hat - h2hat(-1)) + R*b2toY*(b2hat(-1) 
            + Rhat(-1) - pihat) - s2*(Yhat - Xhat);

Rhat = (1 - rR)*(1 + rpi)*pihat(-1) + rY*(1 - rR)*Yhat(-1) + rR*Rhat(-1) + eRhat;

//% Defined variable(s)
rrhat = Rhat - pihat(+1);

//% Equations for variables with exogenous AR(1)-dynamics
jhat = rhoj*jhat(-1) + ejhat;
uhat = rhou*uhat(-1) + euhat;
Ahat = rhoA*Ahat(-1) + eAhat;
end;                        
//% End of model block


shocks;
var eRhat;
stderr sigmaR;
var euhat;
stderr sigmau;
var ejhat;
stderr sigmaj;
var eAhat;
stderr sigmaA;
end;


stoch_simul(order=1, periods = 150, drop = 50, nograph, noprint) Yhat Chat Ihat qhat Rhat pihat;


