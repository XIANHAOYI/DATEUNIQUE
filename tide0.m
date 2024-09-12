function [wave] = tide0(ti,harmonics,N)
% This function calculates the result of superimposing a specified 
% number of harmonic waves over a specified time range, based on the 
% period, amplitude, and phase of the harmonic waves you provide.
%   
% input:ti is the specified length of time in hours. 
%   harmonics is a harmonic wave structure containing the fields Time, 
%   Amp and Pha, which are the period, amplitude and phase of the harmonic 
%   wave, respectively. The units are hours, centimeters, and angles.
%   N is the number of selected harmonization waves, e.g., if N is 4, 
%   the first four waves in harmonics are selected.
%
% output:wave is a sequence of water levels over a specified length of 
%   time in centimeters under the joint action of harmonic waves.

a=reshape(harmonics.Amp(1:N),N,1);
T=reshape(harmonics.Time(1:N),N,1);
b=reshape(harmonics.Pha(1:N)/180*pi,N,1);
ti=reshape(ti,1,length(ti));
H=a.*cos(2*pi./T.*ti+b);
wave=sum(H,1);
figure
plot(ti,wave);
end