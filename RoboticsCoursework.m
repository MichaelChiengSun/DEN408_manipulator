% clc
% clear all
% close all

%% Assumptions
mu1 = 0.1; mu2 = 0.1; mu = mu2;
m1 = 1; m2 = 1; m = m1; L1 = 1; L2 = 1; L = L1;
M1 = mu1*m1; M2 = mu2*m2;
L1cg = 1/2; L2cg = 1/2;
k1cg = sqrt(L1/12); k2cg = sqrt(L2/12);
tou1 = 1; tou2 = 1;
g = 0;
Wn1 = 1; Wn2 = 1;
%% General Equations of motion of two-link manipulator
I11 = m1*(L1cg^2+k1cg^2)+(M1*L1^2)+(m2+M2)*(L1^2);
I21 = (m2*L2cg+M2*L2)*L1;
I22 = m2*(L2cg^2+k2cg^2)+M2*(L2^2);

%% Plot
% T1 when mu1=0
figure(1)
grid on
hold on
plot(T1_00)
plot(T1_01)
plot(T1_02)
plot(T1_05)
plot(T1_010)
plot(T1_020)
plot(T1_0100)
title("T1 for \mu_1=0")
xlabel("Time (s)")
ylabel("T1")
legend("\mu_2=0","\mu_2=0.1","\mu_2=0.2","\mu_2=0.5","\mu_2=1.0","\mu_2=2.0","\mu_2=10")
hold off

% T2 when mu1=0
figure(2)
grid on
hold on
plot(T2_00)
plot(T2_01)
plot(T2_02)
plot(T2_05)
plot(T2_010)
plot(T2_020)
plot(T2_0100)
title("T2 for \mu_1=0")
xlabel("Time (s)")
ylabel("T2")
legend("\mu_2=0","\mu_2=0.1","\mu_2=0.2","\mu_2=0.5","\mu_2=1.0","\mu_2=2.0","\mu_2=10")
hold off

% T1 when mu1=0.1
figure(3)
grid on
hold on
plot(T1_10)
plot(T1_11)
plot(T1_12)
plot(T1_15)
plot(T1_110)
plot(T1_120)
plot(T1_1100)
title("T1 for \mu_1=0.1")
xlabel("Time (s)")
ylabel("T1")
legend("\mu_2=0","\mu_2=0.1","\mu_2=0.2","\mu_2=0.5","\mu_2=1.0","\mu_2=2.0","\mu_2=10")
hold off

% T2 when mu1=0.1
figure(4)
grid on
hold on
plot(T2_10)
plot(T2_11)
plot(T2_12)
plot(T2_15)
plot(T2_110)
plot(T2_120)
plot(T2_1100)
title("T2 for \mu_1=0.1")
xlabel("Time (s)")
ylabel("T2")
legend("\mu_2=0","\mu_2=0.1","\mu_2=0.2","\mu_2=0.5","\mu_2=1.0","\mu_2=2.0","\mu_2=10")
hold off
