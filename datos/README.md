# 📂 Datasets

Esta carpeta contiene los conjuntos de datos utilizados en el manual.

## Archivos disponibles

### `inflacion_guatemala.csv`
Inflación mensual de Guatemala 2019-2024 (datos simulados basados en patrones reales).

| Variable | Descripción |
|----------|-------------|
| fecha | Fecha (YYYY-MM-DD) |
| general | Inflación general (%) |
| alimentos | Inflación de alimentos (%) |
| vivienda | Inflación de vivienda (%) |
| transporte | Inflación de transporte (%) |
| salud | Inflación de salud (%) |
| educacion | Inflación de educación (%) |

### `comercio_exterior.csv`
Comercio exterior de Guatemala por categoría 2018-2023.

| Variable | Descripción |
|----------|-------------|
| anio | Año |
| categoria | Categoría de producto |
| exportaciones_musd | Exportaciones (millones USD) |
| importaciones_musd | Importaciones (millones USD) |

### `encuesta_hogares.csv`
Encuesta de hogares simulada (50 observaciones).

| Variable | Descripción |
|----------|-------------|
| id | Identificador |
| ingreso_mensual | Ingreso mensual (Q) |
| edad | Edad en años |
| educacion_anios | Años de educación |
| sexo | Hombre/Mujer |
| area | Urbana/Rural |
| sector | Formal/Informal |
| etnia | Indígena/No indígena |
| departamento | Departamento de Guatemala |

### `finanzas_publicas.csv`
Indicadores fiscales de Guatemala 2015-2024.

| Variable | Descripción |
|----------|-------------|
| anio | Año |
| pib_millones | PIB (millones Q) |
| ingresos_tributarios | Ingresos tributarios (millones Q) |
| otros_ingresos | Otros ingresos (millones Q) |
| gasto_corriente | Gasto corriente (millones Q) |
| gasto_capital | Gasto de capital (millones Q) |
| deuda_publica | Deuda pública (millones Q) |

## Cómo cargar los datos

```r
# Opción 1: Desde archivo local
inflacion <- read.csv("datos/inflacion_guatemala.csv")

# Opción 2: Directamente desde GitHub (raw)
url <- "https://raw.githubusercontent.com/brayanmejia/manual-r-economia-usac/main/datos/inflacion_guatemala.csv"
inflacion <- read.csv(url)
```

## Fuentes de datos reales

Para obtener datos reales de Guatemala, consulta:

- **INE Guatemala**: https://www.ine.gob.gt/
- **Banco de Guatemala**: https://www.banguat.gob.gt/
- **Ministerio de Finanzas**: https://www.minfin.gob.gt/
- **Banco Mundial (WDI)**: https://databank.worldbank.org/
