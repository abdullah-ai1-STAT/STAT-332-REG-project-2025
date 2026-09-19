boston_housing=read.csv(file.choose())

# The Response which Show the average house prices in the town
Y=boston_housing$medv
# The First Predictor  rm which show the average room number in the house
X1=boston_housing$rm
# The Second Predictor crim which show the crime rate in the town
X2=boston_housing$crim
# The Third Predictor lstat which show the percentage of low-income population
X3=boston_housing$lstat



Y=boston_housing$medv
> X1=boston_housing$rm
> X2=boston_housing$crim
> X3=boston_housing$lstat
> model=lm(Y~X1+X2+X3)
> model

Call:
  lm(formula = Y ~ X1 + X2 + X3)

Coefficients:
  (Intercept)           X1           X2           X3  
-0.10259      4.93923     -0.03668     -0.63543  

> summary(model)

Call:
  lm(formula = Y ~ X1 + X2 + X3)

Residuals:
  Min      1Q  Median      3Q     Max 
-12.772  -3.543  -1.080   1.778  27.806 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) -0.10259    3.93378  -0.026    0.979    
X1           4.93923    0.55109   8.963   <2e-16 ***
  X2          -0.03668    0.04910  -0.747    0.456    
X3          -0.63543    0.06163 -10.311   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 5.568 on 329 degrees of freedom
Multiple R-squared:  0.635,	Adjusted R-squared:  0.6316 
F-statistic: 190.8 on 3 and 329 DF,  p-value: < 2.2e-16

> anova(model)
Analysis of Variance Table

Response: Y
Df  Sum Sq Mean Sq F value    Pr(>F)    
X1          1 13286.1 13286.1 428.587 < 2.2e-16 ***
  X2          1  1158.1  1158.1  37.358  2.78e-09 ***
  X3          1  3295.5  3295.5 106.308 < 2.2e-16 ***
  Residuals 329 10198.9    31.0                      
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> plot(Y,X1,X2,X3)
Error in plot.window(...) : invalid 'xlim' value

> plot(Y,X1)
> plot(Y,X2)
> plot(Y,X3)
> plot(model)
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  > 
  > with(plot(Y,X1,X2,X3),abline(model))
Error in plot.window(...) : invalid 'xlim' value

> with(plot(Y,X1),abline(model))
Warning message:
  In abline(model) : only using the first two of 4 regression coefficients

> model1=lm(Y~X1)
> model1

Call:
  lm(formula = Y ~ X1)

Coefficients:
  (Intercept)           X1  
-33.537        8.986  

> with(plot(Y,X1),abline(model1))
> with(plot(X1,Y),abline(model1))
> summary(model1)

Call:
  lm(formula = Y ~ X1)

Residuals:
  Min      1Q  Median      3Q     Max 
-19.387  -2.840  -0.073   2.786  38.874 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) -33.5367     3.2705  -10.25   <2e-16 ***
  X1            8.9864     0.5187   17.32   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 6.653 on 331 degrees of freedom
Multiple R-squared:  0.4755,	Adjusted R-squared:  0.474 
F-statistic: 300.1 on 1 and 331 DF,  p-value: < 2.2e-16

> with(plot(X1,Y),abline(model1,col="red"))
> with(plot(X1,Y),abline(model1,col="blue"))
> with(plot(X1,Y),abline(model1,col="darkgreen"))
> summary(boston_housing)
ID           crim                zn        
Min.   :  1   Min.   : 0.00632   Min.   :  0.00  
1st Qu.:123   1st Qu.: 0.07896   1st Qu.:  0.00  
Median :244   Median : 0.26169   Median :  0.00  
Mean   :251   Mean   : 3.36034   Mean   : 10.69  
3rd Qu.:377   3rd Qu.: 3.67822   3rd Qu.: 12.50  
Max.   :506   Max.   :73.53410   Max.   :100.00  
indus            chas              nox        
Min.   : 0.74   Min.   :0.00000   Min.   :0.3850  
1st Qu.: 5.13   1st Qu.:0.00000   1st Qu.:0.4530  
Median : 9.90   Median :0.00000   Median :0.5380  
Mean   :11.29   Mean   :0.06006   Mean   :0.5571  
3rd Qu.:18.10   3rd Qu.:0.00000   3rd Qu.:0.6310  
Max.   :27.74   Max.   :1.00000   Max.   :0.8710  
rm             age              dis        
Min.   :3.561   Min.   :  6.00   Min.   : 1.130  
1st Qu.:5.884   1st Qu.: 45.40   1st Qu.: 2.122  
Median :6.202   Median : 76.70   Median : 3.092  
Mean   :6.266   Mean   : 68.23   Mean   : 3.710  
3rd Qu.:6.595   3rd Qu.: 93.80   3rd Qu.: 5.117  
Max.   :8.725   Max.   :100.00   Max.   :10.710  
rad              tax           ptratio     
Min.   : 1.000   Min.   :188.0   Min.   :12.60  
1st Qu.: 4.000   1st Qu.:279.0   1st Qu.:17.40  
Median : 5.000   Median :330.0   Median :19.00  
Mean   : 9.634   Mean   :409.3   Mean   :18.45  
3rd Qu.:24.000   3rd Qu.:666.0   3rd Qu.:20.20  
Max.   :24.000   Max.   :711.0   Max.   :21.20  
black           lstat            medv      
Min.   :  3.5   Min.   : 1.73   Min.   : 5.00  
1st Qu.:376.7   1st Qu.: 7.18   1st Qu.:17.40  
Median :392.1   Median :10.97   Median :21.60  
Mean   :359.5   Mean   :12.52   Mean   :22.77  
3rd Qu.:396.2   3rd Qu.:16.42   3rd Qu.:25.00  
Max.   :396.9   Max.   :37.97   Max.   :50.00  
> hist(boston_housing$medv)
> hist(boston_housing$medv,main= "Histogram of Prices (medv)", xlab = "Median Value $1000")
> hist(boston_housing$medv,main= "Histogram of Prices (medv)", xlab = "Median Value $1000",col = "darkblue", border = "white")
> boxplot(boston_housing$medv,main= "Boxplot of House Prices", ylab= "Median Value $1000" , col = "darkblue")
> model1

Call:
  lm(formula = Y ~ X1)

Coefficients:
  (Intercept)           X1  
-33.537        8.986  

> summary(model1)

Call:
  lm(formula = Y ~ X1)

Residuals:
  Min      1Q  Median      3Q     Max 
-19.387  -2.840  -0.073   2.786  38.874 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) -33.5367     3.2705  -10.25   <2e-16 ***
  X1            8.9864     0.5187   17.32   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 6.653 on 331 degrees of freedom
Multiple R-squared:  0.4755,	Adjusted R-squared:  0.474 
F-statistic: 300.1 on 1 and 331 DF,  p-value: < 2.2e-16

> with(plot(X1,Y), abline(model1))
> with(plot(X1,Y), abline(model1),col="red")
> with(plot(X1,Y), abline(model1),col="red")
> with(plot(X1,Y), abline(model1,col="red"))
> anova(model1)
Analysis of Variance Table

Response: Y
Df Sum Sq Mean Sq F value    Pr(>F)    
X1          1  13286 13286.1  300.13 < 2.2e-16 ***
  Residuals 331  14652    44.3                      
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> model1

Call:
  lm(formula = Y ~ X1)

Coefficients:
  (Intercept)           X1  
-33.537        8.986  

> summary(model1)

Call:
  lm(formula = Y ~ X1)

Residuals:
  Min      1Q  Median      3Q     Max 
-19.387  -2.840  -0.073   2.786  38.874 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) -33.5367     3.2705  -10.25   <2e-16 ***
  X1            8.9864     0.5187   17.32   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 6.653 on 331 degrees of freedom
Multiple R-squared:  0.4755,	Adjusted R-squared:  0.474 
F-statistic: 300.1 on 1 and 331 DF,  p-value: < 2.2e-16

> summary(model)

Call:
  lm(formula = Y ~ X1 + X2 + X3)

Residuals:
  Min      1Q  Median      3Q     Max 
-12.772  -3.543  -1.080   1.778  27.806 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) -0.10259    3.93378  -0.026    0.979    
X1           4.93923    0.55109   8.963   <2e-16 ***
  X2          -0.03668    0.04910  -0.747    0.456    
X3          -0.63543    0.06163 -10.311   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 5.568 on 329 degrees of freedom
Multiple R-squared:  0.635,	Adjusted R-squared:  0.6316 
F-statistic: 190.8 on 3 and 329 DF,  p-value: < 2.2e-16

> plot(model1)
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  > 
  > model1_log=lm(logY~X1)
Error in eval(predvars, data, env) : object 'logY' not found

> model1_log=lm(log(Y)~X1)
> model1_log

Call:
  lm(formula = log(Y) ~ X1)

Coefficients:
  (Intercept)           X1  
0.7710       0.3633  

> summary(model1_log)

Call:
  lm(formula = log(Y) ~ X1)

Residuals:
  Min       1Q   Median       3Q      Max 
-1.22339 -0.09379  0.05310  0.16205  1.33537 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  0.77097    0.15282   5.045 7.49e-07 ***
  X1           0.36332    0.02424  14.990  < 2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.3109 on 331 degrees of freedom
Multiple R-squared:  0.4043,	Adjusted R-squared:  0.4025 
F-statistic: 224.7 on 1 and 331 DF,  p-value: < 2.2e-16

> plot(model1_log)
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  > model_multi=lm(Y~X1+X3)
> model_multi

Call:
  lm(formula = Y ~ X1 + X3)

Coefficients:
  (Intercept)           X1           X3  
0.1039       4.9285      -0.6564  

> summary(model_multi)

Call:
  lm(formula = Y ~ X1 + X3)

Residuals:
  Min       1Q   Median       3Q      Max 
-12.7502  -3.6016  -0.9639   1.6904  27.5414 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  0.10394    3.92142   0.027    0.979    
X1           4.92847    0.55053   8.952   <2e-16 ***
  X3          -0.65639    0.05483 -11.971   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 5.564 on 330 degrees of freedom
Multiple R-squared:  0.6343,	Adjusted R-squared:  0.6321 
F-statistic: 286.2 on 2 and 330 DF,  p-value: < 2.2e-16