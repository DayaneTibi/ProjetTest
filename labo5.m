% Version comment hh
T= 2;
tm = 1.5; % Temps mort
K = 2*pi/9; % Gain du régulateur
BO = tf(K,[T 0]);  % Implmentation de la boucle ouverte (Transf de fourier)
BO.outputd = tm;
%margin(BO)
nyquist(BO);
disp("modif");
