#convertir el archivo txt en csv para evitar los problemas de acentos y espacios que hay en la base de datos
#elegir como working directory "BioinfinvRepro/Unidad7/Prac_Uni7/maices/meta/bin"
#Pregunta 1.1 cargar como df el archivo de maiz-teocintle
fullmat <-read.csv ("C:/Users/Mel/Desktop/BioinfinvRepro-master/Unidad7/Prac_Uni7/maices/meta/maizteocintle_SNP50k_meta_extended.csv",head = TRUE, sep = ",", na.strings = NULL)
#Pregunta 1.2  El tipo de objeto que creamos es un data frame
#Pregunta 1.3 visualizar las primeras 6 filas dle archivo
fullmat[1:6,]
#Pregunta 1.4 Contar cuantas muestras hay = 165
nrow(fullmat)
#Pregunta 1.5 contar los estados que fueron muestreados =20
summary(fullmat$Estado)
#Pregunta 1.6 muestras que fueron colectadas antes 1980 = 8
summary(fullmat$AÌ.o._de_colecta)
#Pregunta 1.7 visualizar cuántas muestras hay por cada raza
summary(fullmat$Raza)
#Pregunta 1.8 calcular el promedio de altitud en la que se colectaron las muestras
mean(fullmat$Altitud)
#Pregunta 1.9 calcular la altitud máxima y mínima en las que se hizo la colecta
range(fullmat$Altitud)
#Pregunta 1.10 hacer una nueva data frame que incluya solo la raza olotillo
olotillo <-fullmat[fullmat$Raza=="Olotillo",]
#para visualizar la tabla 
View(olotillo)
#Pregunta 1.11 crear una nueva df con Reventador, Jala y Ancho
varias_razas <- fullmat[fullmat$Raza==c("Reventador","Jala", "Ancho"), ]
View(varias_razas)
#Pregunta 1.12 Escribir la matriz anterior a un archivo submat.cvs en /meta
write.csv(varias_razas, file = "submat.cvs")
