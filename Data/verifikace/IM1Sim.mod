//% Estimation I1M model with one type of household

//% Declaration of endogenous variable

Var
//% Basic endogeneous variables
Yhat,
Chat,
chat,
c1hat,
rrhat,
Rhat,
pihat,
Xhat,
hhat,
qhat,
bhat,

//% Endogenous variables with exogenous dynamics
uhat,
Ahat;

//% Declaration of exogeneous variables (shocks)
Varexo
eRhat,
euhat,
eAhat;

parameters
//% Deep parameters
beta,
gamma,
j,
eta,
my,
ypsilon,
delta,
X,
theta,
m,
rhou,
rhoA,
sigmau,
sigmaA,
sigmaR,
rR,
rpi,
rY,
gammae,
kappa,
s1,
qhtoY,
btoY,
c1toY,
ctoY,
R;

//% Setting of numerical values for parameters

//% Calibrated params
beta = 0.99;
gamma = 0.98;
j = 0.1;
eta = 1.01;
my = 0.3;
ypsilon = 0.05;            
delta = 0.05;              
X = 1.1;                 
theta = 0.6;
rY = 0;  

//% Estimated params
m = 0.89;                 
rR = 0.9652;
rpi = 0.5941;
rhou = 0.9739;
rhoA = 0.7594;

sigmau = 0.0048;
sigmaA = 0.1151;
sigmaR = 0.0016;                    

//% Defined parameters
gammae = (1 - m)*gamma + m*beta;
kappa = (1 - theta)*(1 - beta*theta)/theta;
s1 = ((1 - my - ypsilon) + X - 1)/X;
qhtoY = gamma*ypsilon/(X*(1 - gammae));
btoY = beta*m*qhtoY; 

c1toY = s1 + (1 - beta)*(m*qhtoY); 

// qh1toY = j/(1 - beta)*c1toY; 
// htoh1 = qhtoY/qh1toY;

ctoY = (my + ypsilon - delta*gamma*my/(1 - gamma*(1 - delta)) 
     - (1 - beta)*m*X*qhtoY)/X;

// jota = (1 - beta)*htoh1;

R = 1/beta;

//% Model equations
model(linear);

Yhat = ctoY*chat + c1toY*c1hat + Ahat;   //(L1)

c1hat = c1hat(+1) - rrhat;        //(L2)

btoY*bhat = ctoY*chat + qhtoY*(hhat - hhat(-1)) + R*btoY*(Rhat(-1) 
          + bhat(-1) - pihat) - (1 - s1)*(Yhat - Xhat); //(L3)

qhat = gammae*qhat(+1) + (1 - gammae)*(Yhat(+1) - Xhat(+1) - hhat) 
     - m*beta*rrhat - (1 - m*beta)*(chat(+1) - chat); //(L4)

qhat = beta*qhat(+1) + c1hat - beta*c1hat(+1); % + jota*hhat;    
                                               % s šokem + (1-beta)*jhat; //(L5) 

bhat = qhat(+1) + hhat - rrhat; //(L6)

Yhat = (eta*my)/(eta - 1 + my)*hhat(-1) 
     - (1 - my)/(eta - 1 + my)*(Xhat + c1hat); //L(7)

pihat = beta*pihat(+1) - kappa*Xhat + uhat; //(L8)

Rhat = (1 - rR)*(1 + rpi)*pihat(-1) + rY*(1 - rR)*Yhat(-1) + rR*Rhat(-1) 
     + eRhat; //(L9)

Chat = ctoY*chat+c1toY*c1hat; % edded for estimation


//% Defined variable(s)
rrhat = Rhat - pihat(+1);

//% Equations for variables with exogenous AR(1)-dynamics
uhat = rhou*uhat(-1) + euhat;
Ahat = rhoA*Ahat(-1) + eAhat;

end; 
//% End of model block

shocks;
var eRhat;
stderr sigmaR;
var euhat;
stderr sigmau;
var eAhat;
stderr sigmaA;
end;  

//% Calculation of steady state 

//steady;
//stoch_simul(ar=10,irf=40,hp_filter = 1600) Yhat Chat Ihat qhat Rhat pihat;

randn('seed',sum(clock));
stoch_simul(order=1,irf=0,drop=50,periods=150, nograph, noprint) Yhat Chat qhat Rhat pihat;  // for simulation of intervals of moments

return











