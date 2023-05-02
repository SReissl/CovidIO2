library(matrixStats)
params<-as.numeric(read.csv("Final/Estimation2020/estimatedParams.csv",header=TRUE))
rounds=80
source("Model.R")
IO<-readRDS("IO_spese.rds")
measures<-readRDS("measures_spese.rds")
cons_coeff<- readRDS("coefficienti_consumo.RDS")
mobility<-as.data.frame(read.csv("weeklyMobilityLong.csv",header=TRUE,row.names = 1))
mobility<-mobility[,2:21]
ExpService<-as.data.frame(read.csv("ExportsServices2020.csv",header = FALSE))
ExpSectoral<-as.data.frame(read.csv("ExportsSectoral2020_deflated.csv",header = TRUE))
LD<-read.csv("shocks_empirical.csv")
LD2<-read.csv("shocks_scenario.csv")
scenario=1
nodemand1=1
nodemand2=1

result<-runModel(IO,measures,cons_coeff,params,rounds,LD,LD2,scenario,ExpService,ExpSectoral,mobility,nodemand1,nodemand2)

losses<-result[[1]]
prod_sectors<-result[[2]]
prod_sectors_q<-result[[3]]
Expenditure_sim<-result[[4]]
GDP_q<-result[[5]]
Expenditure_sim_abs<-result[[6]]
GDP<-result[[7]]
Consumption<-result[[8]]
Investment<-result[[9]]
prod_regions<-result[[10]]
prod_sectors2<-result[[11]]
intensity11<-result[[12]]
intensity12<-result[[13]]
intensity21<-result[[14]]
intensity22<-result[[15]]
bottlenecks<-result[[16]]
delivered<-result[[17]]
capSectors<-result[[18]]
capRegions<-result[[19]]
GDP_reg<-result[[20]]
GDP_mreg<-result[[21]]
demandTotal<-result[[22]]
demandRegions<-result[[23]]
demandSectors<-result[[24]]
producibleTotal<-result[[25]]
producibleRegions<-result[[26]]
producibleSectors<-result[[27]]
consInfTotal<-result[[28]]
consHTotal<-result[[29]]
consInfRegions<-result[[30]]
consHRegions<-result[[31]]
consInfSectors<-result[[32]]
consHSectors<-result[[33]]
ratioTotal<-result[[34]]
ratioDemandTotal<-result[[35]]
ratioRegions<-result[[36]]
ratioDemandRegions<-result[[37]]
ratioSectors<-result[[38]]
ratioDemandSectors<-result[[39]]
GDPShocks<-result[[40]]
outputShocks<-result[[41]]
outputShocksRegions<-result[[42]]
outputShocksSectors<-result[[43]]
ratioShocks<-result[[44]]
ratioShocksRegions<-result[[45]]
ratioShocksSectors<-result[[46]]
outputTotal<-result[[47]]