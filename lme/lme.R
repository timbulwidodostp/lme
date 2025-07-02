# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Linear mixed-effects models fit by REML Use lme (nlme) With (In) R Software
install.packages("nlme")
library("nlme")
lme = read.csv("https://raw.githubusercontent.com/timbulwidodostp/lme/main/lme/lme.csv",sep = ";")
# Estimation Linear mixed-effects models fit by REML Use lme (nlme) With (In) R Software
lme$dummy <- factor(rep(1,nrow(lme)))
lme <- groupedData(mating~1|dummy,lme)
lme_1 <-lme(mating ~ fpop + fnum + mpop + mnum, data = lme)
summary(lme_1)
lme_2 <- lme(mating ~ fpop + fnum + mpop + mnum, data = lme, random = ~ 1)
summary(lme_2)
# Linear mixed-effects models fit by REML Use lme (nlme) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
