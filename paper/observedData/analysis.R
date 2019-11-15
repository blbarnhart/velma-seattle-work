

#Taylor simulated. 
simresults = read.csv("taylor_sim_1988-2015.csv")

obs = read.csv("taylor_obs_mmday_2004-2016.csv")

plot(as.Date(obs$dates,'%m/%d/%Y'),obs$mm.day,type='l',ylim=c(0,20))
lines(as.Date(simresults$Date,'%m/%d/%Y'),simresults$Sim,col='blue',xlim=c(as.Date('2004-1-1'),as.Date('2015-12-31')))


##
library(hydroGOF)

test = data.frame()

dates = as.Date(obs$dates[as.Date(obs$dates,'%m/%d/%Y') %in% as.Date(simresults$Date,'%m/%d/%Y')],'%m/%d/%Y')
o = obs$mm.day[as.Date(obs$dates,'%m/%d/%Y') %in% dates]

s = simresults$Sim[as.Date(simresults$Date,'%m/%d/%Y') %in% dates]

gof(sim=s,obs=o,dates=dates)