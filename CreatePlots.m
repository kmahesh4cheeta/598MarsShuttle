% Create tables & plots for report

function CreatePlots()

% Get values from scripts
% A = matfile('Periapsis_3176.mat');
% B = matfile('Periapsis_3261.mat');
% C = matfile('Periapsis_3346.mat');
% D = matfile('Periapsis_3431.mat');
% E = matfile('Periapsis_3516.mat');

A = load('Periapsis_3176.mat','X_asc','t_asc','X_desc','t_desc');
B = load('Periapsis_3261.mat','X_asc','t_asc','X_desc','t_desc');
C = load('Periapsis_3346.mat','X_asc','t_asc','X_desc','t_desc');
D = load('Periapsis_3431.mat','X_asc','t_asc','X_desc','t_desc');
E = load('Periapsis_3516.mat','X_asc','t_asc','X_desc','t_desc');

% Descent state vectors
Vd_A = A.X_desc(:,1); gd_A = A.X_desc(:,2); md_A = A.X_desc(:,3); zd_A = A.X_desc(:,4);
Vd_B = B.X_desc(:,1); gd_B = B.X_desc(:,2); md_B = B.X_desc(:,3); zd_B = B.X_desc(:,4);
Vd_C = C.X_desc(:,1); gd_C = C.X_desc(:,2); md_C = C.X_desc(:,3); zd_C = C.X_desc(:,4);
Vd_D = D.X_desc(:,1); gd_D = D.X_desc(:,2); md_D = D.X_desc(:,3); zd_D = D.X_desc(:,4);
Vd_E = E.X_desc(:,1); gd_E = E.X_desc(:,2); md_E = E.X_desc(:,3); zd_E = E.X_desc(:,4);


zd_Av = linspace(0,130000,length(Vd_A));
zd_Bv = linspace(0,130000,length(Vd_B));
zd_Cv = linspace(0,130000,length(Vd_C));
zd_Dv = linspace(0,130000,length(Vd_D));
zd_Ev = linspace(0,130000,length(Vd_E));

zd_Ag = linspace(0,130000,length(gd_A));
zd_Bg = linspace(0,130000,length(gd_B));
zd_Cg = linspace(0,130000,length(gd_C));
zd_Dg = linspace(0,130000,length(gd_D));
zd_Eg = linspace(0,130000,length(gd_E));

zd_Am = linspace(0,130000,length(md_A));
zd_Bm = linspace(0,130000,length(md_B));
zd_Cm = linspace(0,130000,length(md_C));
zd_Dm = linspace(0,130000,length(md_D));
zd_Em = linspace(0,130000,length(md_E));

td_A = A.t_desc;
td_B = B.t_desc;
td_C = C.t_desc;
td_D = D.t_desc;
td_E = E.t_desc;




% Ascent state vectors
Va_A = A.X_asc(:,1); ga_A = A.X_asc(:,2); ma_A = A.X_asc(:,3); za_A = A.X_asc(:,4);
Va_B = B.X_asc(:,1); ga_B = B.X_asc(:,2); ma_B = B.X_asc(:,3); za_B = B.X_asc(:,4);
Va_C = C.X_asc(:,1); ga_C = C.X_asc(:,2); ma_C = C.X_asc(:,3); za_C = C.X_asc(:,4);
Va_D = D.X_asc(:,1); ga_D = D.X_asc(:,2); ma_D = D.X_asc(:,3); za_D = D.X_asc(:,4);
Va_E = E.X_asc(:,1); ga_E = E.X_asc(:,2); ma_E = E.X_asc(:,3); za_E = E.X_asc(:,4);





% V1 = A.V;         V2 = B.V;         V3 = C.V; 
% gamma1 = A.gamma; gamma2 = B.gamma; gamma3 = C.gamma; 
% m1 = A.m;         m2 = B.m;         m3 = C.m; 
% a1 = A.a;         a2 = B.a;         a3 = C.a; 
% t1 = A.t;         t2 = B.t;         t3 = C.t;
% z1 = A.z;         z2 = B.z;         z3 = C.z;
% 
% Vf1 = A.Vf;         Vf2 = B.Vf;         Vf3 = C.Vf; 
% gammaf1 = A.gammaf; gammaf2 = B.gammaf; gammaf3 = C.gammaf; 
% mf1 = A.mf;         mf2 = B.mf;         mf3 = C.mf; 
% a_max1 = A.a_max;   a_max2 = B.a_max;   a_max3 = C.a_max; 

% % Table
% Tab = [Vf1, gammaf1, mf1, a_max1; ...
%        Vf2, gammaf2, mf2, a_max2; ...
%        Vf3, gammaf3, mf3, a_max3];
%    
% % Save table to csv
% writematrix(Tab,'Table.csv'); 


%% Plots

fig1 = figure(1);   % Descent plots
sgtitle('Vehicle Descent');

subplot(2,2,1)  % altitude vs. time
plot(zd_A,td_A); hold on;
plot(zd_B,td_B); hold on;
plot(zd_C,td_C); hold on;
plot(zd_D,td_D); hold on;
plot(zd_E,td_E); hold off;
ylabel('Altitude (m)');
xlabel('Time (s)');

subplot(2,2,2)  % velocity vs. altitude
plot(Vd_A,zd_Av); hold on;
plot(Vd_B,zd_Bv); hold on;
plot(Vd_C,zd_Cv); hold on;
plot(Vd_D,zd_Dv); hold on;
plot(Vd_E,zd_Ev); hold off;
ylabel('Altitude (m)');
xlabel('Velocity (m/s)');

subplot(2,2,3)  % gamma vs. altitude
plot(gd_A,zd_Ag); hold on;
plot(gd_B,zd_Bg); hold on;
plot(gd_C,zd_Cg); hold on;
plot(gd_D,zd_Dg); hold on;
plot(gd_E,zd_Eg); hold off;
ylabel('Altitude (m)');
xlabel('\gamma (deg)');

subplot(2,2,4)  % mass Vs. altitude
plot(md_A,zd_Am); hold on;
plot(md_B,zd_Bm); hold on;
plot(md_C,zd_Cm); hold on;
plot(md_D,zd_Dm); hold on;
plot(md_E,zd_Em); hold off;
ylabel('Altitude (m)');
xlabel('Mass (kg)');

% lgd = legend('3176','3261','3346','3431','3516');
% lgd.Orientation = 'horizontal';
% lgd.Location = 'bestoutside';
% title(lgd,'Initial Trasfer Periapsis');

% subplot(2,2,4)
% plot(a1,z1); hold on;
% plot(a2,z2); hold on;
% plot(a3,z3); hold off;
% ylabel('Altitude (m)');
% xlabel('Acceleration (m/s^2)');
% legend({'Thrust, No Drag','Thrust, Drag','Parachute, Drag'},'Location','southwest');

% % All vs. time
% fig2 = figure(2);
% sgtitle('Change over Time');
% subplot(2,2,1)
% plot(t1,V1); hold on;
% plot(t2,V2); hold on;
% plot(t3,V3); hold off;
% xlabel('Time');
% ylabel('Velocity');
% xlim([0 124]);
% 
% subplot(2,2,2)
% plot(t1,gamma1); hold on;
% plot(t2,gamma2); hold on;
% plot(t3,gamma3); hold off;
% xlabel('Time');
% ylabel('\gamma');
% xlim([0 124]);
% 
% subplot(2,2,3)
% plot(t1,m1,'LineWidth',1.5); hold on;
% plot(t2,m2); hold on;
% plot(t3,m3); hold off;
% xlabel('Time');
% ylabel('Mass');
% xlim([0 124]);
% 
% subplot(2,2,4)
% plot(t1,a1); hold on;
% plot(t2,a2); hold on;
% plot(t3,a3); hold off;
% xlabel('Time');
% ylabel('Acceleration');
% xlim([0 124]);
% legend({'Thrust, No Drag','Thrust, Drag','Parachute, Drag'},'Location','southeast');
% 
% % Altitude vs. time
% fig3 = figure(3);
% sgtitle('Altitude vs. Time');
% plot(t1,z1); hold on;
% plot(t2,z2); hold on;
% plot(t3,z3); hold off;
% ylabel('Altitude (m)');
% ylim([0 10000]);
% xlabel('Time (s)');
% xlim([0 124]);
% legend('Thrust, No Drag','Thrust, Drag','Parachute, Drag');
% 
% % Print figures
% print(fig1,'AltitudeVall','-dpng','-r100');
% print(fig2,'TimeVall','-dpng','-r100');
% print(fig3,'AltitudeVtime','-dpng','-r100');

end

