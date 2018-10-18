%Code refactoring and Object Oriented
%Class Definition
%%
classdef DASHAnalyzer2
    
   properties (Access = public)
      Folder='TearsOfSteel_12fbs_Statistics/';
      Framerate=12;
      Fileslist;%to list all CSV files in specific directory
      FileNamesList={};%Files name as strings
      Resolutions=[];%the files Resolutions after sorting
      BiteRates=[];%the files bit rate after sorting
      Watts_Backlight_On_Average_List= [];% will be filled with the averages for all qualities of the same sequence
      Watts_Backlight_On_Average_List_WOL= [];% will be filled with the averages for all qualities of the same sequence Without Outliers
      Watts_Backlight_On_MAX_List= [];%will be filled with MAX for all qualities of the same sequence
      Watts_Backlight_On_MIN_List= [];%will be filled with MIN for all qualities of the same sequence
      Watts_Backlight_Off_Average_List= [];%will be filled with averages for all qualities of the same sequence
      Watts_Backlight_Off_Average_List_WOL= [];%will be filled with averages for all qualities of the same sequence Without Outliers
      Watts_Backlight_Off_MAX_List= [];%will be filled with MAX for all qualities of the same sequence
      Watts_Backlight_Off_MIN_List= [];%will be filled with MIN for all qualities of the same sequence
%       CurrentFile;
      NumberofReadings=0;
      SortedFileslist={};
      SortedFileslist2={};
       Current_Watts_Backlight_On_Average_List=[];
      Current_Watts_Backlight_Off_Average_List=[];
      CurrentResolution=[];
      CurrentBitRate=[];
      %These variables are for Plot2
         CurrentResolution2=[]; 
         Current_Watts_Backlight_On_Average_List2=[];
         Current_Watts_Backlight_Off_Average_List2=[];
         CurrentBitRate2=[];  
         MAX_Resoultion_Watt_Off=[];
         MIN_Resoultion_Watt_Off=[];
         MAX_Resoultion_Watt_On=[];
         MIN_Resoultion_Watt_On=[];
         Average_Resoultion_Watt_On=[];
         Median_Resoultion_Watt_On=[];
         Average_Resoultion_Watt_Off=[];
         Median_Resoultion_Watt_Off=[];
         Pixles_in_Resoultion_Max_On=[];
         Pixles_in_Resoultion_Max_Off=[];
         Pixles_in_Resoultion_Min_On=[];
         Pixles_in_Resoultion_Min_Off=[];
         Pixles_in_Resoultion_Average_On=[];
         Pixles_in_Resoultion_Average_Off=[];
         MAX_Resoultion_BitRate_Off=[];
         MAX_Resoultion_BitRate_On=[];
         MIN_Resoultion_BitRate_Off=[];
         MIN_Resoultion_BitRate_On=[];
         Average_BitRate_Off=[];
         Average_BitRate_On=[];
         Mean_Resolution_Watts_On=[];
         %
         AllPoints_Average_Watts =[];
         AllPoints_Bitrates=[];
         AllPoints_Pixelrates=[];
       
   end
   
   methods (Access = public)
       
      function obj =DASHAnalyzer2()%Constructor
        %'*x*.cs*'
          obj.Fileslist=dir(obj.Folder);
          for i= 1:length(obj.Fileslist)
              if (length(obj.Fileslist(i,1).name)>4)
               obj.FileNamesList=[ obj.FileNamesList ;obj.Fileslist(i,1).name];%take the file name out of structure
          
              end
          end
          obj.SortedFileslist=sortn(obj.FileNamesList);%sort the file names
          
          
      end
      function obj= ReadKBQualities( obj)
          CurrentFile=0;
        for i= 1:length(obj.SortedFileslist)%to get the bit rates in kb in numeric double values
  
           remain=obj.SortedFileslist(i);
           [str, remain] = strtok(remain, ' ');
           [str, remain] = strtok(remain, '_');
           [str, remain] = strtok(str, ' ');
           [str, remain] = strtok(str, 'K');
           if not(strcmp(remain,''))
               %Extract the bit rate
              obj.BiteRates=[obj.BiteRates; str2double(str)];
              %*************** Extract the resolution*************
                str=obj.SortedFileslist(i);
                [str, remain] = strtok(str, ' ');
                [str, remain] = strtok(str, '_');
                [str, remain] = strtok(remain, '_');
                [str, remain] = strtok(remain, '_');
                obj.Resolutions=[obj.Resolutions; str];
              %*****************Extract data from the current file
                 CurrentFile= char(obj.SortedFileslist(i));
                 obj.SortedFileslist2=[obj.SortedFileslist2;CurrentFile];% To add file names in correct order.
               disp(CurrentFile);%print current file name
               Current_Watts_Backlight_On_Average=csvread(strcat(obj.Folder,CurrentFile),7,4,[7,4,7,4]);
               Current_Watts_Backlight_On_MAX=csvread(strcat(obj.Folder,CurrentFile),7,2,[7,2,7,2]);
               Current_Watts_Backlight_On_MIN=csvread(strcat(obj.Folder,CurrentFile),7,3,[7,3,7,3]);
               Current_Watts_Backlight_Off_Average=csvread(strcat(obj.Folder,CurrentFile),11,4,[11,4,11,4]);
               Current_Watts_Backlight_Off_MAX=csvread(strcat(obj.Folder,CurrentFile),11,2,[11,2,11,2]);
               Current_Watts_Backlight_Off_MIN=csvread(strcat(obj.Folder,CurrentFile),11,3,[11,3,11,3]);
               obj.NumberofReadings=csvread(strcat(obj.Folder,CurrentFile),3,5,[3,5,3,5]);%bring the number of readings in the File cel F4
               disp(obj.NumberofReadings);%print number of readings
              obj.NumberofReadings=obj.NumberofReadings+22;%calculate the index of the end of the readings columns 
               %disp(NumberofReadings);
               Watts_Backlight_On_RNG='b23..b';%define the Watts_Backlight_On values range in excel
               Watts_Backlight_Off_RNG='c23..c';% define the Watts_Backlight_Off values range in excel
               Watts_Backlight_On_RNG=strcat( Watts_Backlight_On_RNG,num2str(obj.NumberofReadings));%concatenate the index of the end of the readings columns to the Range
               Watts_Backlight_Off_RNG=strcat( Watts_Backlight_Off_RNG,num2str(obj.NumberofReadings));% concatenate the index of the end of the readings columns to the Range
               Watts_Backlight_On=csvread(strcat(obj.Folder,CurrentFile),22,1, Watts_Backlight_On_RNG);% Read the values and put it in Watts_Backlight_On for the current file only & the previous one will be deleted
               Watts_Backlight_Off=csvread(strcat(obj.Folder,CurrentFile),22,2,  Watts_Backlight_Off_RNG);% Read the values and put it in Watts_Backlight_Off for the current file only & the previous one will be deleted
               obj.Watts_Backlight_On_Average_List=[obj.Watts_Backlight_On_Average_List;double(Current_Watts_Backlight_On_Average)];
               
               obj.AllPoints_Average_Watts=[obj.AllPoints_Average_Watts,double(Current_Watts_Backlight_On_Average)];% to save the average for all points
                
               disp('Backlight_On_Average From file:');
               disp(Current_Watts_Backlight_On_Average);
               disp('Backlight_On_Average From MedianWithoutOutlier:');
              MWO_Backlight_On_Average=MedianWithoutOutlier(Watts_Backlight_On,0.05,1);
               obj.Watts_Backlight_On_Average_List_WOL= [obj.Watts_Backlight_On_Average_List_WOL;MWO_Backlight_On_Average];
               disp(MWO_Backlight_On_Average);

               obj.Watts_Backlight_On_MAX_List=[obj.Watts_Backlight_On_MAX_List;double(Current_Watts_Backlight_On_MAX)];
               obj.Watts_Backlight_On_MIN_List= [obj.Watts_Backlight_On_MIN_List;double(Current_Watts_Backlight_On_MIN)];
               obj.Watts_Backlight_Off_Average_List= [obj.Watts_Backlight_Off_Average_List;double(Current_Watts_Backlight_Off_Average)];
               disp('Backlight_Off_Average From file:');
               disp(Current_Watts_Backlight_Off_Average);
               disp('Backlight_Off_Average From MedianWithoutOutlier:');
               MWO_Backlight_Off_Average=MedianWithoutOutlier(Watts_Backlight_Off,0.05,1);
               obj.Watts_Backlight_Off_Average_List_WOL= [obj.Watts_Backlight_Off_Average_List_WOL;MWO_Backlight_Off_Average];
               disp(MWO_Backlight_Off_Average);

               obj.Watts_Backlight_Off_MAX_List= [ obj.Watts_Backlight_Off_MAX_List;double(Current_Watts_Backlight_Off_MAX)];
              obj.Watts_Backlight_Off_MIN_List= [ obj.Watts_Backlight_Off_MIN_List;double(Current_Watts_Backlight_Off_MIN)];



              Watts_Backlight_On_mat(i,:)= (Watts_Backlight_On)'; 

           end %If End

        end %For Loop End
        
      end %Function ReadKB End
      
      function obj = ReadMBQualities(obj)
          
        for i= 1:length(obj.SortedFileslist)%to get the bit rates in MB as KB in numeric double values

           remain=obj.SortedFileslist(i);
           [str, remain] = strtok(remain, ' ');
           [str, remain] = strtok(remain, '_');
           [str, remain] = strtok(str, ' ');
           [str, remain] = strtok(str, 'K');
           if strcmp(remain,'')
              %Extract the bit rate
               [str1, remain1] = strtok(str, 'M');
               str2=strrep(str1,'.','');
               obj.BiteRates=[obj.BiteRates; str2double(strcat(str2,'00.0'))];
               %*************** Extract the resolution*************
                 str=obj.SortedFileslist(i);
                [str, remain] = strtok(str, ' ');
                [str, remain] = strtok(str, '_');
                [str, remain] = strtok(remain, '_');
                [str, remain] = strtok(remain, '_');
                obj.Resolutions=[obj.Resolutions; str];

                %*****************Extract data from the current file
                 CurrentFile= char(obj.SortedFileslist(i));
                  obj.SortedFileslist2=[obj.SortedFileslist2;CurrentFile];% To add file names in correct order.
               disp(CurrentFile);%print current file name
               Current_Watts_Backlight_On_Average=csvread(strcat(obj.Folder,CurrentFile),7,4,[7,4,7,4]);
               Current_Watts_Backlight_On_MAX=csvread(strcat(obj.Folder,CurrentFile),7,2,[7,2,7,2]);
               Current_Watts_Backlight_On_MIN=csvread(strcat(obj.Folder,CurrentFile),7,3,[7,3,7,3]);
               Current_Watts_Backlight_Off_Average=csvread(strcat(obj.Folder,CurrentFile),11,4,[11,4,11,4]);
               Current_Watts_Backlight_Off_MAX=csvread(strcat(obj.Folder,CurrentFile),11,2,[11,2,11,2]);
               Current_Watts_Backlight_Off_MIN=csvread(strcat(obj.Folder,CurrentFile),11,3,[11,3,11,3]);
               obj.NumberofReadings=csvread(strcat(obj.Folder,CurrentFile),3,5,[3,5,3,5]);%bring the number of readings in the File cel F4
               disp(obj.NumberofReadings);%print number of readings
               obj.NumberofReadings=obj.NumberofReadings+22;%calculate the index of the end of the readings columns 
               %disp(NumberofReadings);
               Watts_Backlight_On_RNG='b23..b';%define the Watts_Backlight_On values range in excel
               Watts_Backlight_Off_RNG='c23..c';% define the Watts_Backlight_Off values range in excel
               Watts_Backlight_On_RNG=strcat( Watts_Backlight_On_RNG,num2str(obj.NumberofReadings));%concatenate the index of the end of the readings columns to the Range
               Watts_Backlight_Off_RNG=strcat( Watts_Backlight_Off_RNG,num2str(obj.NumberofReadings));% concatenate the index of the end of the readings columns to the Range
               Watts_Backlight_On=csvread(strcat(obj.Folder,CurrentFile),22,1, Watts_Backlight_On_RNG);% Read the values and put it in Watts_Backlight_On for the current file only & the previous one will be deleted
               Watts_Backlight_Off=csvread(strcat(obj.Folder,CurrentFile),22,2,  Watts_Backlight_Off_RNG);% Read the values and put it in Watts_Backlight_Off for the current file only & the previous one will be deleted
               obj.Watts_Backlight_On_Average_List=[obj.Watts_Backlight_On_Average_List;double(Current_Watts_Backlight_On_Average)];
               obj.AllPoints_Average_Watts=[obj.AllPoints_Average_Watts,double(Current_Watts_Backlight_On_Average)];% to save the average for all points
               
               disp('Backlight_On_Average From file:');
               disp(Current_Watts_Backlight_On_Average);
               disp('Backlight_On_Average From MedianWithoutOutlier:');
               MWO_Backlight_On_Average=MedianWithoutOutlier(Watts_Backlight_On,0.05,1);
               obj.Watts_Backlight_On_Average_List_WOL= [obj.Watts_Backlight_On_Average_List_WOL;MWO_Backlight_On_Average];
               disp(MWO_Backlight_On_Average);

               obj.Watts_Backlight_On_MAX_List=[ obj.Watts_Backlight_On_MAX_List;double(Current_Watts_Backlight_On_MAX)];
               obj.Watts_Backlight_On_MIN_List= [obj.Watts_Backlight_On_MIN_List;double(Current_Watts_Backlight_On_MIN)];
               obj.Watts_Backlight_Off_Average_List= [obj.Watts_Backlight_Off_Average_List;double(Current_Watts_Backlight_Off_Average)];
               disp('Backlight_Off_Average From file:');
               disp(Current_Watts_Backlight_Off_Average);
               disp('Backlight_Off_Average From MedianWithoutOutlier:');
               MWO_Backlight_Off_Average=MedianWithoutOutlier(Watts_Backlight_Off,0.05,1);
               obj.Watts_Backlight_Off_Average_List_WOL= [obj.Watts_Backlight_Off_Average_List_WOL;MWO_Backlight_Off_Average];
               disp(MWO_Backlight_Off_Average);
               obj.Watts_Backlight_Off_MAX_List= [ obj.Watts_Backlight_Off_MAX_List;double(Current_Watts_Backlight_Off_MAX)];
               obj.Watts_Backlight_Off_MIN_List= [obj.Watts_Backlight_Off_MIN_List;double(Current_Watts_Backlight_Off_MIN)];


           end

        end

          
         
      end
      function  plot1(obj)
        
        hold on
        subplot(2,2,1);
        plot(obj.BiteRates,obj.Watts_Backlight_On_Average_List,'b+-');
        grid on
        title('Average Watts Backlight On ');
        xlabel('Bitrate (kbps)'); 
        ylabel('Watts '); 

        subplot(2,2,2);
        plot(obj.BiteRates,obj.Watts_Backlight_On_Average_List_WOL,'b+-');
        grid on
        title('Average Watts Backlight On WOL');
        xlabel('Bitrate (kbps)'); 
        ylabel('Watts '); 

        subplot(2,2,3);
        grid on
%         hold on
        plot(obj.BiteRates,obj.Watts_Backlight_Off_Average_List,'b+-');
        grid on
        title('Average Watts Backlight Off');
         xlabel('Bitrate (kbps)'); 
        ylabel('Watts '); 

        subplot(2,2,4);
        grid on
%         hold on
        plot(obj.BiteRates,obj.Watts_Backlight_Off_Average_List_WOL,'b+-');
        grid on
        title('Average Watts Backlight Off WOL');
        xlabel('Bitrate (kbps)'); 
        ylabel('Watts '); 
        hold off
        waitfor(msgbox('Press OK to move to the next figure.'));
      end
      
      function obj=plot2(obj)
                %This is the new Code portion to show the resoulution affect with the
        %bitrate
         [previousresolution, remain] = strtok(obj.Resolutions(1), 'x');
         plotindex=1;
         num1={};
         num2={};
        
        for  i= 1:length(obj.SortedFileslist2)
            str=obj.Resolutions(i);
            [str, remain] = strtok(str, 'x');
             if(strcmp(str,previousresolution))
                obj.CurrentResolution2=[  obj.CurrentResolution2; obj.Resolutions(i)];
                obj.Current_Watts_Backlight_On_Average_List2=[obj.Current_Watts_Backlight_On_Average_List2;obj.Watts_Backlight_On_Average_List(i)];
                obj.Current_Watts_Backlight_Off_Average_List2=[obj.Current_Watts_Backlight_Off_Average_List2;obj.Watts_Backlight_Off_Average_List(i)];
                obj.CurrentBitRate2=[ obj.CurrentBitRate2; obj.BiteRates(i)];
                %For All Points
                 %Calculate pixels
                [num1, num2] = strtok(obj.Resolutions(i), 'x'); 
                [num2,x]=strtok(num2, 'x'); 
                num1=str2num(char(num1));
                num2=str2num(char(num2));
                 obj.AllPoints_Pixelrates=[ obj.AllPoints_Pixelrates;(num1 * num2)*12];
                 obj.AllPoints_Bitrates=[ obj.AllPoints_Bitrates;obj.BiteRates(i)];
             else      
                obj.MAX_Resoultion_Watt_On=[obj.MAX_Resoultion_Watt_On;obj.Current_Watts_Backlight_On_Average_List2(length(obj.Current_Watts_Backlight_On_Average_List2))];
                obj.MAX_Resoultion_BitRate_On=[obj.MAX_Resoultion_BitRate_On;obj.CurrentBitRate2(length(obj.Current_Watts_Backlight_On_Average_List2))];
                %Calculate pixels
                [num1, num2] = strtok(obj.Resolutions(i-1), 'x'); 
                [num2,x]=strtok(num2, 'x'); 
                num1=str2num(char(num1));
                num2=str2num(char(num2));
                obj.Pixles_in_Resoultion_Max_On=[obj.Pixles_in_Resoultion_Max_On; (num1 * num2)*12];%Mutiply By Frame Rate
                obj.MIN_Resoultion_Watt_On=[obj.MIN_Resoultion_Watt_On;obj.Current_Watts_Backlight_On_Average_List2(1)];
                %For All Points
                obj.AllPoints_Pixelrates=[ obj.AllPoints_Pixelrates;(num1 * num2)*12];
                obj.AllPoints_Bitrates=[ obj.AllPoints_Bitrates;obj.BiteRates(i)];
                
                obj.Average_Resoultion_Watt_On=[obj.Average_Resoultion_Watt_On;obj.Current_Watts_Backlight_On_Average_List2(round(length(obj.Current_Watts_Backlight_On_Average_List2)/2))];
                obj.Mean_Resolution_Watts_On=[obj.Mean_Resolution_Watts_On;mean(obj.Current_Watts_Backlight_On_Average_List2)];


            subplot(2,3,plotindex);
            plotindex=plotindex + 1;
            plot(obj.CurrentBitRate2,obj.Current_Watts_Backlight_Off_Average_List2,'b+-');
            grid on
            %suptitle('');
             title(strcat(obj.Resolutions(i-1),' BackLight Off'));
             xlabel('Bitrate (kbps)'); % x-axis label
            ylabel('Watts '); % y-axis label

            [previousresolution, remain] = strtok(obj.Resolutions(i), 'x');
             obj.CurrentResolution2=[]; 
             obj.Current_Watts_Backlight_On_Average_List2=[];
             obj.Current_Watts_Backlight_Off_Average_List2=[];
             obj.CurrentBitRate2=[];

             obj.CurrentResolution2=[  obj.CurrentResolution2; obj.Resolutions(i)];
             obj.Current_Watts_Backlight_On_Average_List2=[obj.Current_Watts_Backlight_On_Average_List2;obj.Watts_Backlight_On_Average_List(i)];
             obj.Current_Watts_Backlight_Off_Average_List2=[obj.Current_Watts_Backlight_Off_Average_List2;obj.Watts_Backlight_Off_Average_List(i)];
             obj.CurrentBitRate2=[ obj.CurrentBitRate2; obj.BiteRates(i)];

             end
        end
        %This is for the last Resolution
%         hold off
                obj.MAX_Resoultion_Watt_On=[obj.MAX_Resoultion_Watt_On;obj.Current_Watts_Backlight_On_Average_List2(length(obj.Current_Watts_Backlight_On_Average_List2))];
                obj.MAX_Resoultion_BitRate_On=[obj.MAX_Resoultion_BitRate_On;obj.CurrentBitRate2(length(obj.Current_Watts_Backlight_On_Average_List2))];
                obj.Mean_Resolution_Watts_On=[obj.Mean_Resolution_Watts_On;mean(obj.Current_Watts_Backlight_On_Average_List2)];
                %Calculate pixels
                [num1, num2] = strtok(obj.Resolutions(i), 'x'); 
                [num2,x]=strtok(num2, 'x'); 
                num1=str2num(char(num1));
                num2=str2num(char(num2));
                obj.Pixles_in_Resoultion_Max_On=[obj.Pixles_in_Resoultion_Max_On; (num1 * num2)*12];%Multiply by Frame Rate

                obj.MIN_Resoultion_Watt_On=[obj.MIN_Resoultion_Watt_On;obj.Current_Watts_Backlight_On_Average_List2(1)];
                obj.Average_Resoultion_Watt_On=[obj.Average_Resoultion_Watt_On;obj.Current_Watts_Backlight_On_Average_List2(round(length(obj.Current_Watts_Backlight_On_Average_List2)/2))];
            hold on    
           subplot(2,3,plotindex);
            plotindex=plotindex + 1;
            plot(obj.CurrentBitRate2,obj.Current_Watts_Backlight_Off_Average_List2,'b+-');
            grid on
             title(strcat(obj.Resolutions(i),' BackLight Off'));
            xlabel('Bitrate (kbps)'); % x-axis label
            ylabel('Watts '); % y-axis label
            [previousresolution, remain] = strtok(obj.Resolutions(i), 'x');
             obj.CurrentResolution=[]; 
            obj. Current_Watts_Backlight_On_Average_List2=[];
             obj.Current_Watts_Backlight_Off_Average_List2=[];
             obj.CurrentBitRate2=[];
        %Plotting the MAX - MIN - Average
        
        hold off
        waitfor(msgbox('Press OK to move to the next figure.'));

        
        subplot(2,3,1);

        plot(obj.Pixles_in_Resoultion_Max_On,obj.MAX_Resoultion_Watt_On, 'b+-');
        title('MAX bitrate of each resoultion ');
        set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
        xlabel('Pixels (w x h x F)'); % x-axis label
        ylabel('Watts '); % y-axis label
        grid on

        subplot(2,3,2);

        plot( obj.MAX_Resoultion_BitRate_On,obj.MAX_Resoultion_Watt_On, 'b+-');
        title('MAX bitrate of each resoultion ');
        set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
        xlabel('bitrate (kbps)'); % x-axis label
        ylabel('Watts '); % y-axis label
        grid on

        subplot(2,3,3);

        plot(obj.Pixles_in_Resoultion_Max_On,obj.Average_Resoultion_Watt_On, 'b+-');
        title('Median(middle) bitrate of each resoultion ');
        set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
        xlabel('Pixels (w x h x F)'); % x-axis label
        ylabel('Watts '); % y-axis label
        grid on

        subplot(2,3,4);

        plot( obj.Pixles_in_Resoultion_Max_On,obj.MIN_Resoultion_Watt_On,'b+-');
        title('MIN bitrate of each resoultion ');
        set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
        xlabel(' Pixels (w x h x F) '); % x-axis label
        ylabel('Watts '); % y-axis label
        grid on

        subplot(2,3,5);

        plot( obj.Pixles_in_Resoultion_Max_On,obj.Mean_Resolution_Watts_On,'b+-');
        title('Mean Watts of each resoultion ');
        set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
        xlabel(' Pixels (w x h x F) '); % x-axis label
        ylabel('Watts '); % y-axis label
        grid on  

          
          
      end
      
      function obj=plot3 (obj)
        waitfor(msgbox('Press OK to move to the next figure.'));

        
        %subplot(2,3,1);
        figure 
        plot(obj. AllPoints_Pixelrates,obj.AllPoints_Average_Watts, 'b+-');
        title('All Points ');
        set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
        xlabel('Pixels (w x h x F)'); % x-axis label
        ylabel('Watts '); % y-axis label
        grid on



 
      end
      
      function plot4 (obj)
         %
%Here you can put the code to plot the averages and what ever you want of
%graphs for all the qualities of the same sequence using
%Watts_Backlight_On_Average_List & Watts_Backlight_Off_Average_List lists
%of values
%{%}
n=BiteRates;
% matrix containing the time information length(SortedFileslist) for eachrow
xt = (seconds(t1)); 
xax= ([1:16:length(xt)])'; 
 xMat = repmat(xt, numel(BiteRates),1);
% matrix containing the constant y offset per column
y= n; 
 yMat = repmat(y, 1,numel(xt));
% data matrix containing the data series as columns 

z= Watts_Backlight_On_mat; 
% plot the data
% grid on
% xlabel('time')
% ylabel('bite rates')
% zlabel('watts'); 
%plot3(xax,y,z); 
%subplot(2,1,2);
 %plot3(xMat,yMat,z);


 
      end
      
   end%Methods Ends
end%Class End
%%












% clear all







 





   






