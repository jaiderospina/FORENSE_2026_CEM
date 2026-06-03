# 🔍 ISO/IEC 27042:2015 — Análisis e Interpretación de Evidencia Digital

> **Asignatura:** Informática Forense  
> **Estándar asignado:** ISO/IEC 27042:2015 — *Guidelines for the analysis and interpretation of digital evidence*  
> **Organismo:** ISO/IEC JTC 1 / SC 27 — IT Security Techniques  
> **Edición:** Primera | 2015-06-15

---

## 📁 Estructura del Repositorio

```
📦 ISO-IEC-27042-2015/
├── 📄 README.md                          ← Este archivo
├── 📘 Guia_Lite_ISO27042_3p.docx         ← Guía Lite de Interpretación (máx. 3 páginas)
├── 📕 Caso_Keralty_v2_ISO27042.docx      ← Caso de Aplicación Real — Keralty / RansomHouse
└── 🌐 ISO27042_Presentacion.html         ← Presentación interactiva (navegable en browser)
```

---

## 📘 Entregable 1 — Guía Lite de Interpretación

**Archivo:** `Guia_Lite_ISO27042_3p.docx`  
**Extensión:** Máximo 3 páginas | Formato Word (.docx)

La guía sintetiza ISO/IEC 27042:2015 eliminando la redundancia burocrática y enfocándose en la utilidad práctica para el perito forense. Sigue la estructura técnica obligatoria establecida en los lineamientos de la asignatura.

### Contenido

| Sección | Descripción |
|---|---|
| **01 · Objetivo y Alcance** | Define qué estandariza el estándar y sus límites de aplicación. Opera exclusivamente en la fase post-adquisición. |
| **02 · Marco de Referencia** | Identifica el estándar base y su relación con el ecosistema ISO/IEC 2703x (27037, 27043, 27041, 27035, 30121) y NIST SP 800-86. |
| **03 · Requisitos Previos y Herramientas** | Lista de condiciones previas obligatorias y software forense validado: Autopsy, Volatility 3, FTK Imager, Hashdeep, Log2Timeline, Wireshark, Bulk Extractor, YARA. |
| **04 · Procedimiento Paso a Paso** | 5 fases secuenciales en imperativo + árbol de decisión §7.1 (estático) vs §7.2 (en vivo) + comandos críticos reales. |
| **05 · Aseguramiento de la Prueba** | Momentos obligatorios de hash SHA-256/SHA-3, estructura de la cadena de custodia y requisitos del informe pericial (§9). |
| **06 · Glosario Técnico-Jurídico** | 5 términos críticos: Evidencia Digital (§3.5), Interpretación (§3.9), Repetibilidad (§3.17), Proficiency (§3.16), Obfuscación (§3.8). |
| **07 · Limitaciones** | 7 escenarios no cubiertos con marco normativo alternativo recomendado. |

---

## 📕 Entregable 2 — Caso de Aplicación Real

**Archivo:** `Caso_Keralty_v2_ISO27042.docx`  
**Formato:** Word (.docx) | Estructura de 3 componentes + preguntas + entregable

### Caso seleccionado: Keralty — RansomHouse · Colombia, Noviembre 2022

**Criterios de selección del caso:**
- ✅ Incidente real documentado sobre infraestructura crítica (salud pública)
- ✅ Actor interno + ransomware + exfiltración de datos
- ✅ Evidencia parcialmente corrupta y técnicas antiforenses activas
- ✅ Limitaciones jurisdiccionales (Fiscalía + SIC + Ley 1273/2009 + Ley 1581/2012)
- ✅ Dilemas técnico-jurídicos sin respuesta binaria

### Estructura del Documento

#### 🔴 Sección A — Descripción del Incidente
- **¿Qué ocurrió?** El grupo RansomHouse cifró 1.800+ endpoints con extensión `.rhd` y exfiltró 3,2 TB de datos hacia un nodo Tor, afectando la atención médica de 5,9 millones de afiliados de Sanitas EPS y Colsanitas.
- **Infraestructura afectada:** Servidores Windows Server (HCE, SQL Server, AD), red MPLS corporativa, Azure AD, SIEM QRadar, EDR Cylance (40% de cobertura).
- **Cronología:** 9 eventos desde el acceso inicial (~Oct 2022) hasta la investigación de la SIC (Mar 2023), con marcación de fallas forenses y el evento crítico del 26 nov 08:45 COT.
- **Inventario de artefactos:** EV-01 a EV-08 con estado de integridad, volumen y valor probatorio.

#### 🟢 Sección B — Análisis Forense
- Aplicación diferenciada de §7.1 (análisis estático) y §7.2 (análisis en vivo — no ejecutado correctamente).
- 5 técnicas antiforenses de RansomHouse identificadas bajo §6.2.
- Fallas de cadena de custodia F-01 a F-05 con sección §27042 vulnerada y acción correctiva.
- Comandos reales ejecutados: `sha256sum`, `reg query`, `prefetch.py`, `tshark`, `log2timeline.py`.

#### 🔵 Sección C — Veredicto / Resultado
- **Fiscalía General:** Admisibilidad **parcial** — EV-01, EV-04 y EV-05 admitidos; EV-02 y EV-08 excluidos.
- **SIC (Ley 1581/2012):** Evidencia **admitida** — fallas de custodia consideradas agravante de negligencia.
- **Proceso civil:** En curso — volumen de exfiltración (3,2 TB) suficiente como evidencia de daño.
- 6 factores que favorecieron la admisibilidad vs. 6 que la debilitaron.

#### 🟣 Preguntas Orientadoras de Análisis Crítico

| # | Pregunta |
|---|---|
| **P1** | ¿Qué estándar es el más adecuado para el abordaje inicial y por qué? |
| **P2** | Frente al dilema volatilidad vs. preservación, ¿cuál debió ser el orden de prioridad en la adquisición? |
| **P3** | Identifique fallas en la cadena de custodia (F-01 a F-05) y proponga la acción correctiva para cada una. |

#### 📄 Entregable Esperado
Dictamen Técnico Pericial con 8 secciones obligatorias referenciadas a §§ del estándar + rúbrica de evaluación con 5 criterios ponderados.

---

## 🌐 Entregable 3 — Presentación Interactiva

**Archivo:** `ISO27042_Presentacion.html`  
**Abrir con:** Cualquier navegador moderno (Chrome, Firefox, Edge, Safari)  
**Sin dependencias externas requeridas** para funcionar localmente.

### Características de la Interfaz

```
┌─────────────────────────────────────────────────────────┐
│ 🔍 Forensics Lab  │  [ El Estándar ]  [ Caso Keralty ]  │
├──────────────┬──────────────────────────────────────────┤
│              │                                          │
│  Sidebar     │   Contenido principal                    │
│  navegación  │   (scroll independiente)                 │
│  con auto-   │                                          │
│  highlight   │   • Tablas con hover                     │
│              │   • Bloques de terminal                  │
│  01 Objetivo │   • Alert boxes                          │
│  02 Marco    │   • Árbol de decisión visual             │
│  03 Herram.  │   • Línea de tiempo                      │
│  04 Proced.  │   • Grid de veredicto                    │
│  05 Asegur.  │                                          │
│  06 Glosario │                                          │
│  07 Límites  │                                          │
└──────────────┴──────────────────────────────────────────┘
```

**Pestaña 1 — El Estándar:** 7 secciones con toda la guía técnica (objetivo, marco, herramientas, procedimiento con árbol de decisión §7, comandos en terminal, aseguramiento de prueba, glosario, limitaciones).

**Pestaña 2 — Caso Keralty:** 5 secciones (A: Descripción del incidente con línea de tiempo visual, B: Análisis forense con tabla de fallas y terminal, C: Veredicto con grid admisible/inadmisible, D: Preguntas orientadoras, E: Entregable y rúbrica).

---

## 📐 Marco Normativo Aplicado

```
ISO/IEC 27043:2015          ← Marco superior (clases de proceso)
       │
       ▼
ISO/IEC 27037:2012          ← PRERREQUISITO (adquisición)
       │
       ▼
■ ISO/IEC 27042:2015 ■      ← ESTÁNDAR ASIGNADO (análisis e interpretación)
       │
       ├── ISO/IEC 27041    ← Idoneidad de métodos
       ├── ISO/IEC 27035    ← Gestión de incidentes
       └── ISO/IEC 30121   ← Forensic readiness
```

---

## ⚖️ Marco Jurídico del Caso (Colombia)

| Norma | Aplicación en el Caso |
|---|---|
| **Ley 1273/2009 Art. 269A** | Acceso abusivo a sistema informático — base de la investigación penal |
| **Ley 1581/2012** | Protección de datos personales — base de la investigación SIC |
| **Art. 277 CPP** | Cadena de custodia — criterio de admisibilidad de evidencia digital |
| **MLAT Colombia–EE.UU.** | Cooperación internacional para persecución de RansomHouse |

---

## 🔑 Conceptos Clave del Estándar

| Término | § | Definición resumida |
|---|---|---|
| Evidencia Digital | 3.5 | Dato binario determinado relevante mediante análisis |
| Interpretación | 3.9 | Síntesis explicativa dentro de límites acordados |
| Repetibilidad | 3.17 | Mismo entorno → mismo resultado |
| Proficiency | 3.16 | Otro equipo → resultado equivalente |
| Obfuscación | 3.8 | Evidencia oculta deliberada o accidentalmente |
| Notas contemporáneas | 3.4 | Registro en medio no borrable en tiempo real |

---

## 📊 Resumen del Caso Keralty

| Atributo | Detalle |
|---|---|
| **Fecha del ataque** | 26 de noviembre de 2022, ~01:30 COT |
| **Grupo atacante** | RansomHouse |
| **Vector de entrada** | Credenciales VPN comprometidas de proveedor externo (sin MFA) |
| **Dwell time** | ~3-4 semanas (Oct–Nov 2022) |
| **Alcance** | 1.800+ endpoints cifrados · 5,9 millones de afiliados afectados |
| **Exfiltración** | ~3,2 TB vía HTTPS sobre Tor (185.220.101.47:443) |
| **Extensión ransomware** | `.rhd` |
| **Herramienta de ataque** | BloodHound + Mimikatz + PsExec + payload RansomHouse |
| **Falla forense crítica** | Apagado de 34 servidores sin imagen forense previa (F-01) |
| **Evidencia admitida** | EV-01, EV-04, EV-05 (Fiscalía) · Conjunto completo (SIC) |
| **Evidencia excluida** | EV-02 (RAM post-reinicio) · EV-08 (inexistente) |

---

## 📚 Referencias

- ISO/IEC 27042:2015 — *Information technology — Security techniques — Guidelines for the analysis and interpretation of digital evidence*
- ISO/IEC 27037:2012 — Guidelines for identification, collection, acquisition and preservation of digital evidence
- ISO/IEC 30121:2015 — Governance of digital investigative frameworks
- RFC 3227 — Guidelines for Evidence Collection and Archiving (Orden de Volatilidad)
- NIST SP 800-86 — Guide to Integrating Forensic Techniques into Incident Response
- Ley 1273/2009 — Delitos Informáticos, República de Colombia
- Ley 1581/2012 — Protección de Datos Personales, República de Colombia
- Caso Keralty / Sanitas — RansomHouse, noviembre 2022 (fuentes públicas documentadas)
