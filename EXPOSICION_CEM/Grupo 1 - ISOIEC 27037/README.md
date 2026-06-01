# GUÍA LITE DE INTERPRETACIÓN ISO/IEC 27037

## Directrices para la Identificación, Recolección, Adquisición y Preservación de Evidencia Digital

---

### A.1 Objetivo y Alcance

La presente guía sintetiza los lineamientos de la norma ISO/IEC 27037:2012 para orientar al personal de primera respuesta digital (DEFR) y a los especialistas forenses en las etapas críticas de manejo de evidencia en escenas digitales.

Su aplicación garantiza que los elementos probatorios sean admisibles ante la Fiscalía General de la Nación y la jurisdicción colombiana, conforme a la Ley 906 de 2004 (Código de Procedimiento Penal.

El estándar aplica a:
* Dispositivos de almacenamiento físico (discos duros, SSD, USB).
* Sistemas en red (servidores, NAS, NVR).
* Dispositivos móviles.
* Sistemas de punto de venta (POS).
* Sistemas CCTV digitales.
* Cualquier contenedor de datos con valor probatorio potencial.

---

### A.2 Mapa de Procesos ISO/IEC 27037

El siguiente diagrama resume las fases secuenciales que establece la norma[cite: 8]. [cite_start]Cada etapa es condición necesaria para la validez de la siguiente:

#### FASE 1 — IDENTIFICACIÓN DE EVIDENCIA POTENCIAL 
* ► Reconocimiento visual de la escena sin alterar el entorno.
* ► Documentación fotográfica y de video del estado inicial (antes de tocar).
* ► Inventario de todos los dispositivos digitales presentes.
* ► Evaluación de volatilidad: datos en RAM > conexiones activas > archivos en uso > datos en disco.

▼

#### FASE 2 — RECOLECCIÓN Y ADQUISICIÓN
* ► Adquisición forense: imagen bit-a-bit (dd, FTK Imager, Autopsy).
* ► Uso obligatorio de bloqueadores de escritura (hardware/software).
* ► Cálculo inmediato de hash SHA-256 del original y de la copia.
* ► Verificación de integridad: hash original = hash copia (coincidencia 100%).

▼

#### FASE 3 — PRESERVACIÓN Y CADENA DE CUSTODIA
* ► Embalaje antiestático con etiquetado forense único (número de caso, fecha, perito).
* ► Registro de cada transferencia de custodia con firma y timestamp.
* ► Almacenamiento en repositorio seguro con control de acceso biométrico o criptográfico.
* ► Verificación periódica de integridad durante almacenamiento prolongado.

---

### A.3 Checklist de Cumplimiento Forense

Los siguientes requisitos son obligatorios para que una pericia sea válida bajo ISO/IEC 27037. La omisión de cualquier ítem puede comprometer la admisibilidad de la prueba:

| # | Requisito de Cumplimiento | Estado |
|---|---|---|
| 1 | Documentar el estado inicial de la escena antes de cualquier intervención física | O Cumple / O Falla |
| 2 | Emplear bloqueador de escritura certificado antes de conectar cualquier medio original | O Cumple / O Falla |
| 3 | Calcular y registrar hash SHA-256 del medio original inmediatamente | O Cumple / O Falla |
| 4 | Verificar coincidencia exacta de hashes (original vs. copia forense) | O Cumple / O Falla |
| 5 | Registrar en acta: dispositivo, número de serie, IMEI o MAC, estado físico visible | O Cumple / O Falla |
| 6 | Iniciar cadena de custodia desde el momento de la recolección | O Cumple / O Falla |
| 7 | Embalar el dispositivo original en bolsa antiestática sellada y etiquetada | O Cumple / O Falla |
| 8 | Usar entorno forense aislado (Faraday) para dispositivos móviles o con conectividad | O Cumple / O Falla  |
| 9 | Todo el trabajo analítico se realiza SOLO sobre la copia forense, nunca sobre el original | O Cumple / O Falla  |
| 10 | El informe pericial includes metodología, herramientas con versión, y hallazgos verificables | O Cumple / O Falla  |

---

### A.4 Glosario Técnico-Jurídico [cite: 14]

| Término | Definición |
|---|---|
| **Evidencia Digital** | Todo dato o información de valor probatorio que ha sido transmitido o almacenado en formato binario, incluyendo archivos, metadatos, registros de sistema, correos electrónicos y volcados de memoria. [cite_start]Jurídicamente, en Colombia se rige por el Artículo 275 de la Ley 906 de 2004.  |
| **Cadena de Custodia** | Registro cronológico, formal e ininterrumpido de cada persona que ha tenido acceso, posesión o control sobre la evidencia desde su recolección hasta su presentación en juicio. [cite_start]Su ruptura puede derivar en la inadmisibilidad de la prueba por vulneración al debido proceso.  |
| **Hash Criptográfico** | Función matemática determinista (SHA-256, SHA-3) que produce una huella digital de longitud fija a partir de cualquier conjunto de datos. Dos conjuntos de datos idénticos producen el mismo hash; cualquier modificación, por mínima que sea, produce un hash completamente diferente. Es el mecanismo técnico que garantiza la integridad de la evidencia.  |
| **DEFR** *(Digital Evidence First Responder)* | Persona certificada y autorizada para identificar, recolectar y preservar evidencia digital en la escena del incidente. [cite_start]Bajo ISO/IEC 27037, debe demostrar competencia técnica verificable y actuar dentro de límites de autoridad legal previamente establecidos.  |
| **Imagen Forense** | Copia bit-a-bit de un medio de almacenamiento que replica exactamente cada sector, incluyendo espacios no asignados, archivos eliminados y artefactos del sistema de archivos. [cite_start]Se diferencia de una copia convencional en que preserva la totalidad de los datos y su hash es verificablemente idéntico al del medio original. |

---

### A.5 Limitaciones del Estándar ISO/IEC 27037 [cite: 20]

La norma no cubre de manera específica los siguientes escenarios, que requieren remitirse a otros estándares o marcos complementarios:

| Limitación | Estándar Complementario Sugerido |
|---|---|
| Análisis e interpretación profunda de la evidencia recolectada | ISO/IEC 27042 — Análisis e interpretación de evidencia digital |
| Investigaciones en entornos de computación en la nube *(cloud forensics)* | ISO/IEC 27050 — eDiscovery; NIST SP 800-210  |
| Respuesta y gestión de incidentes de ciberseguridad | ISO/IEC 27035 — Gestión de Incidentes  |
| Procedimientos específicos de análisis de malware o amenazas APT | NIST SP 800-86 — Guía de Integración de Técnicas Forenses  |
| Evidencia digital en entornos de IoT o dispositivos embebidos no estándar | Sin estándar ISO específico *(área en desarrollo normativo)*  |
