% exe2
% Koutsopoulos Nikos
% AEM 14689
% C2019

clear
tic   % Clock starts
%% N_a function
t = 0 : 1 : 100000;
%%% plot of N_a function, Plot settings are in figure()
    %% 1k particles
N1 = 1000;                                                                 
N_a = N1/2 *(1+exp(-2*t/N1));
figure();
plot(t,N_a);
title(['Particles: ',num2str(N1)]);
xlabel('Seconds');
ylabel('N_a = N/2(1+exp(-2t/N)');
%% 10k particles
N2 = 10000;                                                                
N_a = N2/2 *(1+exp(-2*t/N2));
figure();
plot(t,N_a);
title(['Particles: ',num2str(N2)]);
xlabel('Seconds');
ylabel('N_a = N/2(1+exp(-2t/N)');
%% 100k particles
N3 = 100000;                                                               
N_a = N3/2 *(1+exp(-2*t/N3));
figure();
plot(t,N_a);
title(['Particles: ',num2str(N3)]);
xlabel('Seconds');
ylabel('N_a = N/2(1+exp(-2t/N)');
%% Plot axes and title settings
X = ('Proccessor used: i3 - 4160 at 3,6 GHz. ');
disp(X);
toc                  % Clock stops                                                  
%  Second half
%% Input for Name and Surname: 
prompt = 'Please enter your Name: ';
ON = input(prompt,'s');
prompt ='Please enter your Surname: ';
EP = input(prompt,'s');
%% Turn characters to ascii
double(ON);
double(EP);
son = sum(ON);
sep = sum(EP);
%% Check for the bigger number
if son >= sep                                                              % N2/N1 check
    L = sep/son;
else
    L = son/sep;
end
%% N = N_1 + N_2 
N4 = son + sep;
Y = ['Number of particles: N = N1 + N2 = ',num2str(N4)];
disp(Y)
%% Plot for N_1 + N_2
sep = N4/2 * (1+exp(-2*t/N4));
figure(4)
plot(t,sep);
title(['Particles: ',num2str(N4)]);
xlabel('Seconds');
ylabel('N_a = N/2(1+exp(-2t/N)');