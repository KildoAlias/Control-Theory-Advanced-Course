% Design and export the weights
clear all
close all
clc

s = tf('s');
G = 1e4*(s+2)/((s+3)*(s+100)^2);

%[m,p] = bode(G,100*pi)
%k=1/(m*0.0007) 
Hinf(G)
hold off

G_0 = 1e4*(s+2)*(s-1)/((s+2)*(s+3)*(s+100)^2);
G_0 = minreal(G_0);

%%
%
s = tf('s');
G_0 = 1e4*(s+2)*(s-1)/((s+2)*(s+3)*(s+100)^2);
G_0 = minreal(G_0);
T = F*G_0/(1+F*G_0);
Delta_G = -3/(s+2);

figure()
bode(T)
hold on
bode(1/Delta_G)
legend('T','1/Delta_G')
hold off 

figure()
bode(T*Delta_G)
legend('T(s)\cdotDelta_G(s)')


%%
% When Ws is good run this:

Fsim = F;
Gsim = G_0;

macro

%%
clc
clear all
% Now including Delta_G:
s = tf('s');
G = 1e4*(s+2)*(s-1)/((s+2)*(s+3)*(s+100)^2);
G = minreal(G);


Delta_G = -3/(s+2);


Hinf(G)


%%
% When Ws is good run this:

Fsim = F;
Gsim = G;

macro




