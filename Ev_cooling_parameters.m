
% Key parameters for Ev_cooling.slx
% Vehicle
car.mass             = 3500; % kg
car.tire.rad         = 33;   % cm
car.gear.rat         = 10;
car.drag.brk         = 750;  % N
car.drag.vth         = 0.1;  % m/s
car.drag.fcl         = 500;  % N
car.drag.cvs         = 30;   % N/(m/s)

% Road
road.slope           = 0.06; % percent
road.gforce          = -9.81*bev.car.mass*sin(atan(bev.road.slope)); % N

% Motor
motor.maxtrq         = 800;    % N*m
motor.maxpwr         = 500e3;  % kW
motor.tc             = 0.02;   % s
motor.eff            = 90;     % percent
motor.w_eff          = 10e3;   % rpm
motor.T_eff          = 400;    % N*m
motor.Piron          = 0;      % W
motor.Pbase          = 0;      % W
motor.Res            = 1e-3;   % Ohm
motor.J              = 0.03;   % kg m^2 
motor.lam            = 1e-5;   % N*m/(rad/s)
motor.speed0         = 0;      % rpm
motor.alpha          = 3.93e-3;% 1/K
motor.Tmeas          = 50;     % degC
motor.thermal_mass   = 8350;   % J/K
motor.initT          = 100;    % degC

motor.qcond.area     = 0.75;   % m^2
motor.qcond.thick    = 0.135;  % m winding thickness
motor.qcond.th_cond  = 392;    % W/(m*K)

% Casing
casing.qconv.area    = 0.75;   % m^2
casing.qconv.th_conv = 1/(1/5 + 1/(240/0.07));     
                                   % W/(m^2 * K) convection + case in series
casing.initT         = 100;    % degC
casing.mass          = 150*0.9;% kg
casing.sp_heat       = 900;    % J/kg/K

% Battery
battery.volt         = 800;    % volts

% Cooling
cooling.area         = 3*pi*0.01^2; % m^2
cooling.hd           = 2*0.01;      % m

tank.vol             = 0.005; % m^3
tank.csec            = 0.04;  % m^2
tank.volInit         = 0.004; % m^3

Tambient             = 45;    % degC

open_system('Ev_cooling')