library(readr)
library(olsrr)
urlfile="https://raw.githubusercontent.com/carsonslater/sibs_summer2022/Main/mi_KNN_imputation.csv"


df<-read_csv(url(urlfile))

head(df)

sub1 <- df[,c(1:75,117)]

#define intercept-only model
intercept_only <- glm(df$REC_IM ~ 1, data=sub1, family = "binomial")

#define model with all predictors
all <- glm(df$REC_IM ~ ., data=sub1, family = "binomial")


#perform forward stepwise regression
forward <- step(intercept_only, direction='both', scope=formula(all1), trace=0)

summary(forward)

forward$anova

#view final model
forward$coefficients


