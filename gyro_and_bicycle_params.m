clc;
clear;
close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% These are parameters for simulink simulation, so before running
% simulations run this file.
% In this file parameters indexes means First index object, second one coordinates.
% For instance, Ifx: I (moment of inertia), f (Flywheel), x (X-plane in X-Y-Z coordinate system)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Ifz = 0.09; % Moment of inertia flywheel in Z-plane
Ibz = 1.29; % Moment of inertia bicycle in Z-plane
Ify = 0.06; % Moment of inertia flywheel in Y-plane
Ifx = 0.06; % Moment of inertia flywheel in X-plane
Igy = 0.1; % Moment of inertia Gimbal in Y-plane
Igz = 0.1; % Moment of inertia Gimbal in Z-plane
Igx = 0.3; % Moment of inertia Gimbal in X-plane
mb = 21.5; % Mass of bicycle
mf = 8; % Mass of flywheel
mg = 1.8; % Mass of gimbal
hb = 0.54; % Height of bicycle centre of mass
hf = 0.65; % Height of flywheel centre of mass
hg = 0.60; % Height of gimbal centre of mass
g = 9.81; % Earth gravitational constant

Ip = Ifz; % Ip is constant for gyroscope coupling forces
wp = 2000 * 2*pi/60; % Rotational speed of flywheel rpm to rad/s

% k1 and k2 are shortening

k1 = Ibz + mb*hb^2 + mf*hf^2 + (Ifz + Ifx + 2*mf*hf^2) + mg*hg^2 +(Igz + Igx + 2*mg*hg^2);
k2 = mb*hb + mf*hf + mg*hg;

% num = [Ip 0];
% den = [k1 0 -k2*g];