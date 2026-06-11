clc
clear
close all


radius = input('Radius in Centimeters ');
% radius = 7.3;
radius = radius/100;


antennaPositions = zeros(8,2);

for i = 1:8
    antennaPositions(i,1) = radius*cos(pi/4*(i-1));
    antennaPositions(i,2) = radius*sin(pi/4*(i-1));
end
antennaPositions = antennaPositions + radius; 

tumorAngle = 90 - input(append('Tumor Angle in Degrees (Antenna 1 = 0', char(176),') '));
tumorDepth = 7.3 - input('Tumor Depth in Centimeters ');
% tumorAngle = 50;
% tumorDepth = 2;
tumorAngle = tumorAngle/180*pi;
tumorDepth = tumorDepth/100;

tumorPosition = [tumorDepth*cos(tumorAngle) tumorDepth*sin(tumorAngle)];
tumorPosition = tumorPosition + radius;


figure
hold on
scatter(antennaPositions(:,1),antennaPositions(:,2),'filled','yellow')
scatter(tumorPosition(:,1),tumorPosition(:,2),'filled','red')
axis square


