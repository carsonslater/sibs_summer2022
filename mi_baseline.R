# BASELINE MODEL

load("mi_4.RData")

baseline <- glm(REC_IM ~ R_AB_3_n + FK_STENOK_0 
                + GIPER_NA + AGE + n_p_ecg_p_11
                + GT_POST + LID_KB + NA_KB +
                  + L_BLOOD, data = mi_4, family = "binomial")
summary(baseline)
