# Marcos Normativos y Aplicación Técnica en Informática Forense

Este taller tiene como objetivo analizar profundamente la estructura técnica de un estándar o guía, permitiendo extrapolar dichos conceptos a un escenario de litigio o respuesta a incidentes real.

## 1. Estructura Organizativa

* **Modalidad:** Trabajo colaborativo en gruposde trabajo.
* **Asignación:** Cada grupo debe  tomar un documento técnico específico (Estándar ISO, Guía NIST o Manual de Buenas Prácticas) para evitar la duplicidad de temas en el aula.
* **Entregables:**
1. Guía "Lite" de Interpretación (PDF). Se trata de una guía desarrollada por el grupoque cumplaon paramétros técnicos de guía.  Ver  directrices al finalde este README
2. Presentación Ejecutiva (PPT  o PDF).
3. Caso de Aplicación Real (Análisis Crítico).

---

## 2. Componentes del Taller

### A. Guía Lite de Interpretación (Máximo 3 páginas)

El grupo debe sintetizar el documento técnico asignado eliminando la redundancia burocrática y enfocándose en la utilidad práctica. Debe contener:

* **Mapa de Procesos:** Diagrama de flujo que resuma las fases propuestas por el estándar.
* **Checklist de Cumplimiento:** Lista de requisitos obligatorios para que una pericia sea válida bajo ese marco.
* **Glosario Técnico-Jurídico:** Definición de los 5 términos más críticos del documento.
* **Limitaciones:** ¿Qué escenarios no cubre el estándar?

### B. Presentación en Clase (20 Minutos)

La exposición debe seguir un tono profesional, similar a la sustentación de un peritaje ante un tribunal o junta directiva. Estructura sugerida:

* **Contexto:** Origen y relevancia actual del estándar.
* **Núcleo Técnico:** Explicación de los principios de identificación, recolección y preservación.
* **Defensa de Evidencia:** Cómo este estándar protege la cadena de custodia y la integridad (*hash*) de los datos.
* **Conclusiones:** Valor agregado de su implementación en una organización.

### C. Caso de Aplicación Real

Los estudiantes deben investigar un caso judicial o un incidente de ciberseguridad documentado donde la aplicación (o falta de ella) del estándar asignado haya sido determinante.

* **Descripción del incidente:** Qué ocurrió y qué tipo de infraestructura fue afectada.
* **Análisis Forense:** ¿Cómo se aplicó el estándar en la recolección de pruebas?
* **Veredicto/Resultado:** ¿Fue la evidencia digital declarada admisible? ¿Por qué?

---

## 3. Temas para Asignación por Grupo

| Grupo | Documento Asignado | Enfoque Sugerido |
| --- | --- | --- |
| **G1** | ISO/IEC 27037 | Identificación y recolección inicial en la escena. |
| **G2** | NIST SP 800-86 | Integración de forense en respuesta a incidentes. |
| **G3** | ISO/IEC 27042 | Análisis e interpretación de datos ya adquiridos. |
| **G4** | RFC 3227 | Gestión de la volatilidad y orden de recolección. |
| **G5** | Guía ACPO | Principios de responsabilidad y competencia del perito. |


---

## 4. Matriz de Evaluación (Rúbrica)

| Criterio | Excelente (5.0) | Aceptable (3.5) | Insuficiente (2.0) |
| --- | --- | --- | --- |
| **Síntesis Técnica** | Logra resumir el estándar sin perder rigor técnico. | Resume el contenido pero omite detalles críticos. | Es una copia literal del documento original. |
| **Aplicación Real** | El caso es relevante y el análisis es profundo. | El caso es superficial o poco relacionado. | No presenta un caso real documentado. |
| **Dominio Escénico** | Lenguaje técnico preciso y responde con solvencia. | Lenguaje adecuado pero duda ante cuestionamientos. | Lectura total de diapositivas y falta de dominio. |
| **Estructura** | Cumple con todos los ítems de la guía lite. | Omite uno de los componentes (ej. Checklist). | Entrega incompleta o fuera de formato. |

---

## 5. Instrucciones de Entrega

Se debe cargar en README  por cada grupo y anexo los archivos solicitados. Se recomienda que la presentación incluya el uso de herramientas de visualización de datos o diagramación profesional para los mapas de procesos.


---
# Pautas Guía "Lite" de Interpretación (PDF)

A continuación se presentan las directrices clave para la estructuración y elaboración de guías técnicas orientadas a la adopción de estándares, marcos de trabajo o modelos en informática forense. Este instrumento ha sido diseñado para garantizar el rigor técnico, la preservación de la cadena de custodia y la repetibilidad del proceso.

---

## 1. Estructura Fundamental de la Guía

Cada guía técnica debe contener, como mínimo, las siguientes secciones:

* **Objetivo y Alcance:** Definición clara de qué se busca estandarizar (ej. adquisición de memoria RAM, análisis de registros de sistema) y los límites de la aplicación técnica.
* **Marco de Referencia:** Identificación explícita del estándar o framework base (ej. ISO/IEC 27037, NIST SP 800-86).
* **Requisitos Previos y Herramientas:** Listado de hardware homologado, software forense (licenciado o *open-source* validado) y entornos controlados requeridos.
* **Procedimiento Paso a Paso:** Desglose secuencial de las acciones técnicas, comandos específicos y configuraciones necesarias.
* **Aseguramiento de la Prueba:** Mecanismos de validación (funciones hash $SHA-256$ o $SHA-3$) y control de la cadena de custodia.

---

## 2. Directrices de Redacción y Formato

* **Imperativo y Orientado a la Acción:** Se deben redactar las instrucciones utilizando verbos en infinitivo o imperativo, evitando ambigüedades (ej. *"Ejecutar la herramienta X con los parámetros Y"*, en lugar de *"Se recomienda usar la herramienta"*).
* **Enfoque de Repetibilidad:** Las instrucciones deben ser lo suficientemente detalladas para que un par técnico obtenga exactamente los mismos resultados ante las mismas condiciones.
* **Soportes Visuales Obligatorios:** Inclusión de diagramas de flujo de decisiones frente a incidentes y capturas de pantalla de los comandos críticos ejecutados.

---

# Guía

A continuación se presentan las directrices para estructurar la sección de **Caso de Aplicación Real (Análisis Crítico)** dentro de las guías técnicas, diseñada para evaluar la capacidad de los estudiantes para transferir la teoría a escenarios complejos y reales.

---

## Directrices para el "Caso de Aplicación Real (Análisis Crítico)"

### 1. Criterios de Selección del Caso

* **Complejidad Adecuada:** El caso debe basarse en un incidente real o simulado con alta fidelidad (ej. filtración de datos por un actor interno, ataque de *ransomware* o compromiso de infraestructura crítica).
* **Desafíos Técnicos y Legales:** Debe incluir dilemas que fuercen el análisis, como evidencia parcialmente corrupta, el uso de técnicas antiforenses por parte del atacante o limitaciones jurisdiccionales para la cadena de custodia.

### 2. Estructura de la Sección en la Guía

El apartado debe organizarse bajo los siguientes tres componentes:

* **Contexto del Incidente:** Breve descripción del entorno afectado, la cronología de los hechos observados y los tipos de artefactos o evidencias disponibles (imágenes de disco, volcados de memoria, *logs*).
* **Preguntas Orientadoras de Análisis Crítico:** Cuestionamientos que eviten respuestas binarias o mecánicas. Se deben formular preguntas enfocadas en la toma de decisiones:
* *¿Qué estándar o marco de trabajo (NIST, ISO) es el más adecuado para el abordaje inicial de esta escena digital y por qué?*
* *Frente al dilema entre la volatilidad de los datos y la preservación de la evidencia en este escenario específico, ¿cuál debió ser el orden de prioridad en la adquisición?*
* *Identifique posibles fallas o debilidades en el manejo de la cadena de custodia descrita en el caso y proponga la acción correctiva.*


* **Entregable Esperado:** Definición clara del producto que el estudiante debe consolidar (ej. un Informe Pericial Forense o un Dictamen Técnico) con un enfoque ejecutivo y sustentación metodológica.

### 3. Criterios de Evaluación del Análisis

Para orientar la calificación del taller, se deben fijar pautas que evalúen:

* **Rigor Metodológico:** Capacidad de justificar cada acción técnica con base en el estándar adoptado.
* **Pensamiento Crítico:** Habilidad para detectar anomalías, contradicciones o malas prácticas en el manejo original del caso.
* **Claridad en la Argumentación:** Capacidad de traducir hallazgos técnicos complejos en conclusiones comprensibles para audiencias no técnicas (como jueces o comités directivos).