

function [median_wo] = MedianWithoutOutlier(listofvalues,ALPHA,REP)

 [B,idx,outliers]=deleteoutliers(listofvalues, ALPHA, REP);
 
 median_wo=median(listofvalues);

end