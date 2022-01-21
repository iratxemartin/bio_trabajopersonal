library(MLDataR)

tir <- MLDataR::thyroid_disease

write.csv(tir, file = "dataset_tiroides.csv")


#order 

head(tir)

sort(tir$patient_age)

list(tir_completo$ThryroidClass)

tir2 <- tir[order(tir$patient_age),]

tir_completo <- tir[complete.cases(tir),] #para quitar todos los missings

#aggregate: agrupar por grupos y hacer calculo estadistico #EXAMEN

edad_tyr <- aggregate(tir_completo$patient_age, list(tir_completo$ThryroidClass, tir_completo$patient_gender), mean)
names(edad_tyr) <- c("Tiroides", "Media")

aggregate(tir_completo$patient_age, list(tir_completo$ThryroidClass, tir_completo$patient_gender), median)

edad_tyr

names(edad_tyr) <- c("Tiroides", "Genero", "Media")
edad_tyr
