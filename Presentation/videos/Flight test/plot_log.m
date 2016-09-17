clc; clear all; close all;
set(0,'defaulttextinterpreter','latex')	%Fancy plots

%% Load log
load('-mat', '2016-09-03 12-56-54.log-5423.mat');

%% Plot altitude

figure; hold on;

	%fill([168783,168783,176689,176689],[-1.5,4.5,4.5,-1.5],'r','edgecolor','none','facealpha',0.3);
	%fill([176689,176689,177689,177689],[-1.5,4.5,4.5,-1.5],'b','edgecolor','none','facealpha',0.3);
	%fill([177689,177689,191801,191801],[-1.5,4.5,4.5,-1.5],'g','edgecolor','none','facealpha',0.3);
	%fill([191801,191801,193801,193801],[-1.5,4.5,4.5,-1.5],'b','edgecolor','none','facealpha',0.3);
	%fill([193801,193801,203055,203055],[-1.5,4.5,4.5,-1.5],'r','edgecolor','none','facealpha',0.3);

	%text((168783+176689)/2,3,{'Pilot in','control'},'HorizontalAlignment','center');
	%text((176689+177689)/2,2,{'Taking','control'},'HorizontalAlignment','center');
	%text((177689+191801)/2,3,{'Script in','control'},'HorizontalAlignment','center');
	%text((191801+193801)/2,2,{'Returning','control'},'HorizontalAlignment','center');
	%text((193801+203055)/2,3,{'Pilot in','control'},'HorizontalAlignment','center');
	
	%fill([168783,168783,177689,177689],[-2.5,-1.5,-1.5,-2.5],'m','edgecolor','none','facealpha',0.7);
	%fill([177689,177689,193801,193801],[-2.5,-1.5,-1.5,-2.5],'c','edgecolor','none','facealpha',0.7);
	%fill([193801,193801,198357,198357],[-2.5,-1.5,-1.5,-2.5],'y','edgecolor','none','facealpha',0.7);
	%fill([198357,198357,203055,203055],[-2.5,-1.5,-1.5,-2.5],'m','edgecolor','none','facealpha',0.7);
	
	%text((168783+177689)/2,-2,'Stabilize','HorizontalAlignment','center');
	%text((177689+193801)/2,-2,'Guided','HorizontalAlignment','center');
	%text((193801+198357)/2,-2,'Loiter','HorizontalAlignment','center');
	%text((198357+203055)/2,-2,'Stabilize','HorizontalAlignment','center');
	
	%plot(176689,-0.21,'Marker','o','MarkerFaceColor','black','MarkerEdgeColor','none')
	%text(176689-2000,-0.21-0.5,'$t_{safe} < 0$');
	
	plot(CTUN(229:571,2),CTUN(229:571,7),'k','LineWidth',4);
		
	axis([168783,203055,-2.5,4.5]);
	xlabel('t [ms]'); ylabel('h [m]');
	
	set(gca, 'Color', 'none'); % Sets axes background to transparent
	axis off;
	set(gca,'position',[0 0 1 1],'units','normalized'); % Plot covers whole window
	set(gcf,'units','points','position',[0,100,1280,200]); % Size of exported file
	
	addpath('altmany')
	export_fig plot.eps -transparent
	
	
