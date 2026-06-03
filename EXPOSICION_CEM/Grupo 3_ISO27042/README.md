# ISO/IEC 27042:2015
## Guía de Análisis e Interpretación de Evidencia Digital

> **Título oficial:** Information technology — Security techniques — Guidelines for the analysis and interpretation of digital evidence
> **Organismo:** ISO/IEC JTC 1 / Subcomité SC 27 — IT Security Techniques
> **Edición:** Primera | Publicado: 2015-06-15 | Estado: Vigente

---

## 1. ¿Qué es ISO/IEC 27042:2015?

ISO/IEC 27042:2015 es un **estándar internacional de seguridad de la información** que establece las directrices para la conducción del análisis e interpretación de evidencia digital potencial en investigaciones de incidentes de seguridad. Su propósito es garantizar que los resultados del proceso forense sean:

- **Válidos:** fundamentados en métodos técnicamente sólidos y documentados.
- **Reproducibles:** cualquier investigador competente, ante la misma evidencia, obtiene los mismos resultados.
- **Admisibles:** cumplen con los requisitos técnicos necesarios para ser presentados en procesos judiciales, administrativos o disciplinarios.

El estándar no define procedimientos operacionales rígidos, sino un **marco de principios y buenas prácticas** que permite al investigador justificar cada decisión metodológica y demostrar que sus procesos son aptos para el propósito (`fit for purpose`).

### ¿Por qué es necesario?

El análisis de evidencia digital es un proceso complejo que puede abordarse con múltiples métodos. Ante el mismo conjunto de datos, distintos investigadores podrían aplicar herramientas o técnicas diferentes y llegar a conclusiones divergentes. ISO/IEC 27042 establece el estándar mínimo común que permite:

1. Comparar resultados entre distintos equipos forenses.
2. Justificar la selección de un método frente a alternativas.
3. Proteger la cadena de custodia durante el análisis.
4. Demostrar competencia del equipo ante una autoridad judicial.

---

## 2. Alcance y Límites

### ¿Qué cubre?

| Aspecto | Dentro del Alcance |
|---|---|
| **Etapa del proceso** | Análisis, modelado analítico, interpretación y reporte (post-adquisición) |
| **Tipo de evidencia** | Evidencia digital en formato binario: imágenes de disco, volcados de RAM, capturas de red, logs |
| **Modelos analíticos** | Análisis estático (sobre imágenes) y análisis en vivo (sobre sistemas activos) |
| **Contexto** | Incidentes de seguridad de la información, investigaciones corporativas, procesos judiciales |
| **Actores** | Equipos investigadores forenses, peritos designados por autoridad judicial o parte interesada |

### ¿Qué NO cubre?

| Escenario | Marco Correcto |
|---|---|
| Identificación, recolección y adquisición de evidencia en escena | ISO/IEC 27037:2012 |
| Gestión operativa de incidentes de seguridad | ISO/IEC 27035 (partes 1-3) |
| Preparación organizacional previa al incidente | ISO/IEC 30121:2015 |
| Admisibilidad legal según cada jurisdicción | Legislación procesal local |
| Evidencia cifrada sin clave recuperable | ISO/IEC 27040 + peritaje criptográfico |
| Entornos cloud multi-jurisdiccionales | ISO/IEC 27050 + acuerdos MLAT |
| Sistemas IoT, SCADA y hardware propietario | NIST SP 800-82 / ISA-IEC 62443 |

> **Regla de oro:** ISO/IEC 27042 **inicia donde termina ISO/IEC 27037**. No puede aplicarse si la evidencia no fue adquirida y preservada correctamente.

---

## 3. Posición en el Ecosistema Normativo

```
                    ┌─────────────────────────┐
                    │   ISO/IEC 30121:2015    │  ← Forensic Readiness
                    │  (Preparación previa)   │     (antes del incidente)
                    └────────────┬────────────┘
                                 │
                    ┌────────────▼────────────┐
                    │   ISO/IEC 27035 (1-3)   │  ← Gestión de Incidentes
                    │  (Respuesta operativa)  │
                    └────────────┬────────────┘
                                 │
                    ┌────────────▼────────────┐
                    │   ISO/IEC 27043:2015    │  ← Framework General
                    │  (Principios y clases   │     Define las clases de proceso
                    │   de proceso)           │     investigativo
                    └────────────┬────────────┘
                                 │
                    ┌────────────▼────────────┐
                    │   ISO/IEC 27037:2012    │  ← PRERREQUISITO DIRECTO
                    │  (Identificación,       │     Adquisición y preservación
                    │  adquisición y          │     de evidencia digital
                    │  preservación)          │
                    └────────────┬────────────┘
                                 │
                    ┌────────────▼────────────┐
                    │ ■ ISO/IEC 27042:2015 ■  │  ← ESTÁNDAR CENTRAL
                    │  Análisis e             │     Análisis, interpretación
                    │  Interpretación de      │     y reporte de evidencia
                    │  Evidencia Digital      │     digital
                    └────────────┬────────────┘
                                 │
           ┌─────────────────────┼──────────────────────┐
           │                     │                      │
  ┌────────▼────────┐  ┌────────▼────────┐  ┌─────────▼───────┐
  │  ISO/IEC 27041  │  │  ISO/IEC 27050  │  │  NIST SP 800-86 │
  │  (Idoneidad de  │  │  (eDiscovery)   │  │  (Forense en    │
  │  métodos)       │  │                 │  │  respuesta a    │
  └─────────────────┘  └─────────────────┘  │  incidentes)    │
                                             └─────────────────┘
```

### Relación con cada estándar

| Estándar | Relación con ISO/IEC 27042 |
|---|---|
| **ISO/IEC 27037:2012** | Prerrequisito directo. 27042 asume que la evidencia fue adquirida correctamente. |
| **ISO/IEC 27043:2015** | Marco superior. Define las clases de proceso (Readiness, Initialization, Acquisitive, Investigative) donde se ubica 27042. |
| **ISO/IEC 27041** | Complementario. Asegura que los métodos aplicados en 27042 son apropiados y han sido probados. |
| **ISO/IEC 27035** | Contexto operativo. 27042 se ejecuta dentro del proceso de gestión de incidentes de 27035. |
| **ISO/IEC 30121:2015** | Fase previa estratégica. La organización debe estar preparada (forensic readiness) antes de necesitar aplicar 27042. |
| **ISO/IEC 27050** | Específico para eDiscovery. Complementa 27042 en contextos legales de descubrimiento electrónico. |

---

## 4. Principios Fundamentales

ISO/IEC 27042 se sustenta en cinco principios que deben ser demostrados en cada proceso investigativo:

### 4.1 Continuidad (§5.2)

La evidencia digital debe mantenerse en un estado conocido e inalterado desde el momento de su recolección hasta la presentación del informe final. Cualquier cambio en la evidencia debe ser justificado, documentado y demostrable.

> **Implicación práctica:** Se requiere calcular y verificar el hash de la evidencia en cada punto de transferencia. Un hash que no coincide indica una alteración que debe ser explicada.

### 4.2 Repetibilidad (§5.3)

> *"Property of a process conducted to get the same test results on the same testing environment."*

Si el mismo proceso analítico se aplica sobre la misma evidencia en el mismo entorno (mismo equipo, mismo software, misma configuración), debe producir exactamente los mismos resultados.

### 4.3 Reproducibilidad (§5.3)

Diferente de la repetibilidad: un equipo investigador **diferente**, aplicando el mismo método sobre la misma evidencia, debe llegar a resultados equivalentes. Esto sustenta la objetividad del análisis.

> **Diferencia clave:**
> - **Repetibilidad:** mismo laboratorio, misma herramienta → mismo resultado.
> - **Reproducibilidad:** laboratorio diferente, herramienta equivalente → resultado equivalente.

### 4.4 Enfoque Estructurado (§5.4)

El proceso debe seguir una metodología planificada, no improvisada. Las decisiones metodológicas deben estar documentadas antes de ejecutarse, no justificadas después.

### 4.5 Gestión de la Incertidumbre (§5.5)

El investigador debe identificar, registrar y comunicar todas las fuentes de incertidumbre que afectan sus conclusiones. La incertidumbre no invalida el análisis; su ocultamiento sí.

---

## 5. La Investigación — Sección 5

La investigación forense bajo ISO/IEC 27042 comienza con una fase de planificación que establece el marco para todo el proceso posterior.

### 5.1 Componentes del Plan de Investigación

Un plan de investigación completo debe definir:

- **Alcance:** qué sistemas, períodos temporales y tipos de artefactos serán analizados.
- **Hipótesis:** qué pregunta forense se busca responder.
- **Metodología prevista:** métodos analíticos que se aplicarán y justificación de su selección.
- **Recursos:** equipo investigador, herramientas y entorno de análisis.
- **Criterios de éxito:** cómo se determinará si se ha respondido la pregunta forense.
- **Restricciones:** limitaciones técnicas, legales o de tiempo conocidas.

### 5.2 Continuidad de la Evidencia

```
Adquisición         Recepción en    Análisis      Reporte        Entrega
(ISO 27037)   →    laboratorio  →  forense   →  pericial  →   judicial
     │                  │              │              │              │
  Hash_A = Hash_A   Hash_B = Hash_B  Hash_C = Hash_C  Hash_D = Hash_D
```

Cada transferencia de la evidencia debe registrar:
- Fecha y hora (ISO 8601 con zona horaria)
- Identidad del responsable (nombre, cargo, firma)
- Estado del ítem verificado (hash coincide / discrepancia documentada)
- Motivo de la transferencia

---

## 6. El Análisis — Sección 6

### 6.1 Principios Generales (§6.2)

El análisis es la evaluación de **evidencia digital potencial** para determinar su relevancia para la investigación. Una vez determinada su relevancia, la evidencia digital potencial se convierte en **evidencia digital**.

Principios que rigen el análisis:
- Trabajar siempre sobre copias forenses, nunca sobre evidencia original.
- Documentar cada proceso en tiempo real (notas contemporáneas §3.4).
- Justificar la selección de cada herramienta frente a alternativas disponibles.
- Reconocer y declarar cuando los métodos disponibles tienen limitaciones.

### 6.2 Uso de Herramientas (§6.3)

Para cada herramienta utilizada, el investigador debe registrar:

| Campo | Descripción |
|---|---|
| Nombre | Nombre completo de la herramienta |
| Versión | Número de versión exacto |
| Configuración | Parámetros y ajustes aplicados |
| Validación | Cómo se verificó que la herramienta funciona correctamente |
| Resultado de prueba | Output de un caso de prueba conocido antes de procesar evidencia real |

> ⚠️ Una herramienta no documentada no es admisible en el informe pericial, independientemente de lo que haya detectado.

### 6.3 Registro de Procesos (§6.4)

El registro debe capturar:
- Cada comando ejecutado con sus parámetros exactos.
- El resultado producido por cada comando.
- El timestamp de cada acción.
- Cualquier anomalía o comportamiento inesperado observado.

---

## 7. Modelos Analíticos — Sección 7

### 7.1 Árbol de Decisión

```
¿El sistema está ACTIVO al momento del análisis?
          │
     ┌────┴────┐
    SÍ         NO
     │          │
     ▼          ▼
ANÁLISIS    ANÁLISIS
EN VIVO     ESTÁTICO
 (§7.2)      (§7.1)
     │
     ▼
¿Es imageable o copiable?
     │
  ┌──┴──┐
 SÍ     NO
  │      │
  ▼      ▼
§7.2.3  §7.2.2
Crear   Análisis
imagen  directo;
en vivo documentar
        TODA
        interacción
```

### 7.2 Análisis Estático (§7.1)

Aplicable cuando el sistema ya está inactivo y se dispone de una imagen forense.

**Protocolo:**
```bash
# Verificar hash de imagen antes de montar
sha256sum imagen_forense.E01 | tee imagen_forense.sha256

# Montar en modo read-only (OBLIGATORIO)
sudo mount -o ro,loop,noexec imagen_forense.dd /mnt/analisis/

# Verificar que el flag read-only está activo
mount | grep analisis  # Debe mostrar 'ro'

# Verificar hash al finalizar la sesión (sin cambios)
sha256sum imagen_forense.E01  # Debe coincidir con hash inicial
```

### 7.3 Análisis en Vivo — Sistema No Imageable (§7.2.2)

Cuando no es posible crear una imagen del sistema activo (restricciones técnicas o de tiempo).

**Consideraciones críticas:**
- Documentar el estado del sistema ANTES de cualquier acción.
- Registrar el impacto potencial de cada acción sobre la evidencia.
- Minimizar la huella de la investigación sobre el sistema activo.
- Justificar por qué no fue posible obtener una imagen antes.

### 7.4 Análisis en Vivo — Sistema Imageable (§7.2.3)

Cuando el sistema activo puede ser copiado o duplicado.

**Protocolo:**
```bash
# Adquirir volcado de RAM ANTES de cualquier otra acción
sudo avml /media/forense-usb/ram_dump_$(hostname)_$(date +%Y%m%d_%H%M%S).lime

# Calcular hash del volcado INMEDIATAMENTE
sha256sum /media/forense-usb/ram_dump_*.lime > ram_dump.sha256

# Solo después: crear imagen del disco
sudo dcfldd if=/dev/sda of=/media/forense-usb/disco.dd conv=noerror,sync hash=sha256
```

---

## 8. La Interpretación — Sección 8

La interpretación es la fase donde los hallazgos técnicos se convierten en conclusiones comunicables. Es la más crítica desde el punto de vista jurídico.

### 8.1 Acreditación de Hechos (§8.2)

Cada conclusión debe estar respaldada por:
1. El artefacto específico que la sustenta (con ID de evidencia y hash).
2. La herramienta y el proceso que permitieron identificarlo (§6.3).
3. La metodología que demuestra que la interpretación es correcta.

### 8.2 Factores que Afectan la Interpretación (§8.3)

El investigador debe declarar explícitamente los factores que limitan o condicionan sus conclusiones:

| Factor | Impacto |
|---|---|
| Evidencia parcial o corrupta | Puede impedir conclusiones definitivas sobre ciertos aspectos |
| Técnicas antiforenses del atacante | Puede explicar la ausencia de evidencia esperada |
| Gaps en la cadena de custodia | Puede limitar la admisibilidad de ciertos ítems |
| Herramientas con limitaciones conocidas | Puede introducir margen de error en los hallazgos |
| Incertidumbre de atribución | La evidencia técnica puede no permitir identificar al actor |

### 8.3 Estructura de las Conclusiones (§8.1)

Las conclusiones deben organizarse en tres categorías claramente diferenciadas:

```
CONCLUSIONES DEL INFORME PERICIAL
│
├── A. HECHOS ESTABLECIDOS
│   └── Lo que la evidencia demuestra inequívocamente.
│       Cada hecho respaldado por artefacto + herramienta + proceso.
│
├── B. INFERENCIAS RAZONABLES
│   └── Lo que es probable pero no demostrado con certeza.
│       Incluir el grado de probabilidad y su fundamento técnico.
│
└── C. PREGUNTAS SIN RESPUESTA TÉCNICA
    └── Lo que NO puede determinarse con la evidencia disponible.
        Explicar por qué (evidencia destruida, cifrada, técnica antiforense).
        Esta sección es obligatoria bajo §8.3.
```

> **Principio fundamental:** La declaración de lo que **no puede afirmarse** es tan obligatoria como la de los hallazgos positivos. Un perito que no declara sus límites compromete la credibilidad de toda la pericia.

---

## 9. El Reporte — Sección 9

### 9.1 Preparación del Informe (§9.1)

El informe pericial es el entregable final del proceso de análisis. Debe ser preparado con cuidado para ser comprensible por dos audiencias simultáneamente:
- **Audiencia técnica:** equipo forense que debe poder reproducir los hallazgos.
- **Audiencia no técnica:** jueces, fiscales, comités directivos que tomarán decisiones basadas en él.

### 9.2 Contenido Sugerido del Informe (§9.2)

| Sección | Contenido |
|---|---|
| **Encabezado** | Datos del perito, expediente, autorización legal, declaración de independencia |
| **Descripción de la evidencia** | Inventario con hash de recepción, estado de integridad, observaciones de cadena de custodia |
| **Metodología** | Árbol de decisión §7 aplicado, herramientas con versión y configuración, justificación de métodos |
| **Hallazgos técnicos** | Cada hallazgo con artefacto, herramienta, ubicación exacta, timestamp y hash |
| **Limitaciones** | Factores que afectan la interpretación (§8.3): evidencia destruida, antiforense, incertidumbre |
| **Conclusiones** | Hechos establecidos / inferencias / preguntas sin respuesta técnica |
| **Hash del informe** | SHA-256 del documento final, registrado en acta de entrega |
| **Anexos** | Logs completos de herramientas, notas contemporáneas, formularios de cadena de custodia |

---

## 10. Competencia y Suficiencia — Secciones 10 y 11

### 10.1 Competencia (§10)

> *"Ability to apply knowledge and skills to achieve intended results."* — ISO/IEC 17021:2011, 3.7

La competencia no se declara; se **demuestra** (§10.2) y se **registra** (§10.3). Los mecanismos de demostración incluyen:
- Certificaciones forenses reconocidas (GCFE, GCFA, EnCE, CCE, CHFI).
- Participación en ejercicios de evaluación técnica.
- Historial documentado de investigaciones previas.
- Conocimiento de las limitaciones propias y del equipo.

### 10.2 Suficiencia / Proficiency (§11)

> *"Ability of an investigative team to produce results equivalent to those of a different investigative team given the same sources of potential digital evidence."*

La proficiency se demuestra mediante (§11.2):
- Participación en pruebas de competencia inter-laboratorio.
- Ejercicios con casos de prueba de resultado conocido.
- Comparación de resultados con un equipo de referencia independiente.

> **Importancia jurídica:** Un tribunal puede exigir demostración de proficiency como condición para admitir el testimonio pericial. Sin ella, la pericia puede ser impugnada por la contraparte.

---

## 11. Glosario Técnico-Jurídico

Términos definidos en la Sección 3 del estándar, ordenados por criticidad forense.

| Término | § | Definición | Relevancia Jurídica |
|---|---|---|---|
| **Evidencia Digital** | 3.5 | Información o datos en forma binaria que, mediante análisis, se determina relevante para la investigación. Distinta de *evidencia digital potencial* y *evidencia digital legal*. | Jerarquía procesal: potencial → digital → legal. Solo la legal ha sido admitida en proceso judicial. |
| **Evidencia Digital Potencial** | 3.15 | Información en forma binaria que aún no ha sido determinada como relevante mediante análisis. | Todo lo recolectado es potencial hasta que el análisis determina su relevancia. |
| **Evidencia Digital Legal** | 3.14 | Evidencia digital que ha sido aceptada en un proceso judicial. | Estatus más alto. Requiere que todos los eslabones de la cadena de custodia sean demostrables. |
| **Análisis** | 3.1 | Evaluación de evidencia digital potencial para determinar su relevancia en la investigación. | Define qué constituye análisis formal. Sin proceso documentado, el resultado no es admisible. |
| **Interpretación** | 3.9 | Síntesis de una explicación, dentro de límites acordados, para la información factual resultante del conjunto de análisis. | Delimita el alcance de las conclusiones del perito. No puede exceder los límites técnicos demostrados. |
| **Investigación** | 3.10 | Aplicación de exámenes, análisis e interpretación para ayudar a comprender un incidente. | Marco general en el que opera el estándar. |
| **Repetibilidad** | 3.17 | Propiedad de un proceso que produce los mismos resultados en el mismo entorno de prueba. | Garantía para el contra-perito. Sin repetibilidad, el método es técnicamente inválido. |
| **Proficiency / Suficiencia** | 3.16 | Capacidad de producir resultados equivalentes a los de un equipo diferente con la misma evidencia. | El tribunal puede exigirla como condición de admisibilidad del testimonio pericial. |
| **Competencia** | 3.3 | Capacidad de aplicar conocimientos y habilidades para lograr los resultados esperados. | Debe ser demostrada y registrada formalmente, no solo declarada. |
| **Obfuscación de Evidencia** | 3.8 | Efecto de una operación que resulta en que la evidencia quede oculta o enmascarada (deliberada o accidentalmente). | Permite explicar jurídicamente la ausencia o degradación de evidencia esperada. |
| **Examinación** | 3.7 | Conjunto de procesos aplicados para identificar y recuperar evidencia digital potencial relevante. | Etapa previa al análisis formal. |
| **Emular** | 3.6 | Imitar con precisión otra aplicación o entorno. | Relevante para análisis de malware en entornos controlados. |
| **Notas Contemporáneas** | 3.4 | Registro escrito producido en el momento de la acción o tan pronto como sea posible, en medio no borrable. | En muchas jurisdicciones deben ser manuscritas en libreta de tapa dura para valor de no repudio. |
| **Investigador Principal** | 3.11 | Persona que lidera la investigación a nivel estratégico. | Responsable final de las decisiones metodológicas y de la integridad del proceso. |
| **Cliente** | 3.2 | Persona u organización en cuyo nombre se realiza la investigación. | Define el mandato y los límites del alcance. |

---

## 12. Aseguramiento de la Prueba: Hash y Cadena de Custodia

### 12.1 Funciones Hash

El estándar requiere el uso de funciones hash criptográficas para verificar la integridad de la evidencia en cada etapa del proceso.

| Algoritmo | Estado | Uso Recomendado |
|---|---|---|
| **SHA-256** | Vigente — mínimo aceptable | Verificación de integridad de imágenes y artefactos |
| **SHA-3 (256/512)** | Vigente — recomendado | Verificación de alto nivel; doble verificación con SHA-256 |
| **MD5** | Obsoleto criptográficamente | Solo para compatibilidad con herramientas heredadas; siempre acompañado de SHA-256 |
| **SHA-1** | Obsoleto — no usar | Vulnerable a colisiones; no admisible como único mecanismo |

### 12.2 Momentos Obligatorios de Hash

```
Momento                    Acción                         Registro
─────────────────────────────────────────────────────────────────────
Recepción de evidencia  →  Calcular y comparar           Formulario CC-01
Antes de montar imagen  →  Hash pre-montaje              Registro de análisis
Tras cada sesión        →  Hash post-sesión              Bitácora de sesión
Al exportar artefacto   →  Hash del archivo exportado    Registro de evidencia derivada
Al emitir informe       →  Hash del documento PDF        Acta de entrega judicial
```

### 12.3 Campos Mínimos de la Cadena de Custodia

| Campo | Descripción | Ejemplo |
|---|---|---|
| ID de evidencia | Identificador único del ítem | EV-2024-001-001 |
| Descripción | Tipo, marca, modelo, capacidad, serial | HDD Seagate 2TB SN: ST2000 |
| Hash SHA-256 | Calculado en recepción y cada transferencia | e3b0c44298fc1c... |
| Fecha y hora | ISO 8601 con zona horaria | 2024-11-15T09:32:00-05:00 |
| Responsable | Nombre, cargo y firma | Ana Pérez — Perito Forense Certificado |
| Motivo de transferencia | Justificación del traslado | Traslado a laboratorio para análisis |
| Estado del ítem | Condición física e integridad | Íntegro — hash verificado |

### 12.4 Comandos de Referencia

```bash
# Generar hash SHA-256 y SHA-3 simultáneamente
sha256sum evidencia.E01 | tee evidencia.sha256
sha3sum -a 256 evidencia.E01 | tee evidencia.sha3-256

# Verificación masiva de múltiples archivos
hashdeep -r -c sha256 /directorio/evidencia/ > manifest_inicial.txt
hashdeep -r -c sha256 -a -k manifest_inicial.txt /directorio/evidencia/
# Salida: OK = sin modificaciones | FAILED = alerta de integridad comprometida

# Montar imagen en modo solo lectura
sudo mount -o ro,loop,noexec imagen.dd /mnt/analisis/

# Hash del informe pericial final
sha256sum informe_pericial.pdf > informe_pericial.pdf.sha256
```

---

## 13. Herramientas Forenses Validadas

Lista de herramientas recomendadas para el proceso de análisis bajo ISO/IEC 27042. Cada herramienta debe ser documentada conforme al §6.3.

| Herramienta | Versión Ref. | Tipo | Función Principal | Validación |
|---|---|---|---|---|
| **Autopsy** | 4.x | Open-source | Análisis estático de imágenes de disco (§7.1). Interfaz gráfica sobre Sleuth Kit. | NIST CFTT |
| **The Sleuth Kit (TSK)** | 4.x | Open-source | Análisis de sistemas de archivos, MFT, inodos, archivos eliminados (§7.1). | NIST CFTT |
| **Volatility 3** | 3.x | Open-source | Análisis de volcados de memoria RAM: procesos, conexiones, inyección de código (§7.2). | Peer-reviewed |
| **FTK Imager** | 4.x | Licenciado | Adquisición de imágenes forenses y verificación de hash. Compatible con §5.2. | ISO/IEC 27037 |
| **Wireshark** | 4.x | Open-source | Captura y análisis de tráfico de red (pcap). RFC-compliant. | RFC-compliant |
| **Hashdeep** | 4.x | Open-source | Generación y verificación masiva de hashes SHA-256/MD5. | NIST validado |
| **Log2Timeline / Plaso** | 20.x | Open-source | Correlación temporal de artefactos de múltiples fuentes — supertimeline (§6.4). | INTERPOL |
| **Bulk Extractor** | 2.x | Open-source | Extracción masiva de artefactos: emails, URLs, números de tarjetas (§6.2). | NIST validado |
| **YARA** | 4.x | Open-source | Identificación de patrones de malware en análisis estático (§7.1). | Industria estándar |
| **dc3dd / dcfldd** | — | Open-source | Adquisición de imágenes con hash simultáneo. Alternativas open-source a FTK. | NIST CFTT |

### Entorno de Trabajo Homologado

| Componente | Especificación Mínima |
|---|---|
| Estación forense | CPU 8 núcleos, 32 GB RAM, NVMe 2 TB |
| Sistema operativo | SIFT Workstation 3.0+ (Ubuntu) o Windows con bloqueador de escritura |
| Bloqueador de escritura | Hardware: Tableau T8u / WiebeTech UltraKit |
| Red de análisis | Air-gap o VLAN forense aislada |
| Almacenamiento destino | RAID-1 sin compresión ni deduplicación activa |

---

## 14. Limitaciones del Estándar

ISO/IEC 27042 fue diseñado para análisis de evidencia digital en contextos de incidentes de seguridad de la información. Los siguientes escenarios requieren marcos complementarios:

| Escenario | Por qué no aplica directamente | Marco Alternativo |
|---|---|---|
| **Adquisición en escena** | Opera post-adquisición. No define cómo recolectar evidencia. | ISO/IEC 27037:2012 |
| **Respuesta operativa al incidente** | No cubre gestión del incidente ni comunicación de crisis. | ISO/IEC 27035 (1-3) |
| **Evidencia cifrada sin clave** | El proceso analítico no puede ejecutarse completamente. | ISO/IEC 27040 + peritaje criptográfico |
| **Cloud multi-jurisdiccional** | Soberanía de datos y custodia en nube requieren marcos eDiscovery. | ISO/IEC 27050 + MLAT |
| **IoT y hardware propietario** | No contempla firmware encriptado ni protocolos propietarios. | NIST SP 800-101r1 |
| **Sistemas SCADA/OT/ICS** | No cubre metodología forense para entornos industriales. | ISA/IEC 62443, NIST SP 800-82 |
| **Admisibilidad legal local** | Las reglas procesales son locales. El estándar es técnico, no jurídico. | Legislación procesal de cada jurisdicción |
| **Forensic readiness** | No define cómo preparar la organización antes del incidente. | ISO/IEC 30121:2015 |

---

## 15. Checklist de Cumplimiento

Lista de verificación para determinar si un proceso de análisis cumple con ISO/IEC 27042:2015.

### Fase de Planificación (§5)

- [ ] Existe un plan de investigación documentado con alcance y objetivos claros.
- [ ] Se verificó que la evidencia fue adquirida bajo ISO/IEC 27037 (hash de adquisición disponible).
- [ ] El hash de recepción coincide con el hash de adquisición original.
- [ ] El entorno de análisis está aislado y el bloqueador de escritura está activo.
- [ ] Existe autorización formal para realizar el análisis.
- [ ] Se identificaron y documentaron todas las fuentes de incertidumbre conocidas (§5.5).

### Fase de Análisis (§6)

- [ ] Cada herramienta está documentada con nombre, versión y configuración (§6.3).
- [ ] Cada herramienta fue validada con un caso de prueba conocido antes de procesar evidencia real.
- [ ] Cada acción fue registrada en notas contemporáneas en tiempo real (§3.4).
- [ ] Se justificó la selección del método frente a alternativas disponibles (§6.2).
- [ ] Los hallazgos están sustentados con artefactos específicos, no con suposiciones.

### Modelo Analítico (§7)

- [ ] Se determinó el modelo analítico correcto (estático §7.1 o en vivo §7.2) antes de procesar.
- [ ] El análisis se realizó sobre copias forenses, nunca sobre evidencia original.
- [ ] Si se aplicó análisis en vivo: se documentó el estado del sistema ANTES de actuar.
- [ ] El hash de la imagen fue verificado antes y después de cada sesión de análisis.

### Interpretación (§8)

- [ ] Las conclusiones están dentro de los límites acordados y sustentados (§8.1).
- [ ] Cada hecho está respaldado por artefacto + herramienta + proceso (§8.2).
- [ ] Los factores de incertidumbre están declarados explícitamente (§8.3).
- [ ] Las conclusiones están organizadas en: hechos / inferencias / preguntas sin respuesta.
- [ ] No se realizaron afirmaciones que excedan lo que la evidencia permite demostrar.

### Reporte (§9)

- [ ] El informe incluye todas las secciones obligatorias (§9.2).
- [ ] El lenguaje del informe es comprensible para audiencias no técnicas.
- [ ] El hash SHA-256 del informe final está calculado y registrado en acta de entrega.
- [ ] Los anexos incluyen logs completos, notas contemporáneas y formularios de custodia.

### Competencia y Suficiencia (§10-11)

- [ ] El equipo investigador tiene competencia demostrada y registrada formalmente (§10.2).
- [ ] El equipo ha participado en ejercicios de proficiency con resultados documentados (§11.2).


## 16. Referencias

### Estándares ISO/IEC

- **ISO/IEC 27042:2015** — Information technology — Security techniques — Guidelines for the analysis and interpretation of digital evidence.
- **ISO/IEC 27037:2012** — Guidelines for identification, collection, acquisition and preservation of digital evidence.
- **ISO/IEC 27043:2015** — Incident investigation principles and processes.
- **ISO/IEC 27041:2015** — Guidance on assuring suitability and adequacy of incident investigative method.
- **ISO/IEC 27035-1:2016** — Information security incident management — Part 1: Principles of incident management.
- **ISO/IEC 27000:2018** — Information security management systems — Overview and vocabulary.
- **ISO/IEC 30121:2015** — Governance of digital investigative frameworks.

### Estándares NIST

- **NIST SP 800-86** — Guide to Integrating Forensic Techniques into Incident Response.
- **NIST SP 800-61r2** — Computer Security Incident Handling Guide.
- **NIST SP 800-101r1** — Guidelines on Mobile Device Forensics.
- **NIST SP 800-82r2** — Guide to Industrial Control Systems (ICS) Security.

### Marco Jurídico Colombia

- **Ley 1273/2009** — De la protección de la información y de los datos; de los delitos informáticos.
- **Ley 1581/2012** — Disposiciones generales para la protección de datos personales.
- **Art. 277 CPP** — Código de Procedimiento Penal: cadena de custodia de evidencia.
- **Ley 906/2004** — Código de Procedimiento Penal (sistema acusatorio).

### Referencias Técnicas

- **RFC 3227** — Guidelines for Evidence Collection and Archiving (Orden de Volatilidad).
- **SWGDE Best Practices** — Scientific Working Group on Digital Evidence.
- Caso Keralty / Sanitas — RansomHouse, noviembre 2022 (fuentes públicas documentadas).

