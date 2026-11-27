# Taller-de-Integracion-Multimodal
Seguimiento simulado para la realización de una fusión y validación de modelos

TALLER 9 — Integración multimodal en R

1. Descomprima todo el ZIP, conservando la carpeta datos.
2. Abra Taller_multimodal_guiado.Rmd en RStudio.
3. En RStudio, establezca el directorio de trabajo en la ubicación del Rmd
   (Session > Set Working Directory > To Source File Location), si ejecuta chunks.
4. Ejecute los bloques de arriba hacia abajo. Todo está resuelto.
5. Para renderizar HTML, instale previamente knitr y rmarkdown si faltan:
   install.packages(c("knitr", "rmarkdown"))
   Luego use Knit o rmarkdown::render("Taller_multimodal_guiado.Rmd").
6. Las secciones de anexos son opcionales; están completas, pero eval=FALSE.
   Cambie a eval=TRUE o ejecute el bloque manualmente si desea profundizar.

La parte principal usa exclusivamente R base para los cálculos y figuras.
Los anexos de MLP y MOFA2 requieren sus respectivos paquetes.

Todos los datos son simulados, NO son datos reales de TCGA. Los resultados de
referencia proceden de Python sobre los mismos CSV y partición. No se pudo
hacer Knit o ejecutar R en el entorno de preparación: verificar en RStudio
antes de la clase. El IC bootstrap puede variar por el generador aleatorio.
