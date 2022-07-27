x = rnorm(100, mean = 20, sd = 5)
y = x + rnorm(100, mean = 0, sd = 2)

fit = lm(y ~ x)

summary(fit)


plot(x,y)
abline(fit, col=2)


getwd()

co2 = read.csv("module 13 co2_mm_mlo.csv")
plot(co2$decdate, co2$interpolated, type='l', main="Mauna Loa CO2",
     xlab="Time", ylab="ppm")
lines(co2$decdate, co2$trend, col=2, lwd=2)