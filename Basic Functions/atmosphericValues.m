%% Setup of basic Constants
%The model will be based on English Units

% =========================================================
%% Temperature
% As seen from the Historical Data at the documentation file, the
% temperature selected for the analysis will be that at the 75th Percentile
% at the hottest hour

%% Hottest Hour
%average
%temp=71;%[Farenheit]
%75th Percentile
temp=77;%[Farenheit]
%90th Percentile
%temp=82;%[Farenheit]

%Average of whole Day time
%temp=67;%[Farenheit]





%% Wind
%Following the same aproach the Wind speed 10 meters above ground is
%=============Average of whole Day time================
%Wspeed=7.5;%[mph]
%=============highest of whole Day time================
%average
%Wspeed=10.3;%[mph]
%75th Percentile
Wspeed=12.5;%[mph]
%90th Percentile
%Wspeed=15.7;%[mph]


%Transforms wspeed units to ft/s
Wspeed=1.46667*Wspeed;%[ft/s]




%% Elevation of Van Nuys
h=721;%[ft]

%% Gravity
g_0=9.80655;%[m/s^2]
%% Air Pressure & Density
%Based on ISA Standard Atmosphere
%Standard Pressure at Sea Level
p_h=101325;%[Pa]

% pressure at height h
P=p_h*(1+-0.0065/288*(h-0))^(g_0*0.0289644/(8.31432*0.0065));%[Pa]

%Density [SI]

rho=P/(287.05*(273.15+((temp-32)*5/9)));%[kg/m^3]


%Density in slugs/ft^3
rho=rho*0.00194032;% slugs/ft^3
%pressure in PSf
P=P*0.0208854;%[psi]
%Delete local variables
clear p_h
