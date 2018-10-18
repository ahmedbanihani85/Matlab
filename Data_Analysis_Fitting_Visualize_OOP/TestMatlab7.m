
% import DASHAnalyzer;
import DASHAnalyzerv2;
import DASHAnalyzer2v2;
import DASHAnalyzer3v2;
import DASHAnalyzer4v2;
import DASHAnalyzer5v2;%10fps
import DASHAnalyzer6v2;%16fps
import DASHAnalyzer7v2;%25fps
import DASHAnalyzer8v2;%18fps
import DASHAnalyzer9v2;%23fps

clear all
 a=  DASHAnalyzerv2;
a= a.ReadKBQualities();
a=  a.ReadMBQualities();
  a.plot1();
 a=a.plot2();
 %a=a.plot3();
disp(a.Folder);


 b=  DASHAnalyzer2v2;
b= b.ReadKBQualities();
b=  b.ReadMBQualities();
  b.plot1();
b= b.plot2();
%b= b.plot3();

 c=  DASHAnalyzer3v2;
c= c.ReadKBQualities();
c=  c.ReadMBQualities();
   c.plot1();
c= c.plot2();
%c= c.plot3();

 d=  DASHAnalyzer4v2;
d= d.ReadKBQualities();
d=  d.ReadMBQualities();
   d.plot1();
d= d.plot2();
%d= d.plot3();
%  hold off
%figure(1);

e=DASHAnalyzer5v2;
e= e.ReadKBQualities();
e=  e.ReadMBQualities();
   e.plot1();
e= e.plot2();


f=DASHAnalyzer6v2;
f= f.ReadKBQualities();
f=  f.ReadMBQualities();
   f.plot1();
f= f.plot2();

g=DASHAnalyzer7v2;
g= g.ReadKBQualities();
g=  g.ReadMBQualities();
   g.plot1();
g= g.plot2();

h=DASHAnalyzer8v2;
h= h.ReadKBQualities();
h=  h.ReadMBQualities();
   h.plot1();
h= h.plot2();

m=DASHAnalyzer9v2;
m= m.ReadKBQualities();
m=  m.ReadMBQualities();
   m.plot1();
m= m.plot2();

%***************************
Framerates=[6,12,20,30];
Framerates2=[6,10,12,20,30];
Framerates3=[6,12,16,20,25,30];
Framerates4=[6,10,12,16,20,25,30];
Framerates5=[6,12,16,18,20,23,25,30];

Resolution1=[];
Resolution1_MAX=[];
Resolution1_MIN=[];
Resolution1_Mean=[];

Resolution2=[];
Resolution2_MAX=[];
Resolution2_MIN=[];
Resolution2_Mean=[];

Resolution3=[];
Resolution3_MAX=[];
Resolution3_MIN=[];
Resolution3_Mean=[];

Resolution4=[];
Resolution4_MAX=[];
Resolution4_MIN=[];
Resolution4_Mean=[];

Resolution5=[];
Resolution5_MAX=[];
Resolution5_MIN=[];
Resolution5_Mean=[];

       for i=1:length(a.Pixles_in_Resoultion_Max_On)
           for j=1:length(a.Pixles_in_Resoultion_Max_On)
               if (i==1)
                   if (j==1 )
                       disp(a. Average_Resoultion_Watt_On(j))
                   Resolution1=[ Resolution1;a. Average_Resoultion_Watt_On(j)];
                   Resolution1_MAX=[ Resolution1_MAX;a.MAX_Resoultion_Watt_On(j)];
                   Resolution1_MIN=[Resolution1_MIN;a.MIN_Resoultion_Watt_On(j)];
                   Resolution1_Mean=[Resolution1_Mean;a.Mean_Resolution_Watts_On(j)];
                   end

                   if (j==2 )
                   Resolution2=[ Resolution2;a.Average_Resoultion_Watt_On(j)];
                   Resolution2_MAX=[Resolution2_MAX;a.MAX_Resoultion_Watt_On(j)];
                   Resolution2_MIN=[Resolution2_MIN;a.MIN_Resoultion_Watt_On(j)];
                   Resolution2_Mean=[Resolution2_Mean;a.Mean_Resolution_Watts_On(j)];
                   end
                   if (j==3 )
                   Resolution3=[ Resolution3;a. Average_Resoultion_Watt_On(j)];
                   Resolution3_MAX=[ Resolution3_MAX;a.MAX_Resoultion_Watt_On(j)];
                   Resolution3_MIN=[ Resolution3_MIN;a.MIN_Resoultion_Watt_On(j)];
                   Resolution3_Mean=[Resolution3_Mean;a.Mean_Resolution_Watts_On(j)];
                   end
                   if (j==4 )
                   Resolution4=[ Resolution4;a. Average_Resoultion_Watt_On(j)];
                   Resolution4_MAX=[Resolution4_MAX;a.MAX_Resoultion_Watt_On(j)];
                   Resolution4_MIN=[Resolution4_MIN;a.MIN_Resoultion_Watt_On(j)];
                   Resolution4_Mean=[ Resolution4_Mean;a.Mean_Resolution_Watts_On(j)];
                   end
                   if (j==5 )
                   Resolution5=[ Resolution5;a. Average_Resoultion_Watt_On(j)];
                   Resolution5_MAX=[Resolution5_MAX;a.MAX_Resoultion_Watt_On(j)];
                   Resolution5_MIN=[ Resolution5_MIN;a.MIN_Resoultion_Watt_On(j)];
                   Resolution5_Mean=[ Resolution5_Mean;a.Mean_Resolution_Watts_On(j)];
                   end

               end
               if (i==2)
                   if (j==1 )
                       disp(b. Average_Resoultion_Watt_On(j))
                   Resolution1=[ Resolution1;b. Average_Resoultion_Watt_On(j)];
                   Resolution1_MAX=[ Resolution1_MAX;b.MAX_Resoultion_Watt_On(j)];
                   Resolution1_MIN=[Resolution1_MIN;b.MIN_Resoultion_Watt_On(j)];
                   Resolution1_Mean=[Resolution1_Mean;b.Mean_Resolution_Watts_On(j)];
                   end

                   if (j==2 )
                   Resolution2=[ Resolution2;b. Average_Resoultion_Watt_On(j)];
                   Resolution2_MAX=[Resolution2_MAX;b.MAX_Resoultion_Watt_On(j)];
                   Resolution2_MIN=[Resolution2_MIN;b.MIN_Resoultion_Watt_On(j)];
                   Resolution2_Mean=[Resolution2_Mean;b.Mean_Resolution_Watts_On(j)];
                   end
                   if (j==3 )
                   Resolution3=[ Resolution3;b. Average_Resoultion_Watt_On(j)];
                   Resolution3_MAX=[ Resolution3_MAX;b.MAX_Resoultion_Watt_On(j)];
                   Resolution3_MIN=[ Resolution3_MIN;b.MIN_Resoultion_Watt_On(j)];
                   Resolution3_Mean=[Resolution3_Mean;b.Mean_Resolution_Watts_On(j)];
                   end
                   if (j==4 )
                   Resolution4=[ Resolution4;b. Average_Resoultion_Watt_On(j)];
                   Resolution4_MAX=[Resolution4_MAX;b.MAX_Resoultion_Watt_On(j)];
                   Resolution4_MIN=[Resolution4_MIN;b.MIN_Resoultion_Watt_On(j)];
                   Resolution4_Mean=[ Resolution4_Mean;b.Mean_Resolution_Watts_On(j)];
                   end
                   if (j==5 )
                   Resolution5=[ Resolution5;b. Average_Resoultion_Watt_On(j)];
                   Resolution5_MAX=[Resolution5_MAX;b.MAX_Resoultion_Watt_On(j)];
                   Resolution5_MIN=[ Resolution5_MIN;b.MIN_Resoultion_Watt_On(j)];
                   Resolution5_Mean=[ Resolution5_Mean;b.Mean_Resolution_Watts_On(j)];
                   end

               end
               
               
               if (i==3)
                   if (j==1 )
                       disp(c. Average_Resoultion_Watt_On(j))
                   Resolution1=[ Resolution1;c. Average_Resoultion_Watt_On(j)];
                   Resolution1_MAX=[ Resolution1_MAX;c.MAX_Resoultion_Watt_On(j)];
                   Resolution1_MIN=[Resolution1_MIN;c.MIN_Resoultion_Watt_On(j)];
                   Resolution1_Mean=[Resolution1_Mean;c.Mean_Resolution_Watts_On(j)];
                   end

                   if (j==2 )
                   Resolution2=[ Resolution2;c. Average_Resoultion_Watt_On(j)];
                   Resolution2_MAX=[Resolution2_MAX;c.MAX_Resoultion_Watt_On(j)];
                   Resolution2_MIN=[Resolution2_MIN;c.MIN_Resoultion_Watt_On(j)];
                   Resolution2_Mean=[Resolution2_Mean;c.Mean_Resolution_Watts_On(j)];
                   end
                   if (j==3 )
                   Resolution3=[ Resolution3;c. Average_Resoultion_Watt_On(j)];
                   Resolution3_MAX=[ Resolution3_MAX;c.MAX_Resoultion_Watt_On(j)];
                   Resolution3_MIN=[ Resolution3_MIN;c.MIN_Resoultion_Watt_On(j)];
                   Resolution3_Mean=[Resolution3_Mean;c.Mean_Resolution_Watts_On(j)];
                   end
                   if (j==4 )
                   Resolution4=[ Resolution4;c. Average_Resoultion_Watt_On(j)];
                   Resolution4_MAX=[Resolution4_MAX;c.MAX_Resoultion_Watt_On(j)];
                   Resolution4_MIN=[Resolution4_MIN;c.MIN_Resoultion_Watt_On(j)];
                   Resolution4_Mean=[ Resolution4_Mean;c.Mean_Resolution_Watts_On(j)];
                   end
                   if (j==5 )
                   Resolution5=[ Resolution5;c. Average_Resoultion_Watt_On(j)];
                   Resolution5_MAX=[Resolution5_MAX;c.MAX_Resoultion_Watt_On(j)];
                   Resolution5_MIN=[Resolution5_MIN;c.MIN_Resoultion_Watt_On(j)];
                   Resolution5_Mean=[Resolution5_Mean;c.Mean_Resolution_Watts_On(j)];
                   end

               end
               
               if (i==4)
                   if (j==1 )
                       disp(d. Average_Resoultion_Watt_On(j))
                   Resolution1=[ Resolution1;d. Average_Resoultion_Watt_On(j)];
                   Resolution1_MAX=[ Resolution1_MAX;d.MAX_Resoultion_Watt_On(j)];
                   Resolution1_MIN=[Resolution1_MIN;d.MIN_Resoultion_Watt_On(j)];
                   Resolution1_Mean=[Resolution1_Mean;d.Mean_Resolution_Watts_On(j)];
                   
                   end

                   if (j==2 )
                   Resolution2=[ Resolution2;d. Average_Resoultion_Watt_On(j)];
                   Resolution2_MAX=[Resolution2_MAX;d.MAX_Resoultion_Watt_On(j)];
                   Resolution2_MIN=[Resolution2_MIN;d.MIN_Resoultion_Watt_On(j)];
                   Resolution2_Mean=[Resolution2_Mean;d.Mean_Resolution_Watts_On(j)];
                   end
                   if (j==3 )
                   Resolution3=[ Resolution3;d. Average_Resoultion_Watt_On(j)];
                   Resolution3_MAX=[ Resolution3_MAX;d.MAX_Resoultion_Watt_On(j)];
                   Resolution3_MIN=[ Resolution3_MIN;d.MIN_Resoultion_Watt_On(j)];
                   Resolution3_Mean=[Resolution3_Mean;d.Mean_Resolution_Watts_On(j)];
                   end
                   if (j==4 )
                   Resolution4=[ Resolution4;d. Average_Resoultion_Watt_On(j)];        
                   Resolution4_MAX=[Resolution4_MAX;d.MAX_Resoultion_Watt_On(j)];
                   Resolution4_MIN=[Resolution4_MIN;d.MIN_Resoultion_Watt_On(j)];
                   Resolution4_Mean=[ Resolution4_Mean;d.Mean_Resolution_Watts_On(j)];
                   end
                   if (j==5 )
                   Resolution5=[ Resolution5;d. Average_Resoultion_Watt_On(j)];    
                   Resolution5_MAX=[Resolution5_MAX;d.MAX_Resoultion_Watt_On(j)];
                   Resolution5_MIN=[Resolution5_MIN;d.MIN_Resoultion_Watt_On(j)];
                   Resolution5_Mean=[Resolution5_Mean;d.Mean_Resolution_Watts_On(j)];
                   end

               end
               
               
           end
           
           
       end
       

%         subplot(2,3,1);
% 
%         plot(a.Pixles_in_Resoultion_Max_On,a.MAX_Resoultion_Watt_On,'-.r*',b.Pixles_in_Resoultion_Max_On,b.MAX_Resoultion_Watt_On,'--mo',c.Pixles_in_Resoultion_Max_On,c.MAX_Resoultion_Watt_On,':bs', d.Pixles_in_Resoultion_Max_On,d.MAX_Resoultion_Watt_On,'-gp');
%         title('MAX bitrate of each resoultion ');
%         set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
%         xlabel('Pixels (w x h x F)'); % x-axis label
%         ylabel('Watts '); % y-axis label
%         grid on
%         legend('6fps','12fps','20fps','30fps');

%The Latest Added points for verifications
       FifthResolution=[];
       FifthResolution=[ FifthResolution;a.Average_Resoultion_Watt_On(5)];
       FifthResolution=[ FifthResolution;e.Average_Resoultion_Watt_On(3)];
       FifthResolution=[ FifthResolution;b.Average_Resoultion_Watt_On(5)];
       FifthResolution=[ FifthResolution;f.Average_Resoultion_Watt_On(3)];
       FifthResolution=[ FifthResolution;c.Average_Resoultion_Watt_On(5)];
       FifthResolution=[ FifthResolution;g.Average_Resoultion_Watt_On(3)];
       FifthResolution=[ FifthResolution;d.Average_Resoultion_Watt_On(5)];
       ExpoFit3(Framerates4, FifthResolution,'Fifth Resolution 1920x1080','7 Frame Rates','Average Watts'); 
       FifthResolution_Max=[];
       FifthResolution_Max=[ FifthResolution_Max;a.MAX_Resoultion_Watt_On(5)];
       FifthResolution_Max=[ FifthResolution_Max;e.MAX_Resoultion_Watt_On(3)];
       FifthResolution_Max=[ FifthResolution_Max;b.MAX_Resoultion_Watt_On(5)];
       FifthResolution_Max=[ FifthResolution_Max;f.MAX_Resoultion_Watt_On(3)];
       FifthResolution_Max=[ FifthResolution_Max;c.MAX_Resoultion_Watt_On(5)];
       FifthResolution_Max=[ FifthResolution_Max;g.MAX_Resoultion_Watt_On(3)];
       FifthResolution_Max=[ FifthResolution_Max;d.MAX_Resoultion_Watt_On(5)];
        ExpoFit3(Framerates4, FifthResolution_Max,'Fifth Resolution 1920x1080','7 Frame Rates','Max Watts'); 
        
         FifthResolution_Min=[];
       FifthResolution_Min=[ FifthResolution_Min;a.MIN_Resoultion_Watt_On(5)];
       FifthResolution_Min=[ FifthResolution_Min;e.MIN_Resoultion_Watt_On(3)];
       FifthResolution_Min=[ FifthResolution_Min;b.MIN_Resoultion_Watt_On(5)];
       FifthResolution_Min=[ FifthResolution_Min;f.MIN_Resoultion_Watt_On(3)];
       FifthResolution_Min=[ FifthResolution_Min;c.MIN_Resoultion_Watt_On(5)];
       FifthResolution_Min=[ FifthResolution_Min;g.MIN_Resoultion_Watt_On(3)];
       FifthResolution_Min=[ FifthResolution_Min;d.MIN_Resoultion_Watt_On(5)];
        ExpoFit3(Framerates4, FifthResolution_Min,'Fifth Resolution 1920x1080','7 Frame Rates','Min Watts'); 
        
        FifthResolution_Middle=[];
       FifthResolution_Middle=[ FifthResolution_Middle;a.Mean_Resolution_Watts_On(5)];
       FifthResolution_Middle=[ FifthResolution_Middle;e.Mean_Resolution_Watts_On(3)];
       FifthResolution_Middle=[ FifthResolution_Middle;b.Mean_Resolution_Watts_On(5)];
       FifthResolution_Middle=[ FifthResolution_Middle;f.Mean_Resolution_Watts_On(3)];
       FifthResolution_Middle=[ FifthResolution_Middle;c.Mean_Resolution_Watts_On(5)];
       FifthResolution_Middle=[ FifthResolution_Middle;g.Mean_Resolution_Watts_On(3)];
       FifthResolution_Middle=[ FifthResolution_Middle;d.Mean_Resolution_Watts_On(5)];
        ExpoFit3(Framerates4, FifthResolution_Middle,'Fifth Resolution 1920x1080','7 Frame Rates','Middle Watts');
        
        FourthResolution_Middle=[];
       FourthResolution_Middle=[ FourthResolution_Middle;a.Mean_Resolution_Watts_On(4)];
       FourthResolution_Middle=[ FourthResolution_Middle;e.Mean_Resolution_Watts_On(2)];
       FourthResolution_Middle=[ FourthResolution_Middle;b.Mean_Resolution_Watts_On(4)]; 
       FourthResolution_Middle=[ FourthResolution_Middle;c.Mean_Resolution_Watts_On(4)];      
       FourthResolution_Middle=[ FourthResolution_Middle;d.Mean_Resolution_Watts_On(4)];
        ExpoFit3(Framerates2, FourthResolution_Middle,'Fourth Resolution 1280x720','5 Frame Rates','Middle Watts');
        
         FourthResolution_Max=[];
       FourthResolution_Max=[ FourthResolution_Max;a.MAX_Resoultion_Watt_On(4)];
       FourthResolution_Max=[ FourthResolution_Max;e.MAX_Resoultion_Watt_On(2)];
       FourthResolution_Max=[ FourthResolution_Max;b.MAX_Resoultion_Watt_On(4)];
       FourthResolution_Max=[ FourthResolution_Max;c.MAX_Resoultion_Watt_On(4)];
       FourthResolution_Max=[ FourthResolution_Max;d.MAX_Resoultion_Watt_On(4)];
        ExpoFit3(Framerates2, FourthResolution_Max,'Fourth Resolution 1280x720','5 Frame Rates','MAX Watts');
        
        FourthResolution_Average=[];
       FourthResolution_Average=[ FourthResolution_Average;a.Average_Resoultion_Watt_On(4)];
       FourthResolution_Average=[ FourthResolution_Average;e.Average_Resoultion_Watt_On(2)];
       FourthResolution_Average=[ FourthResolution_Average;b.Average_Resoultion_Watt_On(4)];
       FourthResolution_Average=[ FourthResolution_Average;c.Average_Resoultion_Watt_On(4)];
       FourthResolution_Average=[ FourthResolution_Average;d.Average_Resoultion_Watt_On(4)];
        ExpoFit3(Framerates2, FourthResolution_Average,'Fourth Resolution 1280x720','5 Frame Rates','Average Watts');
        
        ThirdResolution_Average=[];
       ThirdResolution_Average=[ ThirdResolution_Average;a.Average_Resoultion_Watt_On(3)];
       ThirdResolution_Average=[ ThirdResolution_Average;b.Average_Resoultion_Watt_On(3)];
       ThirdResolution_Average=[ ThirdResolution_Average;f.Average_Resoultion_Watt_On(2)];
       ThirdResolution_Average=[ ThirdResolution_Average;h.Average_Resoultion_Watt_On(1)];
       ThirdResolution_Average=[ ThirdResolution_Average;c.Average_Resoultion_Watt_On(3)];
        ThirdResolution_Average=[ ThirdResolution_Average;m.Average_Resoultion_Watt_On(1)];
       ThirdResolution_Average=[ ThirdResolution_Average;g.Average_Resoultion_Watt_On(2)];
       ThirdResolution_Average=[ ThirdResolution_Average;d.Average_Resoultion_Watt_On(3)];
        ExpoFit3(Framerates5, ThirdResolution_Average,'Third Resolution 960x544','8 Frame Rates','Average Watts'); 
        
         ThirdResolution_MAX=[];
       ThirdResolution_MAX=[ ThirdResolution_MAX;a.MAX_Resoultion_Watt_On(3)];
       ThirdResolution_MAX=[ ThirdResolution_MAX;b.MAX_Resoultion_Watt_On(3)];
       ThirdResolution_MAX=[ ThirdResolution_MAX;f.MAX_Resoultion_Watt_On(2)];
       ThirdResolution_MAX=[ ThirdResolution_MAX;c.MAX_Resoultion_Watt_On(3)];
       ThirdResolution_MAX=[ ThirdResolution_MAX;g.MAX_Resoultion_Watt_On(2)];
       ThirdResolution_MAX=[ ThirdResolution_MAX;d.MAX_Resoultion_Watt_On(3)];
        ExpoFit3(Framerates3, ThirdResolution_MAX,'Third Resolution 960x544','6 Frame Rates','MAX Watts'); 
        
        
         SecondResolution_Average=[];
       SecondResolution_Average=[ SecondResolution_Average;a.Average_Resoultion_Watt_On(2)];
       SecondResolution_Average=[ SecondResolution_Average;e.Average_Resoultion_Watt_On(1)];
       SecondResolution_Average=[ SecondResolution_Average;b.Average_Resoultion_Watt_On(2)];
       SecondResolution_Average=[ SecondResolution_Average;f.Average_Resoultion_Watt_On(1)];
       SecondResolution_Average=[ SecondResolution_Average;c.Average_Resoultion_Watt_On(2)];
       SecondResolution_Average=[ SecondResolution_Average;g.Average_Resoultion_Watt_On(1)];
       SecondResolution_Average=[ SecondResolution_Average;d.Average_Resoultion_Watt_On(2)];
        ExpoFit3(Framerates4, SecondResolution_Average,'Second Resolution 620x360','7 Frame Rates','Average Watts'); 
        
        SecondResolution_MAX=[];
       SecondResolution_MAX=[ SecondResolution_MAX;a.MAX_Resoultion_Watt_On(2)];
       SecondResolution_MAX=[ SecondResolution_MAX;e.MAX_Resoultion_Watt_On(1)];
       SecondResolution_MAX=[ SecondResolution_MAX;b.MAX_Resoultion_Watt_On(2)];
       SecondResolution_MAX=[ SecondResolution_MAX;f.MAX_Resoultion_Watt_On(1)];
       SecondResolution_MAX=[ SecondResolution_MAX;c.MAX_Resoultion_Watt_On(2)];
       SecondResolution_MAX=[ SecondResolution_MAX;g.MAX_Resoultion_Watt_On(1)];
       SecondResolution_MAX=[ SecondResolution_MAX;d.MAX_Resoultion_Watt_On(2)];
        ExpoFit3(Framerates4, SecondResolution_MAX,'Second Resolution 620x360','7 Frame Rates','MAX Watts'); 


         ExpoFit3(Framerates, Resolution1,'First Resolution','Frame Rate','Average Watts'); 
         ExpoFit3(Framerates,Resolution1_MAX,'First Resolution','Frame Rate','Max Watts'); 
         ExpoFit3(Framerates, Resolution1_MIN,'First Resolution','Frame Rate','Min Watts'); 
         ExpoFit3(Framerates, Resolution1_Mean,'First Resolution','Frame Rate','Mean Watts'); 
         
         ExpoFit3(Framerates, Resolution2,'Second Resolution','Frame Rate','Average Watts');
         ExpoFit3(Framerates, Resolution2_MAX,'Second Resolution','Frame Rate','Max Watts'); 
         ExpoFit3(Framerates, Resolution2_MIN,'Second Resolution','Frame Rate','Min Watts'); 
         ExpoFit3(Framerates, Resolution2_Mean,'Second Resolution','Frame Rate','Mean Watts'); 
         
         ExpoFit3(Framerates, Resolution3,'Third Resolution','Frame Rate','Average Watts');
         ExpoFit3(Framerates, Resolution3_MAX,'Third Resolution','Frame Rate','Max Watts'); 
         ExpoFit3(Framerates, Resolution3_MIN,'Third Resolution','Frame Rate','Min Watts'); 
         ExpoFit3(Framerates, Resolution3_Mean,'Third Resolution','Frame Rate','Mean Watts'); 
         
         ExpoFit3(Framerates, Resolution4,'Fourth Resolution','Frame Rate','Average Watts');
         ExpoFit3(Framerates, Resolution4_MAX,'Fourth Resolution','Frame Rate','Max Watts'); 
         ExpoFit3(Framerates, Resolution4_MIN,'Fourth Resolution','Frame Rate','Min Watts'); 
         ExpoFit3(Framerates, Resolution4_Mean,'Fourth Resolution','Frame Rate','Mean Watts'); 
         
         ExpoFit3(Framerates, Resolution5,'Fifth Resolution','Frame Rate','Average Watts');
         ExpoFit3(Framerates, Resolution5_MAX,'Fifth Resolution','Frame Rate','Max Watts'); 
         ExpoFit3(Framerates, Resolution5_MIN,'Fifth Resolution','Frame Rate','Min Watts'); 
         ExpoFit3(Framerates, Resolution5_Mean,'Fifth Resolution','Frame Rate','Mean Watts'); 
         %ExpoFit2(a.Pixles_in_Resoultion_Max_On, a.MAX_Resoultion_Watt_On,'MAX  bitrate Resoultion Watt For 6fps'); 
         ExpoFit(a.Pixles_in_Resoultion_Max_On, a.MAX_Resoultion_Watt_On,'MAX  bitrate Resoultion Watt For 6fps');  
         ExpoFit(b.Pixles_in_Resoultion_Max_On, b.MAX_Resoultion_Watt_On,'MAX  bitrate Resoultion Watt For 12fps');
         ExpoFit(c.Pixles_in_Resoultion_Max_On, c.MAX_Resoultion_Watt_On,'MAX  bitrate Resoultion Watt For 20fps');
         ExpoFit(d.Pixles_in_Resoultion_Max_On, d.MAX_Resoultion_Watt_On,'MAX  bitrate Resoultion Watt For 30fps');
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

        LinearFit([a.MAX_Resoultion_BitRate_On,b.MAX_Resoultion_BitRate_On,c.MAX_Resoultion_BitRate_On,d.MAX_Resoultion_BitRate_On],[a.MAX_Resoultion_Watt_On,b.MAX_Resoultion_Watt_On,c.MAX_Resoultion_Watt_On,d.MAX_Resoultion_Watt_On],'MAX Resoultion bit rate Watt For 6fps');
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

         ExpoFit(a.Pixles_in_Resoultion_Max_On,a.Average_Resoultion_Watt_On,'Median(middle) bitrate Resoultion Watt For 6fps');  
         ExpoFit(b.Pixles_in_Resoultion_Max_On,b.Average_Resoultion_Watt_On,'Median(middle) bitrate Resoultion Watt For 12fps');
         ExpoFit(c.Pixles_in_Resoultion_Max_On,c.Average_Resoultion_Watt_On,'Median(middle) bitrate Resoultion Watt For 20fps');
         ExpoFit(d.Pixles_in_Resoultion_Max_On,d.Average_Resoultion_Watt_On,'Median(middle) bitrate Resoultion Watt For 30fps');
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

         ExpoFit(a.Pixles_in_Resoultion_Max_On,a.MIN_Resoultion_Watt_On,'Min bitrate Resoultion Watt For 6fps');  
         ExpoFit(b.Pixles_in_Resoultion_Max_On,b.MIN_Resoultion_Watt_On,'Min bitrate Resoultion Watt For 12fps');
         ExpoFit(c.Pixles_in_Resoultion_Max_On,c.MIN_Resoultion_Watt_On,'Min bitrate Resoultion Watt For 20fps');
         ExpoFit(d.Pixles_in_Resoultion_Max_On,d.MIN_Resoultion_Watt_On,'Min bitrate Resoultion Watt For 30fps');
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
         ExpoFit(a.Pixles_in_Resoultion_Max_On,a.Mean_Resolution_Watts_On,'Mean Watts of each resoultion For 6fps');  
         ExpoFit(b.Pixles_in_Resoultion_Max_On,b.Mean_Resolution_Watts_On,'Mean Watts of each resoultion For 12fps');
         ExpoFit(c.Pixles_in_Resoultion_Max_On,c.Mean_Resolution_Watts_On,'Mean Watts of each resoultion For 20fps');
         ExpoFit(d.Pixles_in_Resoultion_Max_On,d.Mean_Resolution_Watts_On,'Mean Watts of each resoultion For 30fps');

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
     % *******XY SCATTER Plot************
      %1- Max Resolution 
        pixelsRate=[];
        pixelsRate=[pixelsRate;a.Pixles_in_Resoultion_Max_On];
        pixelsRate=[pixelsRate;b.Pixles_in_Resoultion_Max_On];
        pixelsRate=[pixelsRate;c.Pixles_in_Resoultion_Max_On];
         pixelsRate=[pixelsRate;d.Pixles_in_Resoultion_Max_On];
        %pixelsRate=sort(pixelsRate);
        MAX_Resoultion_Watt_On=[];
        MAX_Resoultion_Watt_On=[MAX_Resoultion_Watt_On;a.MAX_Resoultion_Watt_On];
        MAX_Resoultion_Watt_On=[MAX_Resoultion_Watt_On;b.MAX_Resoultion_Watt_On];
        MAX_Resoultion_Watt_On=[MAX_Resoultion_Watt_On;c.MAX_Resoultion_Watt_On];
        MAX_Resoultion_Watt_On=[MAX_Resoultion_Watt_On;d.MAX_Resoultion_Watt_On];
        
        %Z= horzcat(pixelsRate,MAX_Resoultion_Watt_On);
        %sortrows(Z,[1 2]);%
       % pixelsRate = Z(:,1);
       % MAX_Resoultion_Watt_On= Z(:,2);
        %plot(pixelsRate,Pixles_in_Resoultion_Max_On,'-.r*');
        %figure('Name','XY Scatter plot');
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
        waitfor(msgbox('Press OK to move to the next figure.'));  
        
        %Curve Fitting by Code
%         figure('Name','Curve Fitting');
%         xlabel('Pixle Rate(W*H*FPS)');
%         ylabel('Output Watt ');
%         title('Curve Fitting Exercise');
     
        %fit1 = polyfit(pixelsRate, MAX_Resoultion_Watt_On, 1);
%         fit = polyfit(pixelsRate, log(MAX_Resoultion_Watt_On), 1);
         %plot(pixelsRate, MAX_Resoultion_Watt_On, 'o', pixelsRate, fit1(1) * MAX_Resoultion_Watt_On(:,1) + fit1(2))  ;
        %plot(pixelsRate, log10(MAX_Resoultion_Watt_On(:,1)), 'r+');
        %semilogy (pixelsRate, log10(MAX_Resoultion_Watt_On(:,1)), 'r+');
%         semilogy(pixelsRate, MAX_Resoultion_Watt_On, 'o', pixelsRate, exp(fit(2)).*exp(fit(1)*pixelsRate));
%         grid on
        
        ExpoFit(pixelsRate, MAX_Resoultion_Watt_On,'All fps Max bit rate for each resolution');       
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
        
     %3- Average Resolution 
        pixelsRate=[];
        pixelsRate=[pixelsRate;a.Pixles_in_Resoultion_Max_On];
        pixelsRate=[pixelsRate;b.Pixles_in_Resoultion_Max_On];
        pixelsRate=[pixelsRate;c.Pixles_in_Resoultion_Max_On];
        pixelsRate=[pixelsRate;d.Pixles_in_Resoultion_Max_On];
        
        Average_Resoultion_Watt_On=[];
        Average_Resoultion_Watt_On=[Average_Resoultion_Watt_On;a.Average_Resoultion_Watt_On];
        Average_Resoultion_Watt_On=[Average_Resoultion_Watt_On;b.Average_Resoultion_Watt_On];       
        Average_Resoultion_Watt_On=[Average_Resoultion_Watt_On;c.Average_Resoultion_Watt_On];
        Average_Resoultion_Watt_On=[Average_Resoultion_Watt_On;d.Average_Resoultion_Watt_On];
        
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

        ExpoFit(pixelsRate, Average_Resoultion_Watt_On,'All fps Median(middle) bitrate of each resoultion');   
%         
%         
      %4- Average Resolution 
        pixelsRate=[];
        pixelsRate=[pixelsRate;a.Pixles_in_Resoultion_Max_On];
        pixelsRate=[pixelsRate;b.Pixles_in_Resoultion_Max_On];
        pixelsRate=[pixelsRate;c.Pixles_in_Resoultion_Max_On];
        pixelsRate=[pixelsRate;d.Pixles_in_Resoultion_Max_On];
        
        MIN_Resoultion_Watt_On=[];
        MIN_Resoultion_Watt_On=[MIN_Resoultion_Watt_On;a.MIN_Resoultion_Watt_On];
        MIN_Resoultion_Watt_On=[MIN_Resoultion_Watt_On;b.MIN_Resoultion_Watt_On];       
        MIN_Resoultion_Watt_On=[MIN_Resoultion_Watt_On;c.MIN_Resoultion_Watt_On];
        MIN_Resoultion_Watt_On=[MIN_Resoultion_Watt_On;d.MIN_Resoultion_Watt_On];
        
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
         ExpoFit(pixelsRate, MIN_Resoultion_Watt_On,'All fps MIN bitrate of each resoultion');

%         
%         %5- Mean Resolution
        pixelsRate=[];
        pixelsRate=[pixelsRate;a.Pixles_in_Resoultion_Max_On];
        pixelsRate=[pixelsRate;b.Pixles_in_Resoultion_Max_On];
        pixelsRate=[pixelsRate;c.Pixles_in_Resoultion_Max_On];
        pixelsRate=[pixelsRate;d.Pixles_in_Resoultion_Max_On];
        
        Mean_Resolution_Watts_On=[];
        Mean_Resolution_Watts_On=[ Mean_Resolution_Watts_On;a.Mean_Resolution_Watts_On];
        Mean_Resolution_Watts_On=[ Mean_Resolution_Watts_On;b.Mean_Resolution_Watts_On];
        Mean_Resolution_Watts_On=[ Mean_Resolution_Watts_On;c.Mean_Resolution_Watts_On];
        Mean_Resolution_Watts_On=[ Mean_Resolution_Watts_On;d.Mean_Resolution_Watts_On];
        
        
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
      ExpoFit(pixelsRate, Mean_Resolution_Watts_On,'All fps Mean Watts of each resoultion');   
        
  
    
    
    