# install libraries
library(multtest)
outliers<-function(data, model, name){
studresid.data <- model$resid/sd(model$resid, na.rm=TRUE)  # standardize residuals
# re-scaled MAD
resi = cbind(residuals(model, type="response"))
median = median(resi, na.rm=TRUE)
median
MAD=median((abs(resi-median)), na.rm=TRUE)
re_MAD=MAD*1.4828
# MAD standardized residuals
res_MAD=resi/re_MAD
# Calculate adjusted p-values
rawp.BHStud = 2 * (1 - pnorm(abs(res_MAD))) #Combine the dataset, the residuals and the adjusted p-values 
rawp.BHStud.all <- cbind(data, studresid.data, rawp.BHStud)

#Produce a Bonferroni-Holm tests for the adjusted p-values 
#The output is a list
test.BHStud <- mt.rawp2adjp(rawp.BHStud,proc=c("Holm"))                  # multiple test Bonferoni-Holm
#Create vectors/matrices out of the list of the BH tests
adjp = cbind(test.BHStud[[1]][,1])                                     
bholm = cbind(test.BHStud[[1]][,2])                                    # significance level
index = cbind(test.BHStud[[2]])                                        # record number
# Condition to flag outliers according to the BH test 

out_flag = ifelse(bholm<0.05, "OUTLIER", ".")                         # mark outliers

#Create a matrix with all the output of the BH test 

BHStud_test = cbind(adjp,bholm,index,out_flag)

#Order the file by index

BHStud_test2 = BHStud_test[order(index),]

#Label colums

names = c("rawp","bholm","index",name)

colnames(BHStud_test2) <- names

#Create a final file, with the data and the test and the labels for the outliers
outlier.data<- cbind(rawp.BHStud.all, BHStud_test2)
remove.columns<- c("e","rawp.BHStud", "rawp", "bholm", "index")
outlier.data<-outlier.data[, !(colnames(outlier.data) %in% remove.columns)]
return(outlier.data)
# Take a look at the outliers 
#outliers_BH <- total.m2_data[which(total.m2_data$out_flag!="."),]
#write.table(outliers_BH, "Outliers_FT.txt")   # save the data to a new file, and name  differently according to different traits.

#Data.corrected.FT <- total.m2_data[which(total.m2_data$out_flag=="."),1:3]
#write.table(Data.corrected.FT, "Data.corrected.FT.txt")   # save the data to a new file, and name  differently according to different traits.
}


