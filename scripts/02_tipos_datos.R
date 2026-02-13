# ============================================================================
# CAPÍTULO 2: TIPOS DE DATOS Y ESTRUCTURAS
# Manual de R para Ciencias Económicas - USAC
# Autor: Lic. MSc. Brayan Alejandro Mejía Xicará
# ============================================================================

# ----------------------------------------------------------------------------
# 2.1 TIPOS DE DATOS BÁSICOS
# ----------------------------------------------------------------------------

# Numeric (números)
precio <- 125.50
cantidad <- 100
class(precio)

# Character (texto)
producto <- "Café"
pais <- "Guatemala"
class(producto)

# Logical (lógico/booleano)
es_exportador <- TRUE
en_stock <- FALSE
class(es_exportador)

# Factor (categorías)
region <- factor("Occidente", levels = c("Occidente", "Oriente", "Norte", "Sur"))
class(region)

# Conversiones entre tipos
as.numeric("123")      # Texto a número
as.character(456)      # Número a texto
as.logical(1)          # 1 = TRUE, 0 = FALSE

# ----------------------------------------------------------------------------
# 2.2 VECTORES
# ----------------------------------------------------------------------------

# Crear vectores con c()
precios <- c(10, 15, 20, 25, 30)
productos <- c("Maíz", "Frijol", "Arroz", "Trigo")
disponible <- c(TRUE, TRUE, FALSE, TRUE)

# Secuencias
1:10                          # Secuencia de 1 a 10
seq(0, 100, by = 10)          # De 0 a 100, de 10 en 10
seq(0, 1, length.out = 5)     # 5 valores entre 0 y 1

# Repeticiones
rep(0, 5)                     # Repetir 0, cinco veces
rep(c(1, 2), 3)               # Repetir el vector tres veces
rep(c(1, 2), each = 3)        # Repetir cada elemento tres veces

# Acceso a elementos
precios[1]            # Primer elemento
precios[c(1, 3, 5)]   # Elementos 1, 3 y 5
precios[-1]           # Todos menos el primero
precios[precios > 15] # Elementos mayores a 15

# Funciones útiles para vectores
length(precios)       # Longitud
sum(precios)          # Suma
mean(precios)         # Media
sd(precios)           # Desviación estándar
min(precios)          # Mínimo
max(precios)          # Máximo
range(precios)        # Rango (min y max)
sort(precios)         # Ordenar

# Operaciones vectorizadas
precios * 1.12        # Aumentar 12% a todos
precios + 5           # Sumar 5 a todos

# ----------------------------------------------------------------------------
# EJEMPLO ECONÓMICO: Exportaciones mensuales
# ----------------------------------------------------------------------------

# Exportaciones de café (millones USD)
exportaciones <- c(45, 52, 48, 61, 55, 58, 62, 59, 54, 67, 72, 78)
meses <- c("Ene", "Feb", "Mar", "Abr", "May", "Jun", 
           "Jul", "Ago", "Sep", "Oct", "Nov", "Dic")
names(exportaciones) <- meses

# Análisis
cat("Exportaciones de café 2023 (millones USD)\n")
cat("Total anual:", sum(exportaciones), "\n")
cat("Promedio mensual:", round(mean(exportaciones), 2), "\n")
cat("Mes con mayor exportación:", names(which.max(exportaciones)), 
    "-", max(exportaciones), "\n")
cat("Mes con menor exportación:", names(which.min(exportaciones)), 
    "-", min(exportaciones), "\n")

# ----------------------------------------------------------------------------
# 2.3 MATRICES
# ----------------------------------------------------------------------------

# Crear matriz
matriz <- matrix(1:12, nrow = 3, ncol = 4)
matriz

# Con nombres de filas y columnas
pib_trimestral <- matrix(
  c(180, 185, 190, 195,   # Guatemala
    95, 98, 100, 102,      # El Salvador
    72, 75, 78, 80),       # Honduras
  nrow = 3, byrow = TRUE
)
rownames(pib_trimestral) <- c("Guatemala", "El Salvador", "Honduras")
colnames(pib_trimestral) <- c("Q1", "Q2", "Q3", "Q4")
pib_trimestral

# Acceso a elementos
pib_trimestral[1, 2]           # Fila 1, columna 2
pib_trimestral["Guatemala", ]  # Fila de Guatemala
pib_trimestral[, "Q4"]         # Columna Q4

# Funciones para matrices
rowSums(pib_trimestral)        # Suma por filas (PIB anual por país)
colSums(pib_trimestral)        # Suma por columnas (PIB regional por trimestre)
rowMeans(pib_trimestral)       # Media por filas
colMeans(pib_trimestral)       # Media por columnas

# ----------------------------------------------------------------------------
# 2.4 DATA FRAMES
# ----------------------------------------------------------------------------

# Crear data frame
comercio <- data.frame(
  pais = c("Guatemala", "El Salvador", "Honduras", "Nicaragua", "Costa Rica"),
  exportaciones = c(12500, 6800, 5200, 3100, 15800),
  importaciones = c(18200, 11500, 9800, 6200, 17500),
  poblacion = c(17.1, 6.5, 10.1, 6.6, 5.2)
)
comercio

# Explorar data frame
head(comercio)         # Primeras filas
tail(comercio)         # Últimas filas
str(comercio)          # Estructura
summary(comercio)      # Resumen estadístico
nrow(comercio)         # Número de filas
ncol(comercio)         # Número de columnas
names(comercio)        # Nombres de columnas

# Acceso a columnas
comercio$exportaciones          # Con $
comercio[, "exportaciones"]     # Con corchetes
comercio[, 2]                   # Por número de columna

# Acceso a filas
comercio[1, ]                   # Primera fila
comercio[comercio$pais == "Guatemala", ]  # Filtrar

# Crear nuevas columnas
comercio$balanza <- comercio$exportaciones - comercio$importaciones
comercio$exp_per_capita <- comercio$exportaciones / comercio$poblacion
comercio

# ----------------------------------------------------------------------------
# 2.5 LISTAS
# ----------------------------------------------------------------------------

# Las listas pueden contener diferentes tipos de datos
datos_guatemala <- list(
  nombre = "Guatemala",
  capital = "Ciudad de Guatemala",
  poblacion = 17.1,
  departamentos = 22,
  idiomas = c("Español", "K'iche'", "Q'eqchi'", "Mam"),
  indicadores = data.frame(
    anio = 2020:2023,
    pib_crecimiento = c(-1.8, 8.0, 4.1, 3.5),
    inflacion = c(3.2, 3.1, 6.9, 5.8)
  )
)

# Acceso a elementos de lista
datos_guatemala$nombre
datos_guatemala[["poblacion"]]
datos_guatemala$indicadores
datos_guatemala$indicadores$pib_crecimiento

# ----------------------------------------------------------------------------
# EJERCICIOS PROPUESTOS
# ----------------------------------------------------------------------------

# Ejercicio 1: Crear vector de inflación mensual (12 meses) e identificar
#              el mes con mayor y menor inflación

# Ejercicio 2: Crear matriz de producción agrícola (5 productos x 4 trimestres)
#              y calcular totales anuales por producto

# Ejercicio 3: Crear data frame de 8 departamentos con: nombre, población,
#              PIB, y calcular PIB per cápita

# ============================================================================
# FIN DEL CAPÍTULO 2
# ============================================================================
