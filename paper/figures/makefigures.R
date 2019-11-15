## BLB 2018-12-07

#Set up workspace
rm(list=ls())
setwd("E:\\Brad\\AProjects\\seattle\\outputs\\outputs")

#Load simulation results. 
l_ext = read.csv('longfellow_annualresults_extensive.csv')
l_int = read.csv('longfellow_annualresults_intensive.csv')
l_ext = l_ext[2:length(l_ext$year),]
l_int = l_int[2:length(l_int$year),]
p_ext = read.csv('pipers_annualresults_extensive.csv')
p_int = read.csv('pipers_annualresults_intensive.csv')
p_ext = p_ext[2:length(p_ext$year),]
p_int = p_int[2:length(p_int$year),]
ta_ext = read.csv('taylor_annualresults_extensive.csv')
ta_int = read.csv('taylor_annualresults_intensive.csv')
ta_ext = ta_ext[2:length(ta_ext$year),]
ta_int = ta_int[2:length(ta_int$year),]
th_ext = read.csv('thornton_annualresults_extensive.csv')
th_int = read.csv('thornton_annualresults_intensive.csv')
th_ext = th_ext[2:length(th_ext$year),]
th_int = th_int[2:length(th_int$year),]

#Percentage Differences in Total Annual Flow
l_ext_frac0 = 100*((l_ext$scen0-l_ext$scen0) )
l_ext_frac25 = 100*((l_ext$scen1-l_ext$scen0) / l_ext$scen0)
l_ext_frac50 = 100*((l_ext$scen2-l_ext$scen0) / l_ext$scen0)
l_ext_frac75 = 100*((l_ext$scen3-l_ext$scen0) / l_ext$scen0)
l_ext_frac100 = 100*((l_ext$scen4-l_ext$scen0) / l_ext$scen0)

p_ext_frac0 = 100*((p_ext$scen0-p_ext$scen0) )
p_ext_frac25 = 100*((p_ext$scen1-p_ext$scen0) / p_ext$scen0)
p_ext_frac50 = 100*((p_ext$scen2-p_ext$scen0) / p_ext$scen0)
p_ext_frac75 = 100*((p_ext$scen3-p_ext$scen0) / p_ext$scen0)
p_ext_frac100 = 100*((p_ext$scen4-p_ext$scen0) / p_ext$scen0)

ta_ext_frac0 = 100*((ta_ext$scen0-ta_ext$scen0) )
ta_ext_frac25 = 100*((ta_ext$scen1-ta_ext$scen0) / ta_ext$scen0)
ta_ext_frac50 = 100*((ta_ext$scen2-ta_ext$scen0) / ta_ext$scen0)
ta_ext_frac75 = 100*((ta_ext$scen3-ta_ext$scen0) / ta_ext$scen0)
ta_ext_frac100 = 100*((ta_ext$scen4-ta_ext$scen0) / ta_ext$scen0)

th_ext_frac0 = 100*((th_ext$scen0-th_ext$scen0) )
th_ext_frac25 = 100*((th_ext$scen1-th_ext$scen0) / th_ext$scen0)
th_ext_frac50 = 100*((th_ext$scen2-th_ext$scen0) / th_ext$scen0)
th_ext_frac75 = 100*((th_ext$scen3-th_ext$scen0) / th_ext$scen0)
th_ext_frac100 = 100*((th_ext$scen4-th_ext$scen0) / th_ext$scen0)


#Percentage Differences in Total Annual Flow
l_int_frac0 = 100*((l_int$scen0-l_int$scen0) )
l_int_frac25 = 100*((l_int$scen1-l_int$scen0) / l_int$scen0)
l_int_frac50 = 100*((l_int$scen2-l_int$scen0) / l_int$scen0)
l_int_frac75 = 100*((l_int$scen3-l_int$scen0) / l_int$scen0)
l_int_frac100 = 100*((l_int$scen4-l_int$scen0) / l_int$scen0)

p_int_frac0 = 100*((p_int$scen0-p_int$scen0) )
p_int_frac25 = 100*((p_int$scen1-p_int$scen0) / p_int$scen0)
p_int_frac50 = 100*((p_int$scen2-p_int$scen0) / p_int$scen0)
p_int_frac75 = 100*((p_int$scen3-p_int$scen0) / p_int$scen0)
p_int_frac100 = 100*((p_int$scen4-p_int$scen0) / p_int$scen0)

ta_int_frac0 = 100*((ta_int$scen0-ta_int$scen0) )
ta_int_frac25 = 100*((ta_int$scen1-ta_int$scen0) / ta_int$scen0)
ta_int_frac50 = 100*((ta_int$scen2-ta_int$scen0) / ta_int$scen0)
ta_int_frac75 = 100*((ta_int$scen3-ta_int$scen0) / ta_int$scen0)
ta_int_frac100 = 100*((ta_int$scen4-ta_int$scen0) / ta_int$scen0)

th_int_frac0 = 100*((th_int$scen0-th_int$scen0) )
th_int_frac25 = 100*((th_int$scen1-th_int$scen0) / th_int$scen0)
th_int_frac50 = 100*((th_int$scen2-th_int$scen0) / th_int$scen0)
th_int_frac75 = 100*((th_int$scen3-th_int$scen0) / th_int$scen0)
th_int_frac100 = 100*((th_int$scen4-th_int$scen0) / th_int$scen0)


#par(mfrow=c(2,2))
#boxplot(l_int_frac0,  l_int_frac25, l_int_frac50, l_int_frac100,ylim=c(-30,0))
#boxplot(p_int_frac0,  p_int_frac25, p_int_frac50, p_int_frac100,ylim=c(-30,0))
#boxplot(ta_int_frac0,ta_int_frac25,ta_int_frac50,ta_int_frac100,ylim=c(-30,0))
#boxplot(th_int_frac0,th_int_frac25,th_int_frac50,th_int_frac100,ylim=c(-30,0))


par(mfrow=c(1,1))
boxplot(l_ext_frac0,  l_int_frac0,
        l_ext_frac25, l_int_frac25,
        l_ext_frac50, l_int_frac50,
        l_ext_frac75, l_int_frac75,
        l_ext_frac100,l_int_frac100,col=c('white','gray'),xlab=c(''),ylim=c(-40,0))
title('Longfellow Creek')
mtext("Percentage Differences of Total Annual Flow",side=2,2.2)
mtext("Ext",side=1,line=0.6,adj=0.065)
mtext("Int",side=1,line=0.6,adj=0.17)
mtext("Ext",side=1,line=0.6,adj=0.265)
mtext("Int",side=1,line=0.6,adj=0.36)
mtext("Ext",side=1,line=0.6,adj=0.45)
mtext("Int",side=1,line=0.6,adj=0.55)
mtext("Ext",side=1,line=0.6,adj=0.64)
mtext("Int",side=1,line=0.6,adj=0.74)
mtext("Ext",side=1,line=0.6,adj=0.84)
mtext("Int",side=1,line=0.6,adj=0.93)
mtext("0% GRs",side=1,line=1.8,adj=0.09)
mtext("25% GRs",side=1,line=1.8,adj=0.295)
mtext("50% GRs",side=1,line=1.8,adj=0.5025)
mtext("75% GRs",side=1,line=1.8,adj=0.71)
mtext("100% GRs",side=1,line=1.8,adj=0.94)


#par(mfrow=c(1,1))
boxplot(p_ext_frac0,  p_int_frac0,
        p_ext_frac25, p_int_frac25,
        p_ext_frac50, p_int_frac50,
        p_ext_frac75, p_int_frac75,
        p_ext_frac100,p_int_frac100,col=c('white','gray'),xlab=c(''),ylim=c(-40,0))
title('Pipers Creek')
mtext("Percentage Differences of Total Annual Flow",side=2,2.2)
mtext("Ext",side=1,line=0.6,adj=0.065)
mtext("Int",side=1,line=0.6,adj=0.17)
mtext("Ext",side=1,line=0.6,adj=0.265)
mtext("Int",side=1,line=0.6,adj=0.36)
mtext("Ext",side=1,line=0.6,adj=0.45)
mtext("Int",side=1,line=0.6,adj=0.55)
mtext("Ext",side=1,line=0.6,adj=0.64)
mtext("Int",side=1,line=0.6,adj=0.74)
mtext("Ext",side=1,line=0.6,adj=0.84)
mtext("Int",side=1,line=0.6,adj=0.93)
mtext("0% GRs",side=1,line=1.8,adj=0.09)
mtext("25% GRs",side=1,line=1.8,adj=0.295)
mtext("50% GRs",side=1,line=1.8,adj=0.5025)
mtext("75% GRs",side=1,line=1.8,adj=0.71)
mtext("100% GRs",side=1,line=1.8,adj=0.94)


#par(mfrow=c(1,1))
boxplot(ta_ext_frac0,  ta_int_frac0,
        ta_ext_frac25, ta_int_frac25,
        ta_ext_frac50, ta_int_frac50,
        ta_ext_frac75, ta_int_frac75,
        ta_ext_frac100,ta_int_frac100,col=c('white','gray'),xlab=c(''),ylim=c(-40,0))
title('Taylor Creek')
mtext("Percentage Differences of Total Annual Flow",side=2,2.2)
mtext("Ext",side=1,line=0.6,adj=0.065)
mtext("Int",side=1,line=0.6,adj=0.17)
mtext("Ext",side=1,line=0.6,adj=0.265)
mtext("Int",side=1,line=0.6,adj=0.36)
mtext("Ext",side=1,line=0.6,adj=0.45)
mtext("Int",side=1,line=0.6,adj=0.55)
mtext("Ext",side=1,line=0.6,adj=0.64)
mtext("Int",side=1,line=0.6,adj=0.74)
mtext("Ext",side=1,line=0.6,adj=0.84)
mtext("Int",side=1,line=0.6,adj=0.93)
mtext("0% GRs",side=1,line=1.8,adj=0.09)
mtext("25% GRs",side=1,line=1.8,adj=0.295)
mtext("50% GRs",side=1,line=1.8,adj=0.5025)
mtext("75% GRs",side=1,line=1.8,adj=0.71)
mtext("100% GRs",side=1,line=1.8,adj=0.94)


#par(mfrow=c(1,1))
boxplot(th_ext_frac0,  th_int_frac0,
        th_ext_frac25, th_int_frac25,
        th_ext_frac50, th_int_frac50,
        th_ext_frac75, th_int_frac75,
        th_ext_frac100,th_int_frac100,col=c('white','gray'),xlab=c(''),ylim=c(-40,20))
title('Thornton Creek')
mtext("Percentage Differences of Total Annual Flow",side=2,2.2)
mtext("Ext",side=1,line=0.6,adj=0.065)
mtext("Int",side=1,line=0.6,adj=0.17)
mtext("Ext",side=1,line=0.6,adj=0.265)
mtext("Int",side=1,line=0.6,adj=0.36)
mtext("Ext",side=1,line=0.6,adj=0.45)
mtext("Int",side=1,line=0.6,adj=0.55)
mtext("Ext",side=1,line=0.6,adj=0.64)
mtext("Int",side=1,line=0.6,adj=0.74)
mtext("Ext",side=1,line=0.6,adj=0.84)
mtext("Int",side=1,line=0.6,adj=0.93)
mtext("0% GRs",side=1,line=1.8,adj=0.09)
mtext("25% GRs",side=1,line=1.8,adj=0.295)
mtext("50% GRs",side=1,line=1.8,adj=0.5025)
mtext("75% GRs",side=1,line=1.8,adj=0.71)
mtext("100% GRs",side=1,line=1.8,adj=0.94)



