

import DASHAnalyzer;
import DASHAnalyzer2;
import DASHAnalyzer3;
import DASHAnalyzer4;
clear all
cs=0.4027;
ct=0.2505;
Pmax=0;
Smax=0.0;
Tmax=30;
T=[6 6 6 6 6 6 6 6 6 6 12 12 12 12 12 12 12 12 12 12 20 20 20 20 20 20 20 20 20 20 30 30 30 30 30 30 30 30 30 30 ];





 a=  DASHAnalyzer;
a= a.ReadKBQualities();
a=  a.ReadMBQualities();
  a.plot1();
 a=a.plot2();
%  a=a.plot3();
disp(a.Folder);


 b=  DASHAnalyzer2;
b= b.ReadKBQualities();
b=  b.ReadMBQualities();
  b.plot1();
b= b.plot2();
% b= b.plot3();

 c=  DASHAnalyzer3;
c= c.ReadKBQualities();
c=  c.ReadMBQualities();
   c.plot1();
c= c.plot2();
% c= c.plot3();

 d=  DASHAnalyzer4;
d= d.ReadKBQualities();
d=  d.ReadMBQualities();
   d.plot1();
d= d.plot2();
% d= d.plot3();
%  hold off
%figure(1);

       

%         subplot(2,3,1);
% 
%         plot(a.Pixles_in_Resoultion_Max_On,a.MAX_Resoultion_Watt_On,'-.r*',b.Pixles_in_Resoultion_Max_On,b.MAX_Resoultion_Watt_On,'--mo',c.Pixles_in_Resoultion_Max_On,c.MAX_Resoultion_Watt_On,':bs', d.Pixles_in_Resoultion_Max_On,d.MAX_Resoultion_Watt_On,'-gp');
%         title('MAX bitrate of each resoultion ');
%         set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
%         xlabel('Pixels (w x h x F)'); % x-axis label
%         ylabel('Watts '); % y-axis label
%         grid on
%         legend('6fps','12fps','20fps','30fps');
%         
%         
%         subplot(2,3,2);
% 
%         plot( a.MAX_Resoultion_BitRate_On,a.MAX_Resoultion_Watt_On,'-.r*', b.MAX_Resoultion_BitRate_On,b.MAX_Resoultion_Watt_On,'--mo',c.MAX_Resoultion_BitRate_On,c.MAX_Resoultion_Watt_On,':bs', d.MAX_Resoultion_BitRate_On, d.MAX_Resoultion_Watt_On,'-gp');
%         title('MAX bitrate of each resoultion ');
%         set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
%         xlabel('bitrate (kbps)'); % x-axis label
%         ylabel('Watts '); % y-axis label
%         grid on
%         legend('6fps','12fps','20fps','30fps');
%         
%         subplot(2,3,3);
% 
%         plot(a.Pixles_in_Resoultion_Max_On,a.Average_Resoultion_Watt_On,'-.r*', b.Pixles_in_Resoultion_Max_On,b.Average_Resoultion_Watt_On,'--mo',c.Pixles_in_Resoultion_Max_On,c.Average_Resoultion_Watt_On,':bs', d.Pixles_in_Resoultion_Max_On, d.Average_Resoultion_Watt_On,'-gp');
%         title('Median(middle) bitrate of each resoultion ');
%         set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
%         xlabel('Pixels (w x h x F)'); % x-axis label
%         ylabel('Watts '); % y-axis label
%         grid on
%         legend('6fps','12fps','20fps','30fps');
%         
%         subplot(2,3,4);
% 
%         plot( a.Pixles_in_Resoultion_Max_On, a.MIN_Resoultion_Watt_On,'-.r*' , b.Pixles_in_Resoultion_Max_On, b.MIN_Resoultion_Watt_On,'--mo' ,c.Pixles_in_Resoultion_Max_On, c.MIN_Resoultion_Watt_On,':bs', d.Pixles_in_Resoultion_Max_On, d.MIN_Resoultion_Watt_On,'-gp');
%         title('MIN bitrate of each resoultion ');
%         set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
%         xlabel(' Pixels (w x h x F) '); % x-axis label
%         ylabel('Watts '); % y-axis label
%         grid on
%         legend('6fps','12fps','200fps','30fps');
%         
%         subplot(2,3,5);
% 
%         plot( a.Pixles_in_Resoultion_Max_On,a.Mean_Resolution_Watts_On,'-.r*',b.Pixles_in_Resoultion_Max_On,b.Mean_Resolution_Watts_On,'--mo',c.Pixles_in_Resoultion_Max_On,c.Mean_Resolution_Watts_On,':bs', d.Pixles_in_Resoultion_Max_On, d.Mean_Resolution_Watts_On,'-gp');
%         title('Mean Watts of each resoultion ');
%         set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
%         xlabel(' Pixels (w x h x F) '); % x-axis label
%         ylabel('Watts '); % y-axis label
%         grid on  
%         legend('6fps','12fps','30fps');
%        
%         
%        
%         x=[];
%         x=[x;a.Pixles_in_Resoultion_Max_On];
%         x=[x;b.Pixles_in_Resoultion_Max_On];
%         x=[x;c.Pixles_in_Resoultion_Max_On];
%         x=[x;d.Pixles_in_Resoultion_Max_On];
%         %x=sort(x);
%         
%         y=[];
%         y=[y;a.MAX_Resoultion_Watt_On];
%         y=[y;b.MAX_Resoultion_Watt_On];
%         y=[y;c.MAX_Resoultion_Watt_On];
%         y=[y;d.MAX_Resoultion_Watt_On];
%         %y=sort(y);
%         M1=horzcat(x,y);
%         sortrows(M1,[1 2]);
%         x = M1(:,1);
%         y = M1(:,2);
%         
%         subplot(2,3,6);
%         ft = fittype( {'x', '10', '16'}, 'independent', 'x', 'dependent', 'y', 'coefficients', {'a', 'b', 'c'} );
% 
%         % Fit model to data.
%         [fitresult, gof] = fit( x, y, ft );
% 
%         % Plot fit with data.
%         %figure( 'Name', 'ax+10b+16c' );
%         h = plot( fitresult, x, y );
%         legend( h, 'y vs. x', 'ax+10b+16c', 'Location', 'NorthEast' );
%         % Label axes
%         xlabel x
%         ylabel y
%         grid on
%         
%         
%       
%         waitfor(msgbox('Press OK to move to the next figure.'));  
%      % *******XY SCATTER Plot************
%       %1- Max Resolution 
%         pixelsRate=[];
%         pixelsRate=[pixelsRate;a.Pixles_in_Resoultion_Max_On];
%         pixelsRate=[pixelsRate;b.Pixles_in_Resoultion_Max_On];
%         pixelsRate=[pixelsRate;c.Pixles_in_Resoultion_Max_On];
%          pixelsRate=[pixelsRate;d.Pixles_in_Resoultion_Max_On];
%         %pixelsRate=sort(pixelsRate);
%         MAX_Resoultion_Watt_On=[];
%         MAX_Resoultion_Watt_On=[MAX_Resoultion_Watt_On;a.MAX_Resoultion_Watt_On];
%         MAX_Resoultion_Watt_On=[MAX_Resoultion_Watt_On;b.MAX_Resoultion_Watt_On];
%         MAX_Resoultion_Watt_On=[MAX_Resoultion_Watt_On;c.MAX_Resoultion_Watt_On];
%         MAX_Resoultion_Watt_On=[MAX_Resoultion_Watt_On;d.MAX_Resoultion_Watt_On];
%         
%         %Z= horzcat(pixelsRate,MAX_Resoultion_Watt_On);
%         %sortrows(Z,[1 2]);%
%        % pixelsRate = Z(:,1);
%        % MAX_Resoultion_Watt_On= Z(:,2);
%         %plot(pixelsRate,Pixles_in_Resoultion_Max_On,'-.r*');
%         %figure('Name','XY Scatter plot');
%         
%         %subplot(2,3,1);
%         figure( 'Name', 'MAX bitrate of each resoultion' );
%         scatter(pixelsRate,MAX_Resoultion_Watt_On);
%         %title('MAX bitrate of each resoultion ');
%         set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
%         xlabel('Pixels (w x h x F)'); % x-axis label
%         ylabel('Watts '); % y-axis label
%         grid on
%         %legend('6fps','12fps','30fps');
%         waitfor(msgbox('Press OK to move to the next figure.'));  
%         
%       %2- Max Resolution Bit Rate
%         
%         MAX_Resoultion_BitRate_On=[];
%         MAX_Resoultion_BitRate_On=[MAX_Resoultion_BitRate_On;a.MAX_Resoultion_BitRate_On];
%         MAX_Resoultion_BitRate_On=[MAX_Resoultion_BitRate_On;b.MAX_Resoultion_BitRate_On];
%         MAX_Resoultion_BitRate_On=[MAX_Resoultion_BitRate_On;c.MAX_Resoultion_BitRate_On];
%         MAX_Resoultion_BitRate_On=[MAX_Resoultion_BitRate_On;d.MAX_Resoultion_BitRate_On];
%         
%         MAX_Resoultion_Watt_On=[];
%         MAX_Resoultion_Watt_On=[MAX_Resoultion_Watt_On;a.MAX_Resoultion_Watt_On];
%         MAX_Resoultion_Watt_On=[MAX_Resoultion_Watt_On;b.MAX_Resoultion_Watt_On];
%         MAX_Resoultion_Watt_On=[MAX_Resoultion_Watt_On;c.MAX_Resoultion_Watt_On];
%         MAX_Resoultion_Watt_On=[MAX_Resoultion_Watt_On;d.MAX_Resoultion_Watt_On];
%        % Z=[];
%        % Z= horzcat(MAX_Resoultion_BitRate_On, MAX_Resoultion_Watt_On);
%        % sortrows(Z,[1 2]);
%        % MAX_Resoultion_BitRate_On = Z(:,1);
%        % MAX_Resoultion_Watt_On= Z(:,2);
%         
%         %subplot(2,3,2);
%         figure(  );
%         scatter(MAX_Resoultion_BitRate_On,MAX_Resoultion_Watt_On);
%         %plot( a.MAX_Resoultion_BitRate_On,a.MAX_Resoultion_Watt_On,'-.r*', b.MAX_Resoultion_BitRate_On,b.MAX_Resoultion_Watt_On,'--mo',c.MAX_Resoultion_BitRate_On,c.MAX_Resoultion_Watt_On,':bs');
%         title('MAX bitrate of each resoultion ');
%         set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
%         xlabel('bitrate (kbps)'); % x-axis label
%         ylabel('Watts '); % y-axis label
%         grid on
%         %legend('6fps','12fps','30fps');
%         waitfor(msgbox('Press OK to move to the next figure.'));  
%         
%      %3- Average Resolution 
%         pixelsRate=[];
%         pixelsRate=[pixelsRate;a.Pixles_in_Resoultion_Max_On];
%         pixelsRate=[pixelsRate;b.Pixles_in_Resoultion_Max_On];
%         pixelsRate=[pixelsRate;c.Pixles_in_Resoultion_Max_On];
%         pixelsRate=[pixelsRate;d.Pixles_in_Resoultion_Max_On];
%         
%         Average_Resoultion_Watt_On=[];
%         Average_Resoultion_Watt_On=[Average_Resoultion_Watt_On;a.Average_Resoultion_Watt_On];
%         Average_Resoultion_Watt_On=[Average_Resoultion_Watt_On;b.Average_Resoultion_Watt_On];       
%         Average_Resoultion_Watt_On=[Average_Resoultion_Watt_On;c.Average_Resoultion_Watt_On];
%         Average_Resoultion_Watt_On=[Average_Resoultion_Watt_On;d.Average_Resoultion_Watt_On];
%         
%         %Z=[];
%        % Z= horzcat(pixelsRate, Average_Resoultion_Watt_On);
%        % sortrows(Z,[1 2]);
%        % pixelsRate = Z(:,1);
%        % Average_Resoultion_Watt_On= Z(:,2);
%         
%         %subplot(2,3,3);
%         figure(  );
%         scatter(pixelsRate,Average_Resoultion_Watt_On);
%         %plot(a.Pixles_in_Resoultion_Max_On,a.Average_Resoultion_Watt_On,'-.r*', b.Pixles_in_Resoultion_Max_On,b.Average_Resoultion_Watt_On,'--mo',c.Pixles_in_Resoultion_Max_On,c.Average_Resoultion_Watt_On,':bs');
%         title('Median(middle) bitrate of each resoultion ');
%         set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
%         xlabel('Pixels (w x h x F)'); % x-axis label
%         ylabel('Watts '); % y-axis label
%         grid on
%         %legend('6fps','12fps','30fps');
%         waitfor(msgbox('Press OK to move to the next figure.'));  
%         
%         
%       %4- Average Resolution 
%         pixelsRate=[];
%         pixelsRate=[pixelsRate;a.Pixles_in_Resoultion_Max_On];
%         pixelsRate=[pixelsRate;b.Pixles_in_Resoultion_Max_On];
%         pixelsRate=[pixelsRate;c.Pixles_in_Resoultion_Max_On];
%         pixelsRate=[pixelsRate;d.Pixles_in_Resoultion_Max_On];
%         
%         MIN_Resoultion_Watt_On=[];
%         MIN_Resoultion_Watt_On=[MIN_Resoultion_Watt_On;a.MIN_Resoultion_Watt_On];
%         MIN_Resoultion_Watt_On=[MIN_Resoultion_Watt_On;b.MIN_Resoultion_Watt_On];       
%         MIN_Resoultion_Watt_On=[MIN_Resoultion_Watt_On;c.MIN_Resoultion_Watt_On];
%         MIN_Resoultion_Watt_On=[MIN_Resoultion_Watt_On;d.MIN_Resoultion_Watt_On];
%         
%        % Z=[];
%        % Z= horzcat(pixelsRate, MIN_Resoultion_Watt_On);
%       %  sortrows(Z,[1 2]);
%       %  pixelsRate = Z(:,1);
%       %  MIN_Resoultion_Watt_On= Z(:,2);
%         
%         
%         %subplot(2,3,4);
%         figure(  );
%         scatter(pixelsRate,MIN_Resoultion_Watt_On);
%         %plot( a.Pixles_in_Resoultion_Max_On, a.MIN_Resoultion_Watt_On,'-.r*' , b.Pixles_in_Resoultion_Max_On, b.MIN_Resoultion_Watt_On,'--mo' ,c.Pixles_in_Resoultion_Max_On, c.MIN_Resoultion_Watt_On,':bs');
%         title('MIN bitrate of each resoultion ');
%         set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
%         xlabel(' Pixels (w x h x F) '); % x-axis label
%         ylabel('Watts '); % y-axis label
%         grid on
%         %legend('6fps','12fps','30fps');
%         waitfor(msgbox('Press OK to move to the next figure.'));  
%         
%         
%         %5- Mean Resolution
%         pixelsRate=[];
%         pixelsRate=[pixelsRate;a.Pixles_in_Resoultion_Max_On];
%         pixelsRate=[pixelsRate;b.Pixles_in_Resoultion_Max_On];
%         pixelsRate=[pixelsRate;c.Pixles_in_Resoultion_Max_On];
%         pixelsRate=[pixelsRate;d.Pixles_in_Resoultion_Max_On];
%         
%         Mean_Resolution_Watts_On=[];
%         Mean_Resolution_Watts_On=[ Mean_Resolution_Watts_On;a.Mean_Resolution_Watts_On];
%         Mean_Resolution_Watts_On=[ Mean_Resolution_Watts_On;b.Mean_Resolution_Watts_On];
%         Mean_Resolution_Watts_On=[ Mean_Resolution_Watts_On;c.Mean_Resolution_Watts_On];
%         Mean_Resolution_Watts_On=[ Mean_Resolution_Watts_On;d.Mean_Resolution_Watts_On];
%         
%         
%         
%         %subplot(2,3,5);
%         figure(  );
%         scatter(pixelsRate,Mean_Resolution_Watts_On);
%         %plot( a.Pixles_in_Resoultion_Max_On,a.Mean_Resolution_Watts_On,'-.r*',b.Pixles_in_Resoultion_Max_On,b.Mean_Resolution_Watts_On,'--mo',c.Pixles_in_Resoultion_Max_On,c.Mean_Resolution_Watts_On,':bs');
%         title('Mean Watts of each resoultion ');
%         set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
%         xlabel(' Pixels (w x h x F) '); % x-axis label
%         ylabel('Watts '); % y-axis label
%         grid on  
%         %legend('6fps','12fps','30fps');
%         waitfor(msgbox('Press OK to move to the next figure.'));  
%         
%         
%        


        
        a.AllPoints_Average_Watts =a.AllPoints_Average_Watts';
        b.AllPoints_Average_Watts =b.AllPoints_Average_Watts';
        c.AllPoints_Average_Watts =c.AllPoints_Average_Watts';
        d.AllPoints_Average_Watts =d.AllPoints_Average_Watts';
        figure();
        plot( a.AllPoints_Pixelrates, a.AllPoints_Average_Watts,'-.r*' ,  b.AllPoints_Pixelrates,b.AllPoints_Average_Watts,'--mo' , c.AllPoints_Pixelrates,c.AllPoints_Average_Watts,':bs',d.AllPoints_Pixelrates, d.AllPoints_Average_Watts,'-gp');
        title('All Points resoultion ');
        set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
        xlabel(' Pixels (w x h x F) '); % x-axis label
        ylabel('Watts '); % y-axis label
        grid on
        legend('6fps','12fps','200fps','30fps')

          %6- All Points
        pixelsRate=[];
        pixelsRate=[pixelsRate; a.AllPoints_Pixelrates];
        pixelsRate=[pixelsRate; b.AllPoints_Pixelrates];
        pixelsRate=[pixelsRate; c.AllPoints_Pixelrates];
        pixelsRate=[pixelsRate; d.AllPoints_Pixelrates];
        
        Mean_Resolution_Watts_On=[];
        Mean_Resolution_Watts_On=[ Mean_Resolution_Watts_On; a.AllPoints_Average_Watts];
        Mean_Resolution_Watts_On=[ Mean_Resolution_Watts_On; b.AllPoints_Average_Watts];
        Mean_Resolution_Watts_On=[ Mean_Resolution_Watts_On; c.AllPoints_Average_Watts];
        Mean_Resolution_Watts_On=[ Mean_Resolution_Watts_On; d.AllPoints_Average_Watts];
        
        Pmax=max( Mean_Resolution_Watts_On);
        Smax=max( pixelsRate );
        %subplot(2,3,5);
        figure(  );
        scatter(pixelsRate,Mean_Resolution_Watts_On);
        %plot( a.Pixles_in_Resoultion_Max_On,a.Mean_Resolution_Watts_On,'-.r*',b.Pixles_in_Resoultion_Max_On,b.Mean_Resolution_Watts_On,'--mo',c.Pixles_in_Resoultion_Max_On,c.Mean_Resolution_Watts_On,':bs');
        title('AllPoints Average Watts ');
        set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
        xlabel(' Pixels (w x h x F) '); % x-axis label
        ylabel('Watts '); % y-axis label
        grid on  
        %legend('6fps','12fps','30fps');
        waitfor(msgbox('Press OK to move to the next figure.'));  
        
        
        
        