plot(co2)
class(co2)

#co2 is the dependent variable, time is the feature
co2_lm=lm(co2~time(co2))
summary(co2_lm)

plot(co2)
abline(co2_lm)

#Normality of errors
co2_residuals=resid(co2_lm)
qqnorm(co2_residuals)
qqline(co2_residuals)

#No Patterns in residuals
plot(co2_residuals~time(co2))
plot(co2_residuals~time(co2), xlim=c(1960,1965))
#There is pattern in the data, auto correlation
#Value at t depends on value at t-1