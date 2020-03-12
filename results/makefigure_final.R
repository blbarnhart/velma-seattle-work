##2020-02-10




setwd("E:/velma-seattle-work/results")
lon = read.csv('results_longfellow.csv')
tay = read.csv('results_taylor.csv')
tho = read.csv('results_thornton.csv')
pip = read.csv('results_pipers.csv')

lonfrac = 100*(lon-lon$base)/lon$base
tayfrac = 100*(tay-tay$base)/tay$base
thofrac = 100*(tho-tho$base)/tho$base
pipfrac = 100*(pip-pip$base)/pip$base

lonfrac$year = lon$year
tayfrac$year = tay$year
thofrac$year = tho$year
pipfrac$year = pip$year
labs = c("Base","Ext","Int","Ext","Int","Ext","Int","Ext","Int")

par(mfrow=c(2,2))
boxplot(tayfrac$base,
        tayfrac$ext1,
        tayfrac$int1,
        tayfrac$ext2,
        tayfrac$int2,
        tayfrac$ext3,
        tayfrac$int3,
        tayfrac$ext4,
        tayfrac$int4,
        col=c('white','gray'),ylim=c(-30,1),
        names = labs)
title('Taylor Creek')
mtext(expression(paste("% ",Delta," Total Annual Runoff")),side=2,2.2)
mtext("25% GRs",side=1,line=2.2,adj=0.2,cex=0.9)
mtext("50% GRs",side=1,line=2.2,adj=0.44,cex=0.9)
mtext("75% GRs",side=1,line=2.2,adj=0.68,cex=0.9)
mtext("100% GRs",side=1,line=2.2,adj=0.94,cex=0.9)
legend('topright',c("Extensive","Intensive"),fill=c("gray","white"),)

boxplot(thofrac$base,
        thofrac$ext1,
        thofrac$int1,
        thofrac$ext2,
        thofrac$int2,
        thofrac$ext3,
        thofrac$int3,
        thofrac$ext4,
        thofrac$int4,
        names=labs,col=c('white','gray'),xlab=c(''),ylim=c(-30,1))
title('Thornton Creek')
mtext(expression(paste("% ",Delta," Total Annual Runoff")),side=2,2.2)
mtext("25% GRs",side=1,line=2.2,adj=0.2,cex=0.9)
mtext("50% GRs",side=1,line=2.2,adj=0.44,cex=0.9)
mtext("75% GRs",side=1,line=2.2,adj=0.68,cex=0.9)
mtext("100% GRs",side=1,line=2.2,adj=0.94,cex=0.9)

boxplot(lonfrac$base,
        lonfrac$ext1,
        lonfrac$int1,
        lonfrac$ext2,
        lonfrac$int2,
        lonfrac$ext3,
        lonfrac$int3,
        lonfrac$ext4,
        lonfrac$int4,
        names=labs,col=c('white','gray'),xlab=c(''),ylim=c(-30,1)
)
title('Longfellow Creek')
mtext(expression(paste("% ",Delta," Total Annual Runoff")),side=2,2.2)
mtext("25% GRs",side=1,line=2.2,adj=0.2,cex=0.9)
mtext("50% GRs",side=1,line=2.2,adj=0.44,cex=0.9)
mtext("75% GRs",side=1,line=2.2,adj=0.68,cex=0.9)
mtext("100% GRs",side=1,line=2.2,adj=0.94,cex=0.9)

boxplot(pipfrac$base,
        pipfrac$ext1,
        pipfrac$int1,
        pipfrac$ext2,
        pipfrac$int2,
        pipfrac$ext3,
        pipfrac$int3,
        pipfrac$ext4,
        pipfrac$int4,
        names=labs,col=c('white','gray'),xlab=c(''),ylim=c(-30,1))
title('Pipers Creek')
mtext(expression(paste("% ",Delta," Total Annual Runoff")),side=2,2.2)
mtext("25% GRs",side=1,line=2.2,adj=0.2,cex=0.9)
mtext("50% GRs",side=1,line=2.2,adj=0.44,cex=0.9)
mtext("75% GRs",side=1,line=2.2,adj=0.68,cex=0.9)
mtext("100% GRs",side=1,line=2.2,adj=0.94,cex=0.9)



