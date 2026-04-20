# Laboratorio Forense Digital con Autopsy

## Grupo
Equipo A  
##Integrante: 
Mayor Galindo Durán Gildardo
Mayor Varón Bravo Manuel
Mayor Florez Jaimes Juan
Capitán Mesa Mantilla Yesid

## Objetivo
Analizar una evidencia digital (image.zip) utilizando Autopsy para identificar información relevante en un caso forense.

## Herramientas utilizadas
- Autopsy
- Windows
- Certutil (para verificar hash MD5)

## Procedimiento

1. Se descargó el archivo image.zip.
2. Se verificó la integridad del archivo con MD5 usando el comando:
   certutil -hashfile image.zip MD5
3. Se confirmó que el hash coincidía con el proporcionado.
4. Se descomprimió el archivo.
5. Se cargó la imagen en Autopsy como Disk Image.
6. Se ejecutó el análisis automático.
7. Se exploraron las secciones:
   - Data Sources
   - $CarvedFiles
   - $Unalloc
8. Se recuperaron archivos eliminados.
9. Se analizó el contenido y los metadatos.

## Hallazgos

### Proveedor de droga
Nombre: Jimmy Jungle  
Dirección:  
626 Jungle Ave Apt 2  
Jungle, NY 11111  

### Dato clave en coverpage.jpg
Se encontró referencia a una imagen relacionada con drogas (High Times Magazine).  
Además, se identificó una posible contraseña:  
pw=goodtimes  

Este dato es importante porque permite acceder a archivos protegidos.

### Escuelas relacionadas
Se evidencia que el sospechoso vendía droga a estudiantes de secundaria, según el texto:
"targeting the high school students"

### Técnicas de ocultamiento

- Eliminación de archivos
- Ocultamiento en espacio no asignado ($Unalloc)
- Fragmentación de datos
- Uso de contraseñas
- Alteración de estructura del sistema de archivos

### Proceso del analista

- Verificación de integridad con MD5
- Extracción de evidencia
- Carga en Autopsy
- Análisis por tipos de archivo
- Recuperación de archivos eliminados
- Análisis de contenido y metadatos

## Glosario

MD5: Huella digital de un archivo que permite verificar su integridad.  
Data Source: Fuente de datos que se analiza en Autopsy.  
Carving: Técnica para recuperar archivos eliminados.  
Unallocated Space ($Unalloc): Espacio donde quedan datos borrados.  
Disk Image: Copia completa de un disco para análisis forense.

## Conclusión

Se logró identificar evidencia de actividad ilícita relacionada con distribución de drogas.  
Se encontraron comunicaciones, direcciones y métodos de ocultamiento de información.  
También se evidenció que el sospechoso intentó eliminar archivos, los cuales fueron recuperados mediante técnicas forenses.
<img width="1702" height="897" alt="846fdf7d-c228-40a0-96a9-5b0e5f079755" src="https://github.com/user-attachments/assets/3c80da94-01b3-4e96-a13b-31dd388d3ed4" />

