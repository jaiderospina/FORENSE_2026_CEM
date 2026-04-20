# Proyecto de Análisis Forense con Autopsy

Este repositorio documenta el desarrollo de un ejercicio práctico de análisis forense digital realizado con **Autopsy 4.23.0**. A lo largo del laboratorio se creó un caso forense, se incorporó una imagen como fuente de datos, se revisaron archivos relevantes y se complementó el trabajo con comandos de terminal cuando las limitaciones de la herramienta impidieron avanzar únicamente desde la interfaz gráfica.

## Objetivo

Realizar un análisis forense básico sobre una imagen digital para identificar evidencias, revisar metadatos, recuperar archivos de interés y documentar de manera clara el procedimiento seguido durante la investigación.

## Herramientas utilizadas

- **Autopsy 4.23.0** para la creación del caso y el análisis de la evidencia.
- **Terminal de Linux** para ejecutar comandos de apoyo durante la extracción y validación de archivos.
- **md5sum** para verificar la integridad de la evidencia.
- **dd** para extraer manualmente fragmentos de la imagen cuando no fue posible hacerlo completamente desde Autopsy.
- **LibreOffice Calc** para abrir y revisar archivos recuperados.
- **ChatGPT** como apoyo para resolver errores, interpretar limitaciones de la versión 4.23 de Autopsy y proponer alternativas de extracción cuando algunos módulos o funciones no respondieron como se esperaba.

## Flujo del proyecto

### 1. Preparación de la evidencia

El trabajo inició con la ubicación del material del laboratorio, la descompresión del archivo que contenía la imagen forense y la generación del hash MD5 para conservar la trazabilidad del proceso.

![Preparación inicial de la evidencia](<fotos/Paso-1.png>)

### 2. Creación del caso

La creación del caso en Autopsy se realizó paso a paso, registrando la información básica del análisis y la ubicación donde se almacenarían los resultados.

**Paso 1.** Se seleccionó la opción para crear un nuevo caso y se diligenció el nombre del caso, el directorio base y el tipo de caso.

![Crear caso - información principal](<fotos/Crear caso.png>)

**Paso 2.** Se completó la información opcional del caso, incluyendo los datos del examinador responsables del laboratorio.

![Crear caso - información opcional](<fotos/Crear caso 2.png>)

**Paso 3.** Una vez creado el caso, se inició el asistente para agregar una nueva fuente de datos y se definió el host que agruparía la evidencia.

![Crear caso - selección de host](<fotos/Crear caso 3.png>)

**Paso 4.** Se eligió el tipo de fuente de datos correspondiente a una imagen de disco o archivo de máquina virtual.

![Crear caso - tipo de fuente de datos](<fotos/Crear caso 4.png>)

**Paso 5.** Se indicó la ruta de la imagen a analizar, la zona horaria y el valor hash conocido para asociarlo al caso.

![Crear caso - selección de la imagen](<fotos/Crear caso 5.png>)

**Paso 6.** Se revisaron y configuraron los módulos de ingestión que se ejecutarían sobre la fuente de datos.

![Crear caso - configuración de ingestión](<fotos/Crear caso 6.png>)

**Paso 7.** Después de finalizar el asistente, el caso quedó listo para comenzar la exploración de la evidencia dentro de Autopsy.

![Visualización de la fuente de datos cargada](<fotos/Visualización data sources.png>)

### 3. Carga de la fuente de datos

Luego de crear el caso, se agregó la imagen forense como fuente de datos para iniciar la inspección del sistema de archivos. Durante esta etapa, Autopsy reportó varios módulos no compatibles con el entorno de ejecución utilizado.

![Error de módulos de ingestión](<fotos/Errores ingest module.png>)

**Nota:** los módulos no compatibles no se seleccionaron para evitar conflictos durante el proceso de ingestión y permitir que el análisis continuara con los componentes funcionales dentro de la versión 4.23 de Autopsy.

### 4. Exploración del sistema de archivos

Con la imagen ya cargada, Autopsy permitió revisar la estructura del sistema de archivos, los archivos asignados, el espacio no asignado y la clasificación por tipos. En esta vista se identificaron los archivos más relevantes del caso y se decidió cuáles debían ser analizados con mayor detalle.

![Visualización general de la evidencia](<fotos/Visualización data sources.png>)

## Evidencias observadas

### Archivo `cover page.jpgc`

Este archivo fue uno de los primeros elementos de interés detectados en la evidencia. Su revisión inicial en Autopsy mostró una vista hexadecimal y los metadatos básicos del archivo, lo que permitió confirmar su existencia, tamaño, nombre interno y fechas asociadas.

![Vista hexadecimal del archivo 1](<fotos/HEX archivo 1.png>)

![Metadatos del archivo 1](<fotos/Metadata archivo 1.png>)

Sin embargo, no fue posible identificar de forma completa la información de los metadatos necesaria para trabajar directamente con la función **Jump to Offset** o con los segmentos desde la interfaz de Autopsy. Debido a esa limitación, se recurrió a la terminal para usar comandos que permitieran extraer manualmente el contenido y reconstruir la imagen.

![Extracción y visualización de la imagen recuperada](<fotos/captura de imagen.png>)

Este procedimiento permitió confirmar que el archivo contenía una imagen relacionada con el caso, aun cuando la versión utilizada de Autopsy no ofreció toda la información necesaria para realizar la recuperación únicamente desde la herramienta.

### Archivo `Jimmy Jungle.doc`

Se identificó un documento con contenido textual legible dentro de Autopsy. La vista de texto permitió observar información relevante para la investigación, incluyendo nombres, direcciones y una referencia a una contraseña compartida previamente.

![Contenido textual del documento](<fotos/Text archivo 2.png>)

![Contenido textual con metadatos adicionales](<fotos/Text archivo 2.2.png>)

Además de lo anterior, en este archivo fue posible identificar datos del proveedor, lo cual ayudó a responder varias de las preguntas planteadas en el cuestionario del laboratorio.

### Archivo `Scheduled Visits.exe`

Otro hallazgo importante fue el archivo `Scheduled Visits.exe`. Primero se revisó su contenido desde distintas vistas en Autopsy para identificar su tipo real, su estructura y la información técnica disponible.

![Vista hexadecimal del archivo 3](<fotos/HEX archivo 3.png>)

![Cadenas detectadas en el archivo 3](<fotos/Strings archivo 3.png>)

![Metadatos del archivo 3](<fotos/Metadata archivo 3.png>)

Aunque el archivo aparecía con extensión `.exe`, la revisión de metadatos mostró indicios de que su contenido correspondía realmente a un archivo comprimido. Esto justificó la necesidad de probar métodos alternativos de apertura y extracción.

Al intentar abrir el archivo de forma directa se presentó un error, lo que indicó que el contenido requería tratamiento adicional antes de poder ser consultado.

![Error al intentar abrir el archivo 3](<fotos/archivo 3 error.png>)

Por esta razón, se utilizaron comandos en la terminal para extraer el segmento correcto de la imagen, renombrar el archivo y probar su apertura con el formato adecuado.

![Comandos usados para extraer el archivo 3](<fotos/extracción archivo 3.png>)

Después de lograr abrir el contenido recuperado, el sistema solicitó una contraseña para descomprimirlo.

![Solicitud de contraseña del archivo recuperado](<fotos/solicitud de password.png>)

En este punto se utilizó la contraseña indicada en el caso de ejemplo, ya que no fue posible encontrar la pista completa dentro de los metadatos del archivo 1 debido a las limitaciones observadas en la versión 4.23 de Autopsy.

Finalmente, al ingresar la contraseña correcta, fue posible acceder al archivo y visualizar su contenido.

![Archivo 3 abierto correctamente](<fotos/archivo 3 abierto.png>)

## Hallazgos principales

- Se creó y configuró correctamente un caso forense en Autopsy siguiendo todo el asistente de incorporación de evidencia.
- Se cargó una imagen forense y se revisó su estructura interna para ubicar archivos relevantes.
- Se detectaron limitaciones de compatibilidad en algunos módulos de ingestión de Autopsy 4.23, por lo que fue necesario desactivar componentes no compatibles.
- Se identificó el archivo `cover page.jpgc` y se logró recuperar su contenido mediante comandos ejecutados en terminal.
- Se analizó el archivo `Jimmy Jungle.doc`, del cual se obtuvo información textual útil para responder el cuestionario y relacionar datos del proveedor.
- Se determinó que `Scheduled Visits.exe` requería un tratamiento especial, ya que su contenido real correspondía a un archivo comprimido protegido por contraseña.
- Se usaron herramientas externas y apoyo de ChatGPT para superar errores y limitaciones del entorno sin interrumpir el desarrollo del laboratorio.

## Conclusión

El proyecto evidencia un proceso de análisis forense digital en el que no solo se utilizó Autopsy para explorar la evidencia, sino también herramientas complementarias para resolver situaciones que la plataforma no permitió abordar directamente. La documentación paso a paso y las capturas incluidas muestran el trabajo realizado, las dificultades encontradas y la forma en que fueron solucionadas para obtener los archivos e interpretar la información relevante del caso.

## Estructura del repositorio

```text
.
├── README.md
└── fotos/
```
