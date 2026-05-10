clc
clear

%% =========================================================
%  PROJECT STARTUP - Run this before opening any .slx file
%% =========================================================

%% 1. PATH SETUP
rootFolder = fileparts(mfilename('fullpath'));

addpath(genpath(fullfile(rootFolder, 'simulink_models')));
addpath(genpath(fullfile(rootFolder, 'matlab_scripts')));
addpath(genpath(fullfile(rootFolder, 'helper_functions')));
addpath(genpath(fullfile(rootFolder, 'optimization')));
addpath(genpath(fullfile(rootFolder, 'perception')));
addpath(genpath(fullfile(rootFolder, 'maintenance')));
addpath(genpath(fullfile(rootFolder, 'dashboard')));
addpath(genpath(fullfile(rootFolder, 'tests')));
addpath(genpath(fullfile(rootFolder, 'assets')));
addpath(genpath(fullfile(rootFolder, 'data')));
assignin('base', 'projectRoot', rootFolder);
addpath(genpath(pwd));

savepath
rehash toolboxcache
disp("✔ Paths initialized.")

%% 2. SIMULATION PARAMETERS
maxNumOfBoxes = 5;
boxDim        = [0.2 0.2 0.2];
boxPosition   = [-0.65 0.65 0.6];

assignin('base', 'maxNumOfBoxes', maxNumOfBoxes);
assignin('base', 'boxDim',        boxDim);
assignin('base', 'boxPosition',   boxPosition);
disp("✔ Simulation parameters set.")

%% 3. ROBOT SETUP (replaces setup_robot + exampleHelperSetUpCobot)
rbt = rigidBodyTree(MaxNumBodies=14, DataFormat="row");
rbt.BaseName = 'world';

% --- External base platform ---
extBase = rigidBody('externalBase', 'MaxNumCollisions', 1);
if coder.target('MATLAB')
    addVisual(extBase, "box", [0.25, 0.25, 0.5], trvec2tform([0, 0, -0.25]));
end
addCollision(extBase, collisionBox(0.25, 0.25, 0.5), trvec2tform([0, 0, -0.25]));

extBaseJnt = rigidBodyJoint('externalBaseJoint', 'fixed');
setFixedTransform(extBaseJnt, trvec2tform([0, 0, 0.5]));
extBase.Joint = extBaseJnt;

addBody(rbt, extBase, 'world');

% --- UR10e robot arm ---
urrobot = loadrobot("universalUR10e", DataFormat="row");
addSubtree(rbt, 'externalBase', urrobot);

% --- Robotiq ePick gripper ---
gripper = loadrobot("robotiqEPick4CupVacuumAssembly", DataFormat="row");
addSubtree(rbt, 'tool0', gripper);

assignin('base', 'rbt', rbt);
disp("✔ Robot (UR10e + Robotiq ePick) initialized.")

%% =========================================================
disp("==> Project ready. You can now open your .slx file.")
%% =========================================================