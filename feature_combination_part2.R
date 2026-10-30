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




data2$comp1_rate[data2$comp1_inv=='NULL'] <- 0
data2$comp2_rate[data2$comp2_inv=='NULL'] <- 0
data2$comp3_rate[data2$comp3_inv=='NULL'] <- 0
data2$comp4_rate[data2$comp4_inv=='NULL'] <- 0
data2$comp5_rate[data2$comp5_inv=='NULL'] <- 0
data2$comp6_rate[data2$comp6_inv=='NULL'] <- 0
data2$comp7_rate[data2$comp7_inv=='NULL'] <- 0
data2$comp8_rate[data2$comp8_inv=='NULL'] <- 0


#To be summed, it needs to be numeric
data2$comp1_inv <- as.numeric(data2$comp1_inv) #Set srch_id as factor, not numerical
data2$comp2_inv <- as.numeric(data2$comp2_inv) #Set srch_id as factor, not numerical
data2$comp3_inv <- as.numeric(data2$comp3_inv) #Set srch_id as factor, not numerical
data2$comp4_inv <- as.numeric(data2$comp4_inv) #Set srch_id as factor, not numerical
data2$comp5_inv <- as.numeric(data2$comp5_inv) #Set srch_id as factor, not numerical
data2$comp6_inv <- as.numeric(data2$comp6_inv) #Set srch_id as factor, not numerical
data2$comp7_inv <- as.numeric(data2$comp7_inv) #Set srch_id as factor, not numerical
data2$comp8_inv <- as.numeric(data2$comp8_inv) #Set srch_id as factor, not numerical


#Sum up the values
#https://stackoverflow.com/questions/3991905/sum-rows-in-data-frame-or-matrix
#data2$comp_rate=rowSums( data[,comp1_rate,comp2_rate] )
#https://www.geeksforgeeks.org/sum-of-two-or-multiple-dataframe-columns-in-r/
data2$comp_rate_basic=rowSums(data2[, c('comp1_inv','comp2_inv','comp3_inv','comp4_inv','comp5_inv','comp6_inv','comp7_inv','comp8_inv'), drop = FALSE]) #add drop = FALSE to avoid dimensional error #<-- Only this line is used
#https://stackoverflow.com/questions/46303057/colsums-in-r-x-must-be-an-array-of-at-least-two-dimensions
#data2$comp_rate=colSums(data[ , c('comp1_rate','comp2_rate','comp3_rate'), drop = FALSE])



#When converting factor to numeric, the value -1 becomes 1, 0-->2, 1-->3 shifting everything two steps up and removing the negative value
#We do the following to shift them down
data2$comp1_inv=(data2$comp1_inv-2)
data2$comp2_inv=(data2$comp2_inv-2)
data2$comp3_inv=(data2$comp3_inv-2)
data2$comp4_inv=(data2$comp4_inv-2)
data2$comp5_inv=(data2$comp5_inv-2)
data2$comp6_inv=(data2$comp6_inv-2)
data2$comp7_inv=(data2$comp7_inv-2)
data2$comp8_inv=(data2$comp8_inv-2)


data2$comp_rate=rowSums(data2[, c('comp1_inv','comp2_inv','comp3_inv','comp4_inv','comp5_inv','comp6_inv','comp7_inv','comp8_inv'), drop = FALSE]) #add drop = FALSE to avoid dimensional error




#Now we shift rthe values to -1(original)-->0, 0(original)-->1, 1(original)-->2
#We do the following to shift them down
data2$comp1_inv=(data2$comp1_inv+1)
data2$comp2_inv=(data2$comp2_inv+1)
data2$comp3_inv=(data2$comp3_inv+1)
data2$comp4_inv=(data2$comp4_inv+1)
data2$comp5_inv=(data2$comp5_inv+1)
data2$comp6_inv=(data2$comp6_inv+1)
data2$comp7_inv=(data2$comp7_inv+1)
data2$comp8_inv=(data2$comp8_inv+1)


data2$comp_rate_shifted1=rowSums(data2[, c('comp1_inv','comp2_inv','comp3_inv','comp4_inv','comp5_inv','comp6_inv','comp7_inv','comp8_inv'), drop = FALSE]) #add drop = FALSE to avoid dimensional error


#Set them back to original values
data2$comp1_inv=(data2$comp1_inv-1)
data2$comp2_inv=(data2$comp2_inv-1)
data2$comp3_inv=(data2$comp3_inv-1)
data2$comp4_inv=(data2$comp4_inv-1)
data2$comp5_inv=(data2$comp5_inv-1)
data2$comp6_inv=(data2$comp6_inv-1)
data2$comp7_inv=(data2$comp7_inv-1)
data2$comp8_inv=(data2$comp8_inv-1)




#rowSums(data$comp1_rate,data$comp2_rate,data$comp3_rate,data$comp4_rate,data$comp5_rate,data$comp6_rate,data$comp7_rate,data$comp8_rate)

data2$comp8_inv_num=data2$comp8_inv





#Back to factor
data2$comp1_inv <- as.factor(data2$comp1_inv) #Set srch_id as factor, not numerical
data2$comp2_inv <- as.factor(data2$comp2_inv) #Set srch_id as factor, not numerical
data2$comp3_inv <- as.factor(data2$comp3_inv) #Set srch_id as factor, not numerical
data2$comp4_inv <- as.factor(data2$comp4_inv) #Set srch_id as factor, not numerical
data2$comp5_inv <- as.factor(data2$comp5_inv) #Set srch_id as factor, not numerical
data2$comp6_inv <- as.factor(data2$comp6_inv) #Set srch_id as factor, not numerical
data2$comp7_inv <- as.factor(data2$comp7_inv) #Set srch_id as factor, not numerical
data2$comp8_inv <- as.factor(data2$comp8_inv) #Set srch_id as factor, not numerical


data2$comp_rate_frac_basic=(data2$comp_rate_basic)/8
data2$comp_rate_frac=(data2$comp_rate)/8
data2$comp_rate_frac_shifted1=(data2$comp_rate_shifted1)/8



data2$comp_rate_frac_inv8=rowSums(data2[, c('comp_rate_frac','comp8_inv_num'), drop = FALSE]) #add drop = FALSE to avoid dimensional error









#Clicking
lm11_data2=lm(click_bool~comp_rate+comp_rate_basic+comp_rate_shifted1+comp_rate_frac_basic+comp_rate_frac+comp_rate_frac_shifted1+comp1_inv+comp2_inv+comp3_inv+comp4_inv+comp5_inv+comp6_inv+comp7_inv+comp8_inv,data=data2) #Linear model for individual comp_rate
summary(lm11_data2)
#NOTE comp_rate does not have a significant enough p value here

lm11_2_data2=lm(click_bool~comp8_inv, data=data2)
summary(lm11_2_data2)
#comp8_inv has a strong ****



#Booking
lm12_data2=lm(booking_bool~comp_rate+comp_rate_basic+comp_rate_shifted1+comp_rate_frac_basic+comp_rate_frac+comp_rate_frac_shifted1+comp1_inv+comp2_inv+comp3_inv+comp4_inv+comp5_inv+comp6_inv+comp7_inv+comp8_inv,data=data2) #Linear model for individual comp_rate
summary(lm12_data2)


lm11_2_data2=lm(booking_bool~comp8_inv, data=data2)
summary(lm11_2_data2)
#comp8_inv has a strong influence



#Booking
lm13_data2=lm(booking_bool~comp_rate_frac_inv8+comp_rate+comp_rate_basic+comp_rate_shifted1+comp_rate_frac_basic+comp_rate_frac+comp_rate_frac_shifted1+comp1_inv+comp2_inv+comp3_inv+comp4_inv+comp5_inv+comp6_inv+comp7_inv+comp8_inv,data=data2) #Linear model for individual comp_rate
summary(lm13_data2)


lm13_2_data2=lm(booking_bool~comp_rate_frac_inv8, data=data2)
summary(lm13_2_data2)
#comp8_inv has a strong influence






#model_booking=lm(booking_bool~comp_rate_frac_inv8+comp_rate+comp_rate_basic, data=data2)
model_booking=lm(booking_bool~comp_rate_frac_inv8+comp_rate+comp8_inv, data=data2)
summary(model_booking)

model_click=lm(click_bool~comp_rate_frac_inv8+comp_rate+comp8_inv, data=data2)
summary(model_booking)


## STEP DOWN METHOD
install.packages("olsrr")
result1_down <- ols_step_backward_p(lm13_data2, p_val = 0.05) 
features_m1_down <- result1_down$metrics
features_m1_down


## EXHAUSTIVE FEATURE SELECTION 
install.packages("ExhaustiveSearch")

efs_b <- ExhaustiveSearch(model_booking, data=data2, family=NULL)
efs_b


# +-------------------------------------------------+
#   |                Top Feature Sets                 |
#   +-------------------------------------------------+
#   AIC                                                  Combination
# 1 1262906                          comp_rate + comp8_inv0 + comp8_inv2
# 2 1262907                comp_rate_frac_inv8 + comp8_inv1 + comp8_inv2
# 3 1262907    comp_rate_frac_inv8 + comp_rate + comp8_inv1 + comp8_inv2
# 4 1262907    comp_rate_frac_inv8 + comp_rate + comp8_inv0 + comp8_inv2
# 5 1262907   comp_rate_frac_inv8 + comp8_inv0 + comp8_inv1 + comp8_inv2 


efs <- ExhaustiveSearch(model_click, data=data2, family=NULL)
efs

# +-------------------------------------------------+
#   |                Top Feature Sets                 |
#   +-------------------------------------------------+
#   AIC                                                 Combination
# 1 1811892                comp_rate_frac_inv8 + comp_rate + comp8_inv0
# 2 1811893               comp_rate_frac_inv8 + comp8_inv0 + comp8_inv2
# 3 1811894            comp_rate + comp8_inv0 + comp8_inv1 + comp8_inv2
# 4 1811894   comp_rate_frac_inv8 + comp_rate + comp8_inv0 + comp8_inv1
# 5 1811894   comp_rate_frac_inv8 + comp_rate + comp8_inv0 + comp8_inv2 



