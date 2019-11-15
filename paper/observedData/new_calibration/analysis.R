

out = read.csv("E:/Brad/AProjects/seattle/modelRuns/observedData/new_calibration/taylor_sta401.csv")

out$day =as.Date(as.character(out$date),format="%m/%d/%Y %H:%M")

dis = aggregate(out$dischargecfs,by=list(out$day),FUN=mean,na.rm=TRUE)


#convert from cfs to mm/day
dis$mm = dis$x * (60*60*24) * (0.028316846592) * (1/2933500) * 1000


#create per-year discharge mm/year
dis_year = aggregate(dis$mm,by=list(format(as.Date(dis$Group.1),'%Y')),FUN=sum,na.rm=TRUE)


#write output
write.csv(dis,"new_calibration/taylor_sta401_daily_cfs.csv",row.names=F)

