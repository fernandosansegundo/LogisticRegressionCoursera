data = read.table("./data/MYOPIA.txt", header = TRUE)

logModel = glm(MYOPIC ~ SPHEQ, data = data, family = binomial(link = "logit"))

summary(logModel)

plot(data$SPHEQ, data$MYOPIC)

c = curve(predict(logModel,data.frame(SPHEQ=x),type="resp"),add=TRUE, col="red", lwd=3) 

# Another way to plot the same curve
# f = function(x){
#   u = exp(logModel$coefficients[1] + logModel$coefficients[2] * x)
#   return(u / (1 + u))
# }
# 
# curve(f, add=T, col="red", lwd=5)

logLik(logModel)





