# Laboratorio Forense Digital con Autopsy

## Grupo
Equipo A  
##Integrante: 
Mayor Galindo Durán Gildardo
Mayor Varón Bravo Manuel
Mayor Florez Jaimes Juan
Capitán Mesa Mantilla Yesid
my romero fernandez nelson

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
<img width="1409" height="607" alt="image" src="https://github.com/user-attachments/assets/e27b1300-05cc-4ad9-8bb9-87356f0d557e" />

## Hallazgos

### Proveedor de droga
Nombre: Jimmy Jungle  
Dirección:  
626 Jungle Ave Apt 2  
Jungle, NY 11111  

<img width="1883" height="883" alt="image" src="https://github.com/user-attachments/assets/ce9fb449-4460-4de7-a880-535aac9f1b1a" />


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

## EVIDENCIAS

<img width="1702" height="897" alt="846fdf7d-c228-40a0-96a9-5b0e5f079755" src="https://github.com/user-attachments/assets/3c80da94-01b3-4e96-a13b-31dd388d3ed4" />


<img width="1393" height="402" alt="9f38e6eb-05e9-4ed2-b75e-f6f7d5eea851" src="https://github.com/user-attachments/assets/a0c5ba2c-6bcb-443c-a8d5-290402e163b7" />

<img width="1697" height="252" alt="503b447b-0d95-4cc9-9de5-95a0bd35339c" src="https://github.com/user-attachments/assets/08cce4a5-c42e-40e6-933e-4d5e52b4590f" />

<img width="1832" height="895" alt="a4417d71-7788-4438-9a8f-b46f5ba30cdc" src="https://github.com/user-attachments/assets/1a23200c-0d59-459e-b53c-a6e99af65056" />

<img width="1803" height="887" alt="48eb88e6-cd24-4c0a-9a41-e2b56d042cb6" src="https://github.com/user-attachments/assets/8a18f4cb-2f3d-4eda-9349-d419e160eb84" />

<img width="1902" height="895" alt="58982906-bf6e-4beb-95d5-1e7faaf569c5" src="https://github.com/user-attachments/assets/f4cd4acb-f4bb-46df-aa7f-895b8d2330f1" />

<img width="1916" height="875" alt="356dc803-4e39-412c-b3cf-790372028535" src="https://github.com/user-attachments/assets/7f34ebe8-6aaf-4a28-a816-e014ab55d7a6" />

<img width="1893" height="622" alt="9857b08a-b897-438a-b488-7d2cc70cd45f" src="https://github.com/user-attachments/assets/6f8aaafb-70be-4e3b-8c95-254d513e2795" />






