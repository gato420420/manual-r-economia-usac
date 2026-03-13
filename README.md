# 📊 Manual de R y RStudio para Ciencias Económicas

<p align="center">
  <img src="https://www.r-project.org/logo/Rlogo.svg" width="120" alt="R Logo">
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://posit.co/wp-content/uploads/2022/10/rstudio-logo.svg" width="200" alt="RStudio Logo">
</p>

<p align="center">
  <strong>Universidad de San Carlos de Guatemala</strong><br>
  Facultad de Ciencias Económicas | Escuela de Economía
</p>

<p align="center">
  <a href="#contenido">Contenido</a> •
  <a href="#instalación">Instalación</a> •
  <a href="#estructura">Estructura</a> •
  <a href="#autor">Autor</a>
</p>

---

## 📖 Descripción

Material de apoyo para los cursos de **Metodología de la Investigación**, de la Facultad de Ciencias Económicas, USAC. Este repositorio contiene un manual completo para aprender R y RStudio desde cero, con aplicaciones prácticas a problemas económicos de Guatemala y Centroamérica.

## ✨ Características

- 📚 **9 capítulos** progresivos de menor a mayor complejidad
- 💻 **Código R** completamente comentado y reproducible
- 📈 **Ejemplos económicos** con datos de Guatemala (INE, BANGUAT)
- 📝 **90+ ejercicios** propuestos con soluciones
- 📊 **Datasets** listos para practicar

## 📋 Contenido

| # | Capítulo | Descripción | Documento |
|:-:|----------|-------------|:---------:|
| 1 | [Introducción a R y RStudio](docs/Capitulo1_Introduccion_R_RStudio.md) | Instalación, interfaz, operaciones básicas | [📄](docs/Capitulo1_Introduccion_R_RStudio.docx) |
| 2 | [Tipos de datos y estructuras](docs/Capitulo2_Tipos_Datos_Estructuras.md) | Vectores, matrices, data frames, listas | [📄](docs/Capitulo2_Tipos_Datos_Estructuras.docx) |
| 3 | [Importación y exportación](docs/Capitulo3_Importacion_Exportacion.md) | CSV, Excel, bases de datos, APIs | [📄](docs/Capitulo3_Importacion_Exportacion.docx) |
| 4 | [Manipulación con tidyverse](docs/Capitulo4_Manipulacion_Tidyverse.md) | dplyr, pipes, transformaciones | [📄](docs/Capitulo4_Manipulacion_Tidyverse.docx) |
| 5 | [Visualización con ggplot2](docs/Capitulo5_Visualizacion_ggplot2.md) | Gráficos profesionales | [📄](docs/Capitulo5_Visualizacion_ggplot2.docx) |
| 6 | [Estadística descriptiva](docs/Capitulo6_Estadistica_Descriptiva.md) | Medidas, tablas, correlación | [📄](docs/Capitulo6_Estadistica_Descriptiva.docx) |
| 7 | [Inferencia estadística](docs/Capitulo7_Inferencia_Estadistica.md) | IC, pruebas t, chi-cuadrado | [📄](docs/Capitulo7_Inferencia_Estadistica.docx) |
| 8 | [Introducción a regresión](docs/Capitulo8_Regresion.md) | MCO, diagnóstico, predicción | [📄](docs/Capitulo8_Regresion.docx) |
| 9 | [Casos aplicados](docs/Capitulo9_Casos_Aplicados.md) | Inflación, comercio, pobreza, finanzas | [📄](docs/Capitulo9_Casos_Aplicados.docx) |

📥 **[Descargar manual completo (PDF)](docs/Manual_R_RStudio_Ciencias_Economicas_USAC.pdf)** | **[Descargar manual completo (Word)](docs/Manual_R_RStudio_Ciencias_Economicas_USAC.docx)**

## 🚀 Instalación

### Requisitos previos

1. **Instalar R** (versión 4.0 o superior)
   - Descargar desde: https://cran.r-project.org/
   
2. **Instalar RStudio Desktop** (gratuito)
   - Descargar desde: https://posit.co/download/rstudio-desktop/

### Paquetes necesarios

Ejecutar en la consola de R:

```r
# Paquetes principales
install.packages(c(
  "tidyverse",    # Manipulación y visualización
  "readxl",       # Leer archivos Excel
  "writexl",      # Escribir archivos Excel
  "haven",        # Leer SPSS, Stata, SAS
  "moments",      # Asimetría y curtosis
  "corrplot",     # Matrices de correlación
  "stargazer",    # Tablas de regresión
  "car",          # Diagnóstico de regresión
  "lmtest",       # Pruebas de especificación
  "skimr",        # Resúmenes estadísticos
  "WDI"           # Datos del Banco Mundial
))
```

### Clonar el repositorio

```bash
git clone https://github.com/brayanmejia/manual-r-economia-usac.git
cd manual-r-economia-usac
```

## 📁 Estructura del repositorio

```
manual-r-economia-usac/
│
├── 📄 README.md              # Este archivo
├── 📄 LICENSE                # Licencia MIT
│
├── 📂 docs/                  # Documentos del manual
│   ├── Capitulo1_Introduccion_R_RStudio.docx
│   ├── Capitulo2_Tipos_Datos_Estructuras.docx
│   ├── ...
│   └── Manual_R_RStudio_Ciencias_Economicas_USAC.docx
│
├── 📂 scripts/               # Código R por capítulo
│   ├── 01_introduccion.R
│   ├── 02_tipos_datos.R
│   ├── ...
│   └── 09_casos_aplicados.R
│
├── 📂 datos/                 # Datasets de ejemplo
│   ├── inflacion_guatemala.csv
│   ├── comercio_exterior.csv
│   ├── encuesta_hogares.csv
│   └── finanzas_publicas.csv
│
└── 📂 ejercicios/            # Ejercicios con soluciones
    ├── ejercicios_cap1.R
    ├── soluciones_cap1.R
    └── ...
```

## 📊 Datasets incluidos

| Archivo | Descripción | Variables |
|---------|-------------|-----------|
| `inflacion_guatemala.csv` | Inflación mensual 2019-2024 | fecha, general, alimentos, vivienda, transporte |
| `comercio_exterior.csv` | Exportaciones por categoría | anio, categoria, exportaciones |
| `encuesta_hogares.csv` | Encuesta de empleo simulada | ingreso, educacion, experiencia, sector, genero |
| `finanzas_publicas.csv` | Indicadores fiscales | anio, ingresos, gastos, deuda, pib |

## 📚 Recursos adicionales

### Documentación oficial
- [R Documentation](https://www.rdocumentation.org/)
- [RStudio Cheatsheets](https://posit.co/resources/cheatsheets/)
- [Tidyverse](https://www.tidyverse.org/)
- [ggplot2 Reference](https://ggplot2.tidyverse.org/reference/)

### Datos de Guatemala
- [INE Guatemala](https://www.ine.gob.gt/)
- [Banco de Guatemala](https://www.banguat.gob.gt/)
- [Ministerio de Finanzas](https://www.minfin.gob.gt/)

### Libros recomendados (acceso gratuito)
- [R for Data Science (2e)](https://r4ds.hadley.nz/) - Wickham & Grolemund
- [Introduction to Econometrics with R](https://www.econometrics-with-r.org/) - Hanck et al.
- [Forecasting: Principles and Practice](https://otexts.com/fpp3/) - Hyndman & Athanasopoulos

## 👨‍🏫 Autor

**Lic. Brayan Arnoldo Gonzalez Perez**

- 📧 Email: [tu-correo@usac.edu.gt]
- 🏫 Universidad de San Carlos de Guatemala
- 📍 Facultad de Ciencias Económicas

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

El material puede ser usado, modificado y distribuido libremente con fines educativos, citando la fuente original.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Si encuentras errores o tienes sugerencias:

1. Abre un **Issue** describiendo el problema o sugerencia
2. O envía un **Pull Request** con tus mejoras

## ⭐ Agradecimientos

- A los estudiantes de la Facultad de Ciencias Económicas por su retroalimentación
- Al Instituto Nacional de Estadística (INE) y Banco de Guatemala por los datos públicos
- A la comunidad de R por las herramientas de código abierto

---

<p align="center">
  <strong>Universidad de San Carlos de Guatemala</strong><br>
  <em>"Id y enseñad a todos"</em><br><br>
  ⭐ Si este material te fue útil, considera darle una estrella al repositorio ⭐
</p>
