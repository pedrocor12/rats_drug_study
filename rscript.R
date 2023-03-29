set.seed(1)



library(ggplot2)


mice.before.after <- data.frame(before= rnorm(200, 20, sqrt(2)),
after= rnorm(200, 21, sqrt(2.5)))
rats.before.after <- data.frame(before= rweibull(200, 10, scale = 20),
after= rweibull(200, 9, scale = 21))





mice <- data.frame(state= factor(rep(c("Before", "After"), each=200)),
weight = c(mice.before.after$before, mice.before.after$after))
qplot(weight, data = mice, geom= 'density', color= state )




rats <- data.frame(state= factor(rep(c("Before", "After"), each=200)),
weight = c(rats.before.after$before, rats.before.after$after))
qplot(weight, data = rats, geom= 'density', color= state )





qplot(state, weight, data= mice, geom= "boxplot")
qplot(state, weight, data= rats, geom= "boxplot")



qqnorm(mice$weight)



qqline(mice$weight, col = "red", lwd = 2)



qqnorm(rats$weight)
qqline(rats$weight, col = "steelblue", lwd = 2)


shapiro.test(mice$weight)
shapiro.test(rats$weight)
#From the output, the p-value > 0.05 implying that the distribution of the data are not significantly different from normal distribution. In other words, we can assume the normality.




t.test(mice.before.after$before, mice.before.after$after, paired= TRUE)

# T-test statistic t= -4.93
# The greater the magnitude of T, the greater the evidence against the null hypothesis.
#This means there is greater evidence that there is a significant difference. The closer T is to 0, the more likely there isn't a significant difference.

# Degree of freedom: 199

# The p-value of the test is 1.678e-06, which is less than the significance level alpha = 0.05.
#We can then reject null hypothesis and conclude that the average weight of the mice before treatment is significantly different from the average weight after treatment with a p-value = 1.678e-06.

# 95% Confidence Interval: -1.6332339 -0.7008692

# Sample estimates: Mean fo the differences= -1.167 almost the difference between
#the mean of the before and after distributions




wilcox.test(rats.before.after$before, rats.before.after$after, paired=TRUE)
# p-value = 0.001547 < 0.05, so they re not the same
# Task 4
install.packages("fitdistrplus")
library("fitdistrplus")
fw<- fitdist(rats.before.after$before, 'weibull')
fln <-fitdist(rats.before.after$before, 'lnorm')
fg<- fitdist(rats.before.after$before, 'gamma')


denscomp(list(fw, fln, fg))
qqcomp(list(fw, fln, fg))
cdfcomp(list(fw, fln, fg))
ppcomp(list(fw, fln, fg))
