function [fitresult, gof] = ExpoFit(pixelsRate, MAX_Resoultion_Watt_On,figtitle)
%CREATEFIT(PIXELSRATE,MAX_RESOULTION_WATT_ON)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : pixelsRate
%      Y Output: MAX_Resoultion_Watt_On
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 23-Apr-2018 02:13:30


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( pixelsRate, MAX_Resoultion_Watt_On );

% Set up fittype and options.
ft = fittype( 'exp1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Normalize = 'on';
opts.Robust = 'LAR';
opts.StartPoint = [0.479403251404476 0.548195851759456];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

%prediction = predint(fitresult,xData,0.95,'functional','on');
% Plot fit with data.
fig=figure( 'Name', strcat(figtitle,' =',formula(ft)) );
h = plot( fitresult, xData, yData,'o' )
%,hold on, plot(xData,prediction,'m--');
%plot(fitresult,x,y), hold on, plot(x,p22,'m--'), xlim([0 5]), ylim([-1 5])

legend( h, 'MAX Resoultion Watt On  vs.  W x H',strcat( formula(ft),' ',coeffvalues(fitresult) ), 'Location', 'SouthEast' );
% Label axes
xlabel Resoultion
ylabel 'MAX Resoultion Watt On'
title( strcat(figtitle,' =',formula(ft)))
grid on
disp(coeffvalues(fitresult));
saveas(fig,strcat(pwd ,'/Curvefitting_4-24-2018_test1/',figtitle,'.jpg'));