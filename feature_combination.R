#training_set_VU_DM
setwd("~/Documents/Vrije Universiteit/Period 5/Data Mining/Assignments/assignment_02")
data=read.csv(file="training_set_VU_DM.csv",header=TRUE)
data <- as.data.frame(data)

#head(data)
#summary(data)


data$srch_id <- as.factor(data$srch_id) #Set srch_id as factor, not numerical
data$site_id <- as.factor(data$site_id) #Set srch_id as factor, not numerical
data$visitor_location_country_id <- as.factor(data$visitor_location_country_id) #Set srch_id as factor, not numerical
data$visitor_hist_adr_usd <- as.factor(data$visitor_hist_adr_usd) #Set srch_id as factor, not numerical
data$prop_country_id <- as.factor(data$prop_country_id) #Set srch_id as factor, not numerical
data$prop_id <- as.factor(data$prop_id) #Set srch_id as factor, not numerical
data$prop_brand_bool <- as.factor(data$prop_brand_bool) #Set srch_id as factor, not numerical
data$promotion_flag <- as.factor(data$promotion_flag) #Set srch_id as factor, not numerical
data$srch_destination_id <- as.factor(data$srch_destination_id) #Set srch_id as factor, not numerical
data$srch_saturday_night_bool <- as.factor(data$srch_saturday_night_bool) #Set srch_id as factor, not numerical
data$random_bool <- as.factor(data$random_bool) #Set srch_id as factor, not numerical
data$comp1_rate <- as.factor(data$comp1_rate) #Set srch_id as factor, not numerical
data$comp1_inv <- as.factor(data$comp1_inv) #Set srch_id as factor, not numerical
data$comp2_rate <- as.factor(data$comp2_rate) #Set srch_id as factor, not numerical
data$comp2_inv <- as.factor(data$comp2_inv) #Set srch_id as factor, not numerical
data$comp3_rate <- as.factor(data$comp3_rate) #Set srch_id as factor, not numerical
data$comp3_inv <- as.factor(data$comp3_inv) #Set srch_id as factor, not numerical
data$comp4_rate <- as.factor(data$comp4_rate) #Set srch_id as factor, not numerical
data$comp4_inv <- as.factor(data$comp4_inv) #Set srch_id as factor, not numerical
data$comp5_rate <- as.factor(data$comp5_rate) #Set srch_id as factor, not numerical
data$comp5_inv <- as.factor(data$comp5_inv) #Set srch_id as factor, not numerical
data$comp6_rate <- as.factor(data$comp6_rate) #Set srch_id as factor, not numerical
data$comp6_inv <- as.factor(data$comp6_inv) #Set srch_id as factor, not numerical
data$comp7_rate <- as.factor(data$comp7_rate) #Set srch_id as factor, not numerical
data$comp7_inv <- as.factor(data$comp7_inv) #Set srch_id as factor, not numerical
data$comp8_rate <- as.factor(data$comp8_rate) #Set srch_id as factor, not numerical
data$comp8_inv <- as.factor(data$comp8_inv) #Set srch_id as factor, not numerical
#data$click_bool <- as.factor(data$click_bool) #Set srch_id as factor, not numerical
#data$booking_bool <- as.factor(data$booking_bool) #Set srch_id as factor, not numerical

#This just goves 0
#print(NULL+1+1)

#convert values to 0
#https://stackoverflow.com/questions/30875311/how-to-correctly-convert-null-variables-to-0-in-an-r-table
#b[b=='NULL'] <- 0




data2=data

# 
#   ###Convert Null values of comp_rate columns
# 
# #Converet multiple columns' NA into value
# #https://stackoverflow.com/questions/39367406/setting-multiple-columns-nas-to-value-r
# 
# data <- data.table(a = c(2, NA, 3, 5), b = c(NA,2,3,4), c = c(2,5,NA, 6))
# fix_columns <- c('a','b')    
# fix_fun <- function(x) ifelse(is.na(x), 0 , x)
# 
# data[,(fix_columns):=lapply(.SD, fix_fun), .SDcols=fix_columns]
# 



# #Not working, replaced later on
# 
# 	
# fix_columns <- c('comp1_rate','comp2_rate','comp3_rate','comp4_rate','comp5_rate','comp6_rate','comp7_rate','comp8_rate')    
# fix_fun <- function(x) ifelse(is.na(x), 0 , x)#!!!!!!!!!! <-- Not working
# 
# 
# 
# #This only works for tables, so we first convert
# #https://stackoverflow.com/questions/72527107/r-unused-arguments-in-lapply
# #data2[,(fix_columns):=lapply(.SD, fix_fun), .SDcols=fix_columns]
# 
# library(data.table)
# setDT(data2)  #convert the ata2 to table
# data2[,(fix_columns):=lapply(.SD, fix_fun), .SDcols=fix_columns] #Moduify null values #!!!!!!!!!! <-- Not working GIves back '4' for some reason
# 
# #convert Back to frame
# data2 = as.data.frame(data2)




data2$comp1_rate[data2$comp1_rate=='NULL'] <- 0
data2$comp2_rate[data2$comp2_rate=='NULL'] <- 0
data2$comp3_rate[data2$comp3_rate=='NULL'] <- 0
data2$comp4_rate[data2$comp4_rate=='NULL'] <- 0
data2$comp5_rate[data2$comp5_rate=='NULL'] <- 0
data2$comp6_rate[data2$comp6_rate=='NULL'] <- 0
data2$comp7_rate[data2$comp7_rate=='NULL'] <- 0
data2$comp8_rate[data2$comp8_rate=='NULL'] <- 0


#To be summed, it needs to be numeric
data2$comp1_rate <- as.numeric(data2$comp1_rate) #Set srch_id as factor, not numerical
data2$comp2_rate <- as.numeric(data2$comp2_rate) #Set srch_id as factor, not numerical
data2$comp3_rate <- as.numeric(data2$comp3_rate) #Set srch_id as factor, not numerical
data2$comp4_rate <- as.numeric(data2$comp4_rate) #Set srch_id as factor, not numerical
data2$comp5_rate <- as.numeric(data2$comp5_rate) #Set srch_id as factor, not numerical
data2$comp6_rate <- as.numeric(data2$comp6_rate) #Set srch_id as factor, not numerical
data2$comp7_rate <- as.numeric(data2$comp7_rate) #Set srch_id as factor, not numerical
data2$comp8_rate <- as.numeric(data2$comp8_rate) #Set srch_id as factor, not numerical


#Sum up the values
#https://stackoverflow.com/questions/3991905/sum-rows-in-data-frame-or-matrix
#data2$comp_rate=rowSums( data[,comp1_rate,comp2_rate] )
#https://www.geeksforgeeks.org/sum-of-two-or-multiple-dataframe-columns-in-r/
data2$comp_rate_basic=rowSums(data2[, c('comp1_rate','comp2_rate','comp3_rate','comp4_rate','comp5_rate','comp6_rate','comp7_rate','comp8_rate'), drop = FALSE]) #add drop = FALSE to avoid dimensional error #<-- Only this line is used
#https://stackoverflow.com/questions/46303057/colsums-in-r-x-must-be-an-array-of-at-least-two-dimensions
#data2$comp_rate=colSums(data[ , c('comp1_rate','comp2_rate','comp3_rate'), drop = FALSE])



#When converting factor to numeric, the value -1 becomes 1, 0-->2, 1-->3 shifting everything two steps up and removing the negative value
#We do the following to shift them down
data2$comp1_rate=(data2$comp1_rate-2)
data2$comp2_rate=(data2$comp2_rate-2)
data2$comp3_rate=(data2$comp3_rate-2)
data2$comp4_rate=(data2$comp4_rate-2)
data2$comp5_rate=(data2$comp5_rate-2)
data2$comp6_rate=(data2$comp6_rate-2)
data2$comp7_rate=(data2$comp7_rate-2)
data2$comp8_rate=(data2$comp8_rate-2)


data2$comp_rate=rowSums(data2[, c('comp1_rate','comp2_rate','comp3_rate','comp4_rate','comp5_rate','comp6_rate','comp7_rate','comp8_rate'), drop = FALSE]) #add drop = FALSE to avoid dimensional error




#Now we shift rthe values to -1(original)-->0, 0(original)-->1, 1(original)-->2
#We do the following to shift them down
data2$comp1_rate=(data2$comp1_rate+1)
data2$comp2_rate=(data2$comp2_rate+1)
data2$comp3_rate=(data2$comp3_rate+1)
data2$comp4_rate=(data2$comp4_rate+1)
data2$comp5_rate=(data2$comp5_rate+1)
data2$comp6_rate=(data2$comp6_rate+1)
data2$comp7_rate=(data2$comp7_rate+1)
data2$comp8_rate=(data2$comp8_rate+1)


data2$comp_rate_shifted1=rowSums(data2[, c('comp1_rate','comp2_rate','comp3_rate','comp4_rate','comp5_rate','comp6_rate','comp7_rate','comp8_rate'), drop = FALSE]) #add drop = FALSE to avoid dimensional error


#Set them back to original values
data2$comp1_rate=(data2$comp1_rate-1)
data2$comp2_rate=(data2$comp2_rate-1)
data2$comp3_rate=(data2$comp3_rate-1)
data2$comp4_rate=(data2$comp4_rate-1)
data2$comp5_rate=(data2$comp5_rate-1)
data2$comp6_rate=(data2$comp6_rate-1)
data2$comp7_rate=(data2$comp7_rate-1)
data2$comp8_rate=(data2$comp8_rate-1)




#rowSums(data$comp1_rate,data$comp2_rate,data$comp3_rate,data$comp4_rate,data$comp5_rate,data$comp6_rate,data$comp7_rate,data$comp8_rate)




#Back to factor
data2$comp1_rate <- as.factor(data2$comp1_rate) #Set srch_id as factor, not numerical
data2$comp2_rate <- as.factor(data2$comp2_rate) #Set srch_id as factor, not numerical
data2$comp3_rate <- as.factor(data2$comp3_rate) #Set srch_id as factor, not numerical
data2$comp4_rate <- as.factor(data2$comp4_rate) #Set srch_id as factor, not numerical
data2$comp5_rate <- as.factor(data2$comp5_rate) #Set srch_id as factor, not numerical
data2$comp6_rate <- as.factor(data2$comp6_rate) #Set srch_id as factor, not numerical
data2$comp7_rate <- as.factor(data2$comp7_rate) #Set srch_id as factor, not numerical
data2$comp8_rate <- as.factor(data2$comp8_rate) #Set srch_id as factor, not numerical


data2$comp_rate_frac_basic=(data2$comp_rate_basic)/8
data2$comp_rate_frac=(data2$comp_rate)/8
data2$comp_rate_frac_shifted1=(data2$comp_rate_shifted1)/8






lm_data2=lm(click_bool~comp_rate,data=data2) #Linear model for individual sum comp_rate
summary(lm_data2)

lm2_data2=lm(click_bool~comp1_rate+comp2_rate+comp3_rate+comp4_rate+comp5_rate+comp6_rate+comp7_rate+comp8_rate,data=data2) #Linear model for individual comp_rate
summary(lm2_data2)
#click_bool, booking_bool

#All comp_rate
lm3_data2=lm(click_bool~comp_rate+comp1_rate+comp2_rate+comp3_rate+comp4_rate+comp5_rate+comp6_rate+comp7_rate+comp8_rate,data=data2) #Linear model for individual comp_rate
summary(lm3_data2)


lm4_data2=lm(click_bool~comp_rate+comp_rate_basic+comp_rate_shifted1+comp_rate_frac_basic+comp_rate_frac+comp_rate_frac_shifted1, data=data2)
summary(lm4_data2)
lm5_data2=lm(click_bool~comp_rate_basic+comp_rate_shifted1+comp_rate_frac_basic+comp_rate_frac+comp_rate_frac_shifted1, data=data2)
summary(lm5_data2)
lm6_data2=lm(click_bool~comp_rate_shifted1+comp_rate_frac_basic+comp_rate_frac+comp_rate_frac_shifted1, data=data2)
summary(lm6_data2)
lm7_data2=lm(click_bool~comp_rate+comp_rate_basic+comp_rate_shifted1+comp_rate_frac_basic+comp_rate_frac+comp_rate_frac_shifted1+comp1_rate+comp2_rate+comp3_rate+comp4_rate+comp5_rate+comp6_rate+comp7_rate+comp8_rate,data=data2) #Linear model for individual comp_rate
summary(lm7_data2)
lm8_data2=lm(click_bool~comp_rate_frac, data=data2)
summary(lm8_data2)
lm9_data2=glm(click_bool~comp_rate+comp_rate_basic+comp_rate_shifted1+comp_rate_frac_basic+comp_rate_frac+comp_rate_frac_shifted1+comp1_rate+comp2_rate+comp3_rate+comp4_rate+comp5_rate+comp6_rate+comp7_rate+comp8_rate,data=data2) #Linear model for individual comp_rate
summary(lm9_data2)
lm10_data2=glm(click_bool~comp_rate_frac, data=data2)
summary(lm10_data2)
lm11_data2=lm(booking_bool~comp_rate+comp_rate_basic+comp_rate_shifted1+comp_rate_frac_basic+comp_rate_frac+comp_rate_frac_shifted1+comp1_rate+comp2_rate+comp3_rate+comp4_rate+comp5_rate+comp6_rate+comp7_rate+comp8_rate,data=data2) #Linear model for individual comp_rate
summary(lm11_data2)
lm12_data2=lm(booking_bool~comp_rate, data=data2)
summary(lm12_data2)





#model_booking=lm(booking_bool~comp2_rate+comp3_rate+comp8_rate,data=data2)


model_booking=lm(booking_bool~comp_rate+comp_rate_basic+comp_rate_frac+comp2_rate+comp3_rate+comp8_rate,data=data2)
model_click=lm(click_bool~comp_rate+comp_rate_basic+comp_rate_frac+comp2_rate+comp3_rate+comp8_rate,data=data2)


## EXHAUSTIVE FEATURE SELECTION 
install.packages("ExhaustiveSearch")

efs_b <- ExhaustiveSearch(model_booking, data=data2, family=NULL)
efs_b

# +-------------------------------------------------+
#   |                Top Feature Sets                 |
#   +-------------------------------------------------+
#   AIC                                                                                          Combination
# 1 1261323                 comp_rate_frac + comp2_rate0 + comp2_rate1 + comp3_rate0 + comp3_rate1 + comp8_rate1
# 2 1261323                      comp_rate + comp2_rate0 + comp2_rate1 + comp3_rate0 + comp3_rate1 + comp8_rate1
# 3 1261323                comp_rate_basic + comp2_rate0 + comp2_rate1 + comp3_rate0 + comp3_rate1 + comp8_rate1
# 4 1261324   comp_rate_frac + comp2_rate0 + comp2_rate1 + comp3_rate0 + comp3_rate1 + comp8_rate0 + comp8_rate1
# 5 1261324        comp_rate + comp2_rate0 + comp2_rate1 + comp3_rate0 + comp3_rate1 + comp8_rate0 + comp8_rate1 


efs_c <- ExhaustiveSearch(model_click, data=data2, family=NULL)
efs_c

# +-------------------------------------------------+
#   |                Top Feature Sets                 |
#   +-------------------------------------------------+
#   AIC                                                                                                       Combination
# 1 1810450                     comp_rate + comp2_rate0 + comp2_rate1 + comp3_rate0 + comp3_rate1 + comp8_rate0 + comp8_rate1
# 2 1810450                comp_rate_frac + comp2_rate0 + comp2_rate1 + comp3_rate0 + comp3_rate1 + comp8_rate0 + comp8_rate1
# 3 1810450               comp_rate_basic + comp2_rate0 + comp2_rate1 + comp3_rate0 + comp3_rate1 + comp8_rate0 + comp8_rate1
# 4 1810452    comp_rate + comp_rate_frac + comp2_rate0 + comp2_rate1 + comp3_rate0 + comp3_rate1 + comp8_rate0 + comp8_rate1
# 5 1810452   comp_rate + comp_rate_basic + comp2_rate0 + comp2_rate1 + comp3_rate0 + comp3_rate1 + comp8_rate0 + comp8_rate1 



