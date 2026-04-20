\# Caso de Estudio Forense con Autopsy



\### Integrantes:

&#x09;	CC Juan Carlos Santos Lara

&#x09;	CC Andrés Ricardo Pedraza

&#x09;	MY Miguel Villanueva

&#x09;	MY Andrés Sanchez

&#x09;	MY Norberto Murcia



\## 1. Descripción del caso



Este laboratorio consiste en el análisis forense de una imagen de disquete recuperada, con el objetivo de identificar evidencia relacionada con la posible venta de marihuana por parte de \*\*Joe Jacobs\*\* a estudiantes de secundaria, así como establecer quién sería su proveedor y qué otras instituciones educativas frecuentaba. El reporte policial indica que Jacobs fue arrestado tras ofrecer marihuana a un agente encubierto en el estacionamiento de \*\*Smith Hill High School\*\* y que, durante el allanamiento, se incautó un único disquete que fue posteriormente adquirido en imagen para su examen forense. 



!\[Texto alternativo](ruta/de/la/imagen.png)



\## 2. Evidencia suministrada



\- \*\*Archivo:\*\* `image.zip`

\- \*\*Hash MD5 publicado:\*\* `b676147f63923e1f428131d59b1d6a72`

\- \*\*Reporte del caso:\*\* `report.txt` :contentReference\[oaicite:2]{index=2}



\## 3. Objetivo del análisis



Determinar, a partir de la imagen forense del disquete:



1\. Quién es el proveedor de marihuana de Joe Jacobs y cuál es su dirección.

2\. Qué dato crucial está contenido en `coverpage.jpg` y por qué ese dato es importante.

3\. Qué otras escuelas, además de Smith Hill, frecuentaba Joe Jacobs.

4\. Qué hizo el sospechoso para ocultar o enmascarar cada archivo.

5\. Qué procedimientos realizó el analista para recuperar y examinar el contenido completo de cada archivo.



\## 4. Metodología aplicada



El trabajo se desarrolló bajo un enfoque de \*\*aprendizaje por descubrimiento\*\*, en el que el analista explora la evidencia, valida hallazgos y construye conclusiones a partir de los datos recuperados. Este enfoque coincide con el planteamiento del laboratorio, que exige interpretar la evidencia y no limitarse a leer respuestas ya dadas. :contentReference\[oaicite:3]{index=3}



Desde el punto de vista técnico, el procedimiento forense seguido fue:



1\. Descargar la evidencia y el reporte.

2\. Verificar el hash MD5 publicado.

3\. Crear una copia de trabajo para no contaminar la evidencia original.

4\. Descomprimir `image.zip`.

5\. Cargar la imagen en \*\*Autopsy\*\* como sistema \*\*DOS / FAT12\*\*.

6\. Ejecutar funciones de apoyo como:

&#x20;  - cálculo de hash,

&#x20;  - extracción de strings,

&#x20;  - extracción de espacio no asignado,

&#x20;  - revisión de metadatos,

&#x20;  - análisis hexadecimal,

&#x20;  - exportación de contenido bruto (`raw`),

&#x20;  - reconstrucción manual de archivos cuando la FAT no mostraba todo el contenido. :contentReference\[oaicite:4]{index=4}



\## 5. Procedimiento en Autopsy



\### 5.1 Preparación de la evidencia

\- Se descarga `image.zip`.

\- Se verifica el MD5 publicado.

\- Se trabaja sobre una copia.

\- Se descomprime el ZIP para obtener el archivo `image`.

\- Se carga la imagen en Autopsy como evidencia FAT12. :contentReference\[oaicite:5]{index=5}



\### 5.2 Indexación y análisis inicial

Dentro de Autopsy se activan opciones de análisis como:

\- \*\*Extract Strings\*\*

\- \*\*Extract Unallocated\*\*

\- revisión de \*\*Image Details\*\*

\- revisión de \*\*FAT contents\*\*

\- revisión de \*\*File Analyze\*\*. :contentReference\[oaicite:6]{index=6}



\### 5.3 Examen de archivos relevantes



\#### a) `coverpage.jpg`

Autopsy muestra que el archivo presenta una inconsistencia: el tamaño lógico del archivo es mucho mayor que el espacio aparentemente asignado en la FAT. Por eso fue necesario revisar metadatos, inspeccionar el contenido en hexadecimal, ubicar la firma JPEG/JFIF y reconstruir manualmente los sectores que contenían la imagen para exportarla correctamente. El walkthrough indica que el archivo requería reconstrucción desde los sectores 73 a 103 para recuperar el JPEG completo. :contentReference\[oaicite:7]{index=7}



\#### b) `Jimmy Jungle.doc`

Autopsy reconoce este archivo como \*\*eliminado\*\*. Luego, mediante revisión de metadatos y de los sectores asociados, se exporta el contenido bruto y se renombra con extensión `.doc` para abrirlo y examinarlo. :contentReference\[oaicite:8]{index=8}



\#### c) `Scheduled Visits.exe`

El análisis de metadatos mostró que el archivo no debía tratarse directamente como un ejecutable normal. Al exportarlo y revisar su estructura, se evidenció que realmente correspondía a un archivo comprimido/protegido, dentro del cual existía una hoja de cálculo llamada `Scheduled Visits.xls`. Como una primera extracción quedó incompleta, fue necesario ampliar el rango de bloques exportados hasta reconstruir el contenido usable. Luego se aplicó la contraseña encontrada en `coverpage.jpg` para abrirlo. :contentReference\[oaicite:9]{index=9}



\## 6. Respuestas del caso



\### 6.1 ¿Quién es el proveedor de marihuana de Joe Jacobs y cuál es la dirección listada del proveedor?



El proveedor es \*\*Jimmy Jungle\*\*.  

La dirección listada es:



\*\*626 Jungle Ave, Apt 2, Jungle, NY 11111\*\*. :contentReference\[oaicite:10]{index=10}



\---



\### 6.2 ¿Qué dato crucial está disponible dentro de `coverpage.jpg` y por qué el dato es crucial?



El dato crucial hallado dentro de `coverpage.jpg` es la cadena:



\*\*`pw=goodtimes`\*\*. :contentReference\[oaicite:11]{index=11}



Ese dato es crucial porque corresponde a la \*\*contraseña\*\* necesaria para acceder al archivo protegido asociado a `Scheduled Visits`, dentro del cual se encuentra la hoja de cálculo con información de visitas/programación. Esa información permite vincular a Joe Jacobs con otras escuelas aparte de Smith Hill, lo cual fortalece la hipótesis de distribución en múltiples colegios. :contentReference\[oaicite:12]{index=12}



\*\*Nota:\*\* en el resumen final del repositorio aparece una errata escribiendo `gootimes`, pero en el desarrollo técnico paso a paso se muestra claramente la recuperación de la cadena \*\*`pw=goodtimes`\*\*, que es la que efectivamente se usa para extraer el archivo protegido. :contentReference\[oaicite:13]{index=13}



\---



\### 6.3 ¿Qué otras escuelas vecinas a Smith Hill frecuentaba Joe Jacobs?



Además de \*\*Smith Hill High School\*\*, Joe Jacobs frecuentaba las siguientes escuelas:



\- \*\*Key High School\*\*

\- \*\*Leetch High School\*\*

\- \*\*Birard High School\*\*

\- \*\*Richter High School\*\*

\- \*\*Hull High School\*\* :contentReference\[oaicite:14]{index=14}



\---



\### 6.4 Para cada archivo, ¿qué procesos hizo el sospechoso para enmascararlo de otros?



\#### `Jimmy Jungle.doc`

\- El archivo fue \*\*eliminado\*\* del sistema de archivos, pero seguía recuperable desde la imagen del disquete. :contentReference\[oaicite:15]{index=15}



\#### `coverpage.jpg`

\- El archivo presentaba una \*\*asignación inconsistente/incompleta en la FAT\*\*, por lo que no podía visualizarse normalmente como una imagen JPEG estándar.

\- Además, la contraseña estaba \*\*oculta al final del contenido recuperado\*\*, de modo que no era visible a simple vista sin inspección profunda de strings/hex.  

Esto sugiere una maniobra de ocultamiento basada en estructura FAT y recuperación manual, más que en simple renombrado. Esta parte es una \*\*inferencia técnica\*\* a partir de la inconsistencia descrita en los metadatos y del proceso de carving manual mostrado en el walkthrough. :contentReference\[oaicite:16]{index=16}



\#### `Scheduled Visits.exe`

\- El archivo fue \*\*disfrazado mediante cambio de extensión\*\*.

\- En realidad, su contenido correspondía a un archivo comprimido/protegido que contenía `Scheduled Visits.xls`.

\- Además, estaba \*\*protegido por contraseña\*\*, lo que añadía una segunda capa de ocultamiento. :contentReference\[oaicite:17]{index=17}



\---



\### 6.5 ¿Qué procesos realizó el analista para examinar el contenido completo de cada archivo?



\#### Sobre la evidencia general

\- Verificación del hash publicado.

\- Trabajo sobre copia de la evidencia.

\- Descompresión del ZIP.

\- Carga en Autopsy como imagen FAT12.

\- Extracción de strings y contenido no asignado.

\- Revisión de metadatos, FAT contents y vista hexadecimal. :contentReference\[oaicite:18]{index=18}



\#### Para `coverpage.jpg`

\- Revisión en \*\*HEX Display\*\*.

\- Confirmación de inconsistencia entre tamaño lógico y sectores visibles en FAT.

\- Cálculo del número de sectores necesarios.

\- Búsqueda manual de la firma \*\*JPEG/JFIF\*\*.

\- Reconstrucción manual del rango de sectores.

\- Exportación del contenido bruto y cambio de extensión a `.jpeg`.

\- Revisión adicional del contenido para ubicar la cadena `pw=goodtimes`. :contentReference\[oaicite:19]{index=19}



\#### Para `Jimmy Jungle.doc`

\- Revisión de metadatos.

\- Identificación del archivo como borrado.

\- Determinación de sectores asociados.

\- Exportación del contenido bruto.

\- Renombrado del archivo exportado a `.doc`.

\- Apertura del documento para extraer la información del proveedor. :contentReference\[oaicite:20]{index=20}



\#### Para `Scheduled Visits.exe`

\- Revisión de metadatos.

\- Detección de que la primera extracción no contenía todo el archivo.

\- Ampliación del rango de bloques exportados.

\- Exportación del contenido reconstruido.

\- Cambio de extensión a un formato comprimido manejable.

\- Descompresión del archivo.

\- Uso de la contraseña `goodtimes`.

\- Apertura del archivo `Scheduled Visits.xls` para revisar el contenido. :contentReference\[oaicite:21]{index=21}



\## 7. Hallazgos forenses principales



El análisis del disquete permite establecer tres hallazgos relevantes:



1\. \*\*Identificación del proveedor\*\*

&#x20;  - Se recuperó un documento que identifica como proveedor a \*\*Jimmy Jungle\*\*, con dirección física específica. :contentReference\[oaicite:22]{index=22}



2\. \*\*Existencia de mecanismo deliberado de ocultamiento\*\*

&#x20;  - Los archivos no estaban disponibles de forma normal; algunos estaban eliminados, otros parcialmente ocultos o disfrazados mediante cambio de extensión y protección por contraseña. :contentReference\[oaicite:23]{index=23}



3\. \*\*Vinculación con otras escuelas\*\*

&#x20;  - El contenido recuperado muestra que Joe Jacobs no frecuentaba únicamente Smith Hill, sino también varios colegios adicionales, lo que refuerza la hipótesis de actividad reiterada y no aislada. :contentReference\[oaicite:24]{index=24}



\## 8. Conclusión



Del examen forense de la imagen del disquete se concluye que existe evidencia digital útil para la investigación contra Joe Jacobs. Se logró:



\- identificar a su proveedor de marihuana,

\- recuperar una contraseña escondida dentro de un archivo aparentemente inocuo,

\- abrir un archivo protegido que contenía información operativa relevante,

\- y establecer que Jacobs frecuentaba múltiples escuelas además de Smith Hill. :contentReference\[oaicite:25]{index=25}



La evidencia sugiere además que el sospechoso intentó dificultar el análisis mediante:

\- borrado de archivos,

\- alteración/aprovechamiento de la estructura FAT,

\- cambio de extensiones,

\- compresión y protección por contraseña. :contentReference\[oaicite:26]{index=26}



