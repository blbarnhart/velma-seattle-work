
rm(list=ls())



######## ANNUAL 

rm(list=ls())
par(mfrow=c(2,2))

#Taylor Creek
setwd("E:/velma-seattle-work/taylor_setup_files/outputs/scen4_calibrated_taylor_28yr_ext_hc/")
out = read.csv('AnnualResults.csv')
temp = out[out$Annual_Result == "ANNUAL_SUM" & out$Year != 1987,]

setwd("E:/velma-seattle-work/taylor_setup_files/outputs/scen0_calibrated_taylor_28yr_base_handCalibrated/")
base = read.csv('AnnualResults.csv')
basetemp = base[base$Annual_Result == "ANNUAL_SUM" & base$Year != 1987,]

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
plot(temp$Rain.mm.day._Delineated_Average,rdiff,ylim=c(-40,2),pch=19,
     main='Taylor Creek',xlab = "Total Annual Precipitation (mm)",ylab=expression(paste("% ",Delta," Total Annual Runoff")))
legend('topleft',c("Extensive","Intensive"),pch=c(19,1))
abline(lm(rdiff~temp$Rain.mm.day._Delineated_Average))


setwd("E:/velma-seattle-work/taylor_setup_files/outputs/scen4_calibrated_taylor_28yr_int_hc/")
out = read.csv('AnnualResults.csv')
temp = out[out$Annual_Result == "ANNUAL_SUM" & out$Year != 1987,]

setwd("E:/velma-seattle-work/taylor_setup_files/outputs/scen0_calibrated_taylor_28yr_base_handCalibrated/")
base = read.csv('AnnualResults.csv')
basetemp = base[base$Annual_Result == "ANNUAL_SUM" & base$Year != 1987,]

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
points(temp$Rain.mm.day._Delineated_Average,rdiff,ylim=c(-40,2))
abline(lm(rdiff~temp$Rain.mm.day._Delineated_Average))




#Thornton Creek
setwd("E:/velma-seattle-work/thornton_setup_files/outputs/scen4_caliibrated_thornton_28yr_ext_hc/")
out = read.csv('AnnualResults.csv')
temp = out[out$Annual_Result == "ANNUAL_SUM" & out$Year != 1987,]

setwd("E:/velma-seattle-work/thornton_setup_files/outputs/scen0_calibrated_thornton_28yr_base_hc/")
base = read.csv('AnnualResults.csv')
basetemp = base[base$Annual_Result == "ANNUAL_SUM" & base$Year != 1987,]

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
plot(temp$Rain.mm.day._Delineated_Average,rdiff,ylim=c(-40,2),pch=19,
     main='Thornton Creek',xlab = "Total Annual Precipitation (mm)",ylab=expression(paste("% ",Delta," Total Annual Runoff")))
abline(lm(rdiff~temp$Rain.mm.day._Delineated_Average))

setwd("E:/velma-seattle-work/thornton_setup_files/outputs/scen4_calibrated_thornton_28yr_int_hc/")
out = read.csv('AnnualResults.csv')
temp = out[out$Annual_Result == "ANNUAL_SUM" & out$Year != 1987,]

setwd("E:/velma-seattle-work/thornton_setup_files/outputs/scen0_calibrated_thornton_28yr_base_hc/")
base = read.csv('AnnualResults.csv')
basetemp = base[base$Annual_Result == "ANNUAL_SUM" & base$Year != 1987,]

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
points(temp$Rain.mm.day._Delineated_Average,rdiff,ylim=c(-40,2))
abline(lm(rdiff~temp$Rain.mm.day._Delineated_Average))


#Longfellow Creek
setwd("E:/velma-seattle-work/longfellow_setup_files/outputs/scen4_28yr_server_longfellow_soilcover_params_ext_hc//")
out = read.csv('AnnualResults.csv')
temp = out[out$Annual_Result == "ANNUAL_SUM" & out$Year != 1987,]

setwd("E:/velma-seattle-work/longfellow_setup_files/outputs/scen0_28yr_server_longfellow_hc//")
base = read.csv('AnnualResults.csv')
basetemp = base[base$Annual_Result == "ANNUAL_SUM" & base$Year != 1987,]

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
plot(temp$Rain.mm.day._Delineated_Average,rdiff,ylim=c(-40,2),pch=19,
     main='Longfellow Creek',xlab = "Total Annual Precipitation (mm)",ylab=expression(paste("% ",Delta," Total Annual Runoff")))
abline(lm(rdiff~temp$Rain.mm.day._Delineated_Average))

setwd("E:/velma-seattle-work/longfellow_setup_files/outputs/scen4_28yr_server_longfellow_soilcover_int_hc//")
out = read.csv('AnnualResults.csv')
temp = out[out$Annual_Result == "ANNUAL_SUM" & out$Year != 1987,]

setwd("E:/velma-seattle-work/longfellow_setup_files/outputs/scen0_28yr_server_longfellow_hc//")
base = read.csv('AnnualResults.csv')
basetemp = base[base$Annual_Result == "ANNUAL_SUM" & base$Year != 1987,]

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
points(temp$Rain.mm.day._Delineated_Average,rdiff,ylim=c(-40,2))
abline(lm(rdiff~temp$Rain.mm.day._Delineated_Average))


#Pipers Creek
setwd("E:/velma-seattle-work/pipers_setup_files/outputs/scen4_calibrated_pipers_28yr_ext_hc/")
out = read.csv('AnnualResults.csv')
temp = out[out$Annual_Result == "ANNUAL_SUM" & out$Year != 1987,]

setwd("E:/velma-seattle-work/pipers_setup_files/outputs/scen0_calibrated_pipers_28yr_base_handcalibTest//")
base = read.csv('AnnualResults.csv')
basetemp = base[base$Annual_Result == "ANNUAL_SUM" & base$Year != 1987,]

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
plot(temp$Rain.mm.day._Delineated_Average,rdiff,ylim=c(-40,2),pch=19,
     main='Pipers Creek',xlab = "Total Annual Precipitation (mm)",ylab=expression(paste("% ",Delta," Total Annual Runoff")))
abline(lm(rdiff~temp$Rain.mm.day._Delineated_Average))

setwd("E:/velma-seattle-work/pipers_setup_files/outputs/scen4_calibrated_pipers_28yr_int_hc/")
out = read.csv('AnnualResults.csv')
temp = out[out$Annual_Result == "ANNUAL_SUM" & out$Year != 1987,]

setwd("E:/velma-seattle-work/pipers_setup_files/outputs/scen0_calibrated_pipers_28yr_base_handcalibTest/")
base = read.csv('AnnualResults.csv')
basetemp = base[base$Annual_Result == "ANNUAL_SUM" & base$Year != 1987,]

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
points(temp$Rain.mm.day._Delineated_Average,rdiff,ylim=c(-40,2))
abline(lm(rdiff~temp$Rain.mm.day._Delineated_Average))








































#intensive only 

par(mfrow=c(4,2))
#Taylor Creek
setwd("E:/velma-seattle-work/taylor_setup_files/outputs/scen4_calibrated_taylor_28yr_int_hc/")
out = read.csv('DailyResults.csv')
temp = out[out$Year!=1987,] 
plot(temp$Rain.mm.day._Delineated_Average,temp$Runoff_All.mm.day._Delineated_Average,log='xy',
       ylab="Daily Runoff (mm)",xlab="Daily Precipitation (mm)",col='gray',pch=19,cex=0.6)
title("Taylor Creek")

setwd("E:/velma-seattle-work/taylor_setup_files/outputs/scen0_calibrated_taylor_28yr_base_handCalibrated/")
base = read.csv('DailyResults.csv')
basetemp = base[base$Year!=1987,]
points(basetemp$Rain.mm.day._Delineated_Average,basetemp$Runoff_All.mm.day._Delineated_Average,log='xy',
     ylab="Daily Runoff",xlab="Daily Precipitation",pch=19,cex=0.6)
legend('topleft',c("Baseline","100% Intensive GRs"),pch=19,cex=0.9,col=c("black","gray"))

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
plot(temp$Rain.mm.day._Delineated_Average,rdiff,log='x',
     ylab="% Difference",xlab="Daily Precipitation (mm)",pch=19,cex=0.6,ylim=c(-40,0))
title("Taylor Creek")

#Thornton Creek
setwd("E:/velma-seattle-work/thornton_setup_files/outputs/scen4_calibrated_thornton_28yr_int_hc/")
out = read.csv('DailyResults.csv')
temp = out[out$Year!=1987,] 
plot(temp$Rain.mm.day._Delineated_Average,temp$Runoff_All.mm.day._Delineated_Average,log='xy',
     ylab="Daily Runoff (mm)",xlab="Daily Precipitation (mm)",col='gray',pch=19,cex=0.6)
title("Thornton Creek")

setwd("E:/velma-seattle-work/thornton_setup_files/outputs/scen0_calibrated_thornton_28yr_base_hc/")
base = read.csv('DailyResults.csv')
basetemp = base[base$Year!=1987,]
points(basetemp$Rain.mm.day._Delineated_Average,basetemp$Runoff_All.mm.day._Delineated_Average,log='xy',
       ylab="Daily Runoff",xlab="Daily Precipitation",pch=19,cex=0.6)
legend('topleft',c("Baseline","100% Intensive GRs"),pch=19,cex=0.9,col=c("black","gray"))

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
plot(temp$Rain.mm.day._Delineated_Average,rdiff,log='x',
     ylab="% Difference",xlab="Daily Precipitation (mm)",pch=19,cex=0.6,ylim=c(-40,0))
title("Thornton Creek")



#Longfellow Creek
setwd("E:/velma-seattle-work/longfellow_setup_files/outputs/scen4_28yr_server_longfellow_soilcover_int_hc/")
out = read.csv('DailyResults.csv')
temp = out[out$Year!=1987,] 
plot(temp$Rain.mm.day._Delineated_Average,temp$Runoff_All.mm.day._Delineated_Average,log='xy',
     ylab="Daily Runoff (mm)",xlab="Daily Precipitation (mm)",col='gray',pch=19,cex=0.6)
title("Longfellow Creek")

setwd("E:/velma-seattle-work/longfellow_setup_files/outputs/scen0_28yr_server_longfellow_hc/")
base = read.csv('DailyResults.csv')
basetemp = base[base$Year!=1987,]
points(basetemp$Rain.mm.day._Delineated_Average,basetemp$Runoff_All.mm.day._Delineated_Average,log='xy',
       ylab="Daily Runoff",xlab="Daily Precipitation",pch=19,cex=0.6)
legend('topleft',c("Baseline","100% Intensive GRs"),pch=19,cex=0.9,col=c("black","gray"))

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
plot(temp$Rain.mm.day._Delineated_Average,rdiff,log='x',
     ylab="% Difference",xlab="Daily Precipitation (mm)",pch=19,cex=0.6,ylim=c(-40,0))
title("Longfellow Creek")



#Pipers Creek
setwd("E:/velma-seattle-work/pipers_setup_files/outputs/scen4_calibrated_pipers_28yr_int_hc//")
out = read.csv('DailyResults.csv')
temp = out[out$Year!=1987,] 
plot(temp$Rain.mm.day._Delineated_Average,temp$Runoff_All.mm.day._Delineated_Average,log='xy',
     ylab="Daily Runoff (mm)",xlab="Daily Precipitation (mm)",col='gray',pch=19,cex=0.6)
title("Pipers Creek")

setwd("E:/velma-seattle-work/pipers_setup_files/outputs/scen0_calibrated_pipers_28yr_base_handcalibTest//")
base = read.csv('DailyResults.csv')
basetemp = base[base$Year!=1987,]
points(basetemp$Rain.mm.day._Delineated_Average,basetemp$Runoff_All.mm.day._Delineated_Average,log='xy',
       ylab="Daily Runoff",xlab="Daily Precipitation",pch=19,cex=0.6)
legend('topleft',c("Baseline","100% Intensive GRs"),pch=19,cex=0.9,col=c("black","gray"))

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
plot(temp$Rain.mm.day._Delineated_Average,rdiff,log='x',
     ylab="% Difference",xlab="Daily Precipitation (mm)",pch=19,cex=0.6,ylim=c(-40,0))
title("Pipers Creek")
































#extensive only 

par(mfrow=c(4,2))
#Taylor Creek
setwd("E:/velma-seattle-work/taylor_setup_files/outputs/scen4_calibrated_taylor_28yr_ext_hc/")
out = read.csv('DailyResults.csv')
temp = out[out$Year!=1987,] 
plot(temp$Rain.mm.day._Delineated_Average,temp$Runoff_All.mm.day._Delineated_Average,log='xy',
     ylab="Daily Runoff (mm)",xlab="Daily Precipitation (mm)",col='gray',pch=19,cex=0.6)
title("Taylor Creek")

setwd("E:/velma-seattle-work/taylor_setup_files/outputs/scen0_calibrated_taylor_28yr_base_handCalibrated/")
base = read.csv('DailyResults.csv')
basetemp = base[base$Year!=1987,]
points(basetemp$Rain.mm.day._Delineated_Average,basetemp$Runoff_All.mm.day._Delineated_Average,log='xy',
       ylab="Daily Runoff",xlab="Daily Precipitation",pch=19,cex=0.6,xlim=c(0,50))
legend('topleft',c("Baseline","100% Extensive GRs"),pch=19,cex=0.9,col=c("black","gray"))

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
plot(temp$Rain.mm.day._Delineated_Average,rdiff,log='x',
     ylab="% Difference",xlab="Daily Precipitation (mm)",pch=19,cex=0.6)
title('Taylor Creek')

#Thornton Creek
setwd("E:/velma-seattle-work/thornton_setup_files/outputs/scen4_caliibrated_thornton_28yr_ext_hc/")
out = read.csv('DailyResults.csv')
temp = out[out$Year!=1987,] 
plot(temp$Rain.mm.day._Delineated_Average,temp$Runoff_All.mm.day._Delineated_Average,log='xy',
     ylab="Daily Runoff (mm)",xlab="Daily Precipitation (mm)",col='gray',pch=19,cex=0.6)
title("Thornton Creek")

setwd("E:/velma-seattle-work/thornton_setup_files/outputs/scen0_calibrated_thornton_28yr_base_hc/")
base = read.csv('DailyResults.csv')
basetemp = base[base$Year!=1987,]
points(basetemp$Rain.mm.day._Delineated_Average,basetemp$Runoff_All.mm.day._Delineated_Average,log='xy',
       ylab="Daily Runoff",xlab="Daily Precipitation",pch=19,cex=0.6)
legend('topleft',c("Baseline","100% Extensive GRs"),pch=19,cex=0.9,col=c("black","gray"))

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
plot(temp$Rain.mm.day._Delineated_Average,rdiff,log='x',
     ylab="% Difference",xlab="Daily Precipitation (mm)",pch=19,cex=0.6)
title("Thornton Creek")



#Longfellow Creek
setwd("E:/velma-seattle-work/longfellow_setup_files/outputs/scen4_28yr_server_longfellow_soilcover_params_ext_hc/")
out = read.csv('DailyResults.csv')
temp = out[out$Year!=1987,] 
plot(temp$Rain.mm.day._Delineated_Average,temp$Runoff_All.mm.day._Delineated_Average,log='xy',
     ylab="Daily Runoff (mm)",xlab="Daily Precipitation (mm)",col='gray',pch=19,cex=0.6)
title("Longfellow Creek")

setwd("E:/velma-seattle-work/longfellow_setup_files/outputs/scen0_28yr_server_longfellow_hc/")
base = read.csv('DailyResults.csv')
basetemp = base[base$Year!=1987,]
points(basetemp$Rain.mm.day._Delineated_Average,basetemp$Runoff_All.mm.day._Delineated_Average,log='xy',
       ylab="Daily Runoff",xlab="Daily Precipitation",pch=19,cex=0.6)
legend('topleft',c("Baseline","100% Extensive GRs"),pch=19,cex=0.9,col=c("black","gray"))

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
plot(temp$Rain.mm.day._Delineated_Average,rdiff,log='x',
     ylab="% Difference",xlab="Daily Precipitation (mm)",pch=19,cex=0.6)
title("Longfellow Creek")



#Pipers Creek
setwd("E:/velma-seattle-work/pipers_setup_files/outputs/scen4_calibrated_pipers_28yr_ext_hc//")
out = read.csv('DailyResults.csv')
temp = out[out$Year!=1987,] 
plot(temp$Rain.mm.day._Delineated_Average,temp$Runoff_All.mm.day._Delineated_Average,log='xy',
     ylab="Daily Runoff (mm)",xlab="Daily Precipitation (mm)",col='gray',pch=19,cex=0.6)
title("Pipers Creek")

setwd("E:/velma-seattle-work/pipers_setup_files/outputs/scen0_calibrated_pipers_28yr_base_handcalibTest//")
base = read.csv('DailyResults.csv')
basetemp = base[base$Year!=1987,]
points(basetemp$Rain.mm.day._Delineated_Average,basetemp$Runoff_All.mm.day._Delineated_Average,log='xy',
       ylab="Daily Runoff",xlab="Daily Precipitation (mm)",pch=19,cex=0.6)
legend('topleft',c("Baseline","100% Extensive GRs"),pch=19,cex=0.9,col=c("black","gray"))

rdiff = 100*(temp$Runoff_All.mm.day._Delineated_Average - basetemp$Runoff_All.mm.day._Delineated_Average)/basetemp$Runoff_All.mm.day._Delineated_Average
plot(temp$Rain.mm.day._Delineated_Average,rdiff,log='x',
     ylab="% Difference",xlab="Daily Precip (mm)",pch=19,cex=0.6)
title("Pipers Creek")





#Taylor
setwd("E:/velma-seattle-work/taylor_setup_files/outputs/scen0_calibrated_taylor_28yr_base_handCalibrated/")
base = read.csv('DailyResults.csv')
basetemp = base[base$Year!=1987,]

test = c("E:/velma-seattle-work/taylor_setup_files/outputs/scen1_calibrated_taylor_28yr_int_hc/",
         "E:/velma-seattle-work/taylor_setup_files/outputs/scen2_calibrated_taylor_28yr_int_hc/",
         "E:/velma-seattle-work/taylor_setup_files/outputs/scen3_calibrated_taylor_28yr_int_hc/",
         "E:/velma-seattle-work/taylor_setup_files/outputs/scen4_calibrated_taylor_28yr_int_hc/",
         "E:/velma-seattle-work/taylor_setup_files/outputs/scen1_calibrated_taylor_28yr_ext_hc/",
         "E:/velma-seattle-work/taylor_setup_files/outputs/scen2_calibrated_taylor_28yr_ext_hc/",
         "E:/velma-seattle-work/taylor_setup_files/outputs/scen3_calibrated_taylor_28yr_ext_hc/",
         "E:/velma-seattle-work/taylor_setup_files/outputs/scen4_calibrated_taylor_28yr_ext_hc/")
#Cross-correlation 
par(mfrow=c(3,3))
for (i in 1:8) {
        
#Taylor Creek
setwd(test[i])
out = read.csv('DailyResults.csv')
sim = out[out$Year!=1987,] 

ccf(sim$Runoff_All.mm.day._Delineated_Average,basetemp$Runoff_All.mm.day._Delineated_Average)
}


#Thornton
setwd("E:/velma-seattle-work/thornton_setup_files/outputs/scen0_calibrated_thornton_28yr_base_hc/")
base = read.csv('DailyResults.csv')
basetemp = base[base$Year!=1987,]

test = c("E:/velma-seattle-work/thornton_setup_files/outputs/scen1_calibrated_thornton_28yr_ext_hc/",
         "E:/velma-seattle-work/taylor_setup_files/outputs/scen2_calibrated_taylor_28yr_int_hc/",
         "E:/velma-seattle-work/taylor_setup_files/outputs/scen3_calibrated_taylor_28yr_int_hc/",
         "E:/velma-seattle-work/taylor_setup_files/outputs/scen4_calibrated_taylor_28yr_int_hc/")
#Cross-correlation 
par(mfrow=c(2,2))
for (i in 1:4) {
        
        #Taylor Creek
        setwd(test[i])
        out = read.csv('DailyResults.csv')
        sim = out[out$Year!=1987,] 
        
        ccf(sim$Runoff_All.mm.day._Delineated_Average,basetemp$Runoff_All.mm.day._Delineated_Average)
}



