# ============================================================================
# CAPÍTULO 1: INTRODUCCIÓN A R Y RSTUDIO
# Manual de R para Ciencias Económicas - USAC
# Autor: Lic. MSc. Brayan Alejandro Mejía Xicará
# ============================================================================

# ----------------------------------------------------------------------------
# 1.1 R COMO CALCULADORA
# ----------------------------------------------------------------------------

# Operaciones aritméticas básicas
5 + 3       # Suma
10 - 4      # Resta
6 * 7       # Multiplicación
20 / 4      # División
2 ^ 5       # Potencia (2 elevado a la 5)
17 %% 5     # Módulo (residuo de división)
17 %/% 5    # División entera

# R respeta el orden de operaciones (PEMDAS)
2 + 3 * 4       # Resultado: 14 (no 20)
(2 + 3) * 4     # Resultado: 20

# Funciones matemáticas
sqrt(16)        # Raíz cuadrada
abs(-5)         # Valor absoluto
log(100)        # Logaritmo natural
log10(100)      # Logaritmo base 10
exp(2)          # e elevado a la 2
round(3.14159, 2)  # Redondear a 2 decimales

# ----------------------------------------------------------------------------
# EJEMPLO ECONÓMICO: Cálculo de interés simple
# ----------------------------------------------------------------------------

# Datos
capital <- 10000    # Capital inicial (Q10,000)
tasa <- 0.08        # Tasa de interés anual (8%)
tiempo <- 3         # Tiempo en años

# Cálculo de interés simple: I = C * r * t
interes <- capital * tasa * tiempo
monto_final <- capital + interes

cat("Capital inicial: Q", capital, "\n")
cat("Interés generado: Q", interes, "\n")
cat("Monto final: Q", monto_final, "\n")

# ----------------------------------------------------------------------------
# 1.2 CREACIÓN DE OBJETOS
# ----------------------------------------------------------------------------

# Asignación de valores a objetos (usar <- preferentemente)
x <- 10
y = 20        # También funciona, pero <- es preferido en R
z <- x + y

# Ver el valor de un objeto
x
print(y)
z

# Nombres de objetos:
# - Pueden contener letras, números, puntos y guiones bajos
# - Deben comenzar con una letra o punto
# - R distingue mayúsculas de minúsculas (x ≠ X)

mi_variable <- 100
variable.dos <- 200
Variable3 <- 300

# Listar objetos en el ambiente
ls()

# Eliminar un objeto
rm(z)

# Eliminar todos los objetos
# rm(list = ls())  # ¡Cuidado! Esto borra todo

# ----------------------------------------------------------------------------
# EJEMPLO ECONÓMICO: PIB por el método del gasto
# ----------------------------------------------------------------------------

# PIB = C + I + G + (X - M)
# Datos de Guatemala (valores ficticios en millones de Q)

consumo <- 450000           # Consumo privado
inversion <- 85000          # Inversión bruta
gasto_gobierno <- 75000     # Gasto del gobierno
exportaciones <- 95000      # Exportaciones
importaciones <- 120000     # Importaciones

# Calcular PIB
pib <- consumo + inversion + gasto_gobierno + (exportaciones - importaciones)

cat("=== PIB de Guatemala (método del gasto) ===\n")
cat("Consumo (C):", consumo, "millones Q\n")
cat("Inversión (I):", inversion, "millones Q\n")
cat("Gasto gobierno (G):", gasto_gobierno, "millones Q\n")
cat("Exportaciones netas (X-M):", exportaciones - importaciones, "millones Q\n")
cat("----------------------------------------\n")
cat("PIB Total:", pib, "millones Q\n")

# Participación de cada componente
cat("\n=== Participación en el PIB ===\n")
cat("Consumo:", round(consumo/pib * 100, 1), "%\n")
cat("Inversión:", round(inversion/pib * 100, 1), "%\n")
cat("Gasto gobierno:", round(gasto_gobierno/pib * 100, 1), "%\n")
cat("Exportaciones netas:", round((exportaciones-importaciones)/pib * 100, 1), "%\n")

# ----------------------------------------------------------------------------
# EJERCICIOS PROPUESTOS
# ----------------------------------------------------------------------------

# Ejercicio 1: Interés compuesto
# Calcule el monto final de una inversión de Q25,000 a una tasa del 6% anual
# compuesto durante 5 años.
# Fórmula: M = C * (1 + r)^t

# Ejercicio 2: Tipo de cambio
# Si el tipo de cambio es Q7.85 por dólar, convierta $1,500 a quetzales
# y Q50,000 a dólares.

# Ejercicio 3: Inflación
# Si un producto costaba Q100 hace un año y ahora cuesta Q108,
# ¿cuál fue la tasa de inflación?

# ============================================================================
# FIN DEL CAPÍTULO 1
# ============================================================================
