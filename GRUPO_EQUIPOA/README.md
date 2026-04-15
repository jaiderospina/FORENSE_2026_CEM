# Laboratorio Autopsy

Grupo: Equipo A

Este laboratorio corresponde al análisis forense con Autopsy.
# 🧪 Laboratorio Forense Digital con Autopsy

## 👥 Grupo

Equipo A
Integrante: Andres Mesa

---

## 🎯 Objetivo

Analizar una evidencia digital (image.zip) utilizando la herramienta Autopsy para identificar información relevante en un caso forense.

---

## 🧰 Herramientas utilizadas

* Autopsy
* Sistema operativo Windows
* Certutil (verificación de hash MD5)

---

## 🔍 Procedimiento

1. Se descargó el archivo `image.zip` desde el repositorio.

2. Se verificó la integridad mediante hash MD5:

   ```bash
   certutil -hashfile image.zip MD5
   ```

3. Se confirmó coincidencia con el hash proporcionado.

4. Se descomprimió el archivo.

5. Se cargó la imagen en Autopsy como:

   ```text
   Disk Image or VM File
   ```

6. Se ejecutó el análisis automático.

7. Se exploraron:

   * Data Sources
   * $CarvedFiles
   * $Unalloc

8. Se recuperaron archivos eliminados.

9. Se analizó el contenido textual y metadatos.

---

## 🧠 Hallazgos

### 🧑 Proveedor de droga

**Nombre:** Jimmy Jungle
**Dirección:**
626 Jungle Ave Apt 2
Jungle, NY 11111

---

### 🖼 Dato clave en coverpage.jpg

Se identifica referencia a una imagen relacionada con droga (“High Times Magazine”) y evidencia de intercambio entre sospechosos.
Además, se detecta posible contraseña:

```text
pw=goodtimes
```

Este dato es crucial porque permite acceder a archivos protegidos.

---

### 🏫 Escuelas relacionadas

Se evidencia que el sospechoso distribuye droga a estudiantes de secundaria:

```text
"targeting the high school students"
```

---

### 🕵️ Técnicas de ocultamiento

* Eliminación de archivos
* Fragmentación de datos
* Uso de contraseña
* Ocultamiento en espacio no asignado ($Unalloc)
* Manipulación de estructura del sistema de archivos

---

### 🧪 Proceso del analista

* Verificación de integridad (MD5)
* Extracción de evidencia
* Carga en Autopsy
* Análisis por tipos de archivo
* Recuperación mediante carving
* Análisis de texto y metadatos

---

## 📚 Glosario

* **MD5:** Huella digital de un archivo que permite verificar su integridad.
* **Data Source:** Fuente de datos analizada en Autopsy.
* **Carving:** Técnica para recuperar archivos eliminados.
* **Unallocated Space ($Unalloc):** Espacio del disco donde quedan datos borrados.
* **Disk Image:** Copia exacta de un disco utilizada en análisis forense.

---

## 🧾 Conclusión

El análisis permitió identificar evidencia clara de actividad ilícita relacionada con distribución de drogas, incluyendo comunicación entre sospechosos, direcciones, métodos de ocultamiento y archivos protegidos. Se evidenció intento de eliminación de información, la cual fue recuperada mediante técnicas forenses.

---
