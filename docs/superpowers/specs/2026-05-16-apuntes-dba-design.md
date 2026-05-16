# Apuntes DBA — Design Spec
_2026-05-16_

## Objetivo

Cuaderno de apuntes en LaTeX (PDF único) para preparación laboral como DBA/backend con bases de datos. Enfoque: estudio personal + entrevistas de trabajo. Si otros lo usan, bienvenido.

---

## Repositorio y ubicación

- **Local:** `C:\Users\aldo-\OneDrive\Documentos\CodigoAbierto\Apuntes\DBA`
- **GitHub:** `AldoZM/ApuntesBaseDeDatos` (repo público, crear nuevo)
- **Rama principal:** `main`

---

## Estructura de archivos

```
ApuntesBaseDeDatos/
├── main.tex
├── preamble.tex
├── Makefile
├── .gitignore
├── README.md
├── chapters/
│   ├── 00_intro.tex
│   ├── 01_modelo_relacional.tex
│   ├── 02_sql_fundamentos.tex
│   ├── 03_sql_avanzado.tex
│   ├── 04_modelado_uml.tex
│   ├── 05_normalizacion.tex
│   ├── 06_indices.tex
│   ├── 07_transacciones.tex
│   ├── 08_postgresql.tex
│   ├── 09_mysql.tex
│   ├── 10_nosql.tex
│   ├── 11_diseno_bd.tex
│   ├── 12_administracion.tex
│   └── 13_entrevistas.tex
├── images/
│   ├── diagrams/          ← PNGs generados por PlantUML
│   └── src_plantuml/      ← archivos .puml versionables
└── docs/
    └── superpowers/
        └── specs/
            └── 2026-05-16-apuntes-dba-design.md
```

---

## Tecnología LaTeX

- **Compilador:** `pdflatex` (dos pasadas para referencias)
- **Paquetes clave:**
  - `emoji` o `twemojis` — emojis en el PDF
  - `listings` o `minted` — bloques de código SQL con syntax highlighting
  - `hyperref` — bookmarks/links navegables en PDF
  - `tcolorbox` — cajas de destacado (teoría, warning, tip, entrevista)
  - `tikz` — diagramas simples inline (árbol B-tree, comparativas)
  - `geometry` — márgenes
  - `fancyhdr` — encabezados/pies de página
- **Makefile:** compila PlantUML → PNG, luego corre pdflatex x2

---

## Diagramas — PlantUML

- Fuente: archivos `.puml` en `images/src_plantuml/`
- Output: PNG en `images/diagrams/`
- Incluidos en LaTeX con `\includegraphics`
- Makefile los genera automáticamente antes del PDF
- Requiere Java + PlantUML jar (documentado en README)

**Diagramas planeados por capítulo:**

| Capítulo | Diagrama |
|---|---|
| 01 modelo relacional | ER básico (entidad-atributo-relación) |
| 04 UML | Diagrama de clases UML, diagrama de secuencia |
| 05 normalización | Tabla antes/después de normalizar |
| 06 índices | Árbol B-tree (TikZ) |
| 07 transacciones | Flujo ACID, diagrama de deadlock |
| 10 NoSQL | Comparativa relacional vs document vs key-value |
| 11 diseño BD | ER completo caso práctico (ej. sistema de biblioteca) |

---

## Capítulos y contenido

Cada capítulo sigue estructura: **Teoría → Ejemplos SQL → Diagramas → Preguntas de entrevista**
Proporción aproximada: teoría 60%, código explicado 25%, diagramas + entrevistas 15%.

| # | Capítulo | Nivel | Contenido clave |
|---|---|---|---|
| 00 | Introducción | Básico | Qué es BD, historia, tipos, DBMS vs RDBMS |
| 01 | Modelo relacional | Intermedio | Tablas, llaves PK/FK, integridad referencial, cardinalidad |
| 02 | SQL Fundamentos | Intermedio | DDL, DML, DQL, DCL — sintaxis PostgreSQL y MySQL |
| 03 | SQL Avanzado | Avanzado | Window functions, CTEs, subqueries, EXPLAIN, optimización |
| 04 | Modelado UML | Intermedio | Diagramas ER, UML clases, notación Chen vs Crow's Foot |
| 05 | Normalización | Avanzado | 1NF→BCNF, dependencias funcionales, desnormalización |
| 06 | Índices | Avanzado | B-tree, hash, GIN/GiST (PG), FULLTEXT (MySQL), EXPLAIN ANALYZE |
| 07 | Transacciones | Avanzado | ACID, niveles de aislamiento, MVCC, locks, deadlocks |
| 08 | PostgreSQL | Avanzado | Extensiones, JSONB, herencia de tablas, roles, vacuuming |
| 09 | MySQL/MariaDB | Avanzado | Motores InnoDB/MyISAM, replicación, particionamiento |
| 10 | NoSQL | Intermedio | MongoDB, Redis, Cassandra, Neo4j — cuándo usar cada uno |
| 11 | Diseño de BD | Avanzado | Caso práctico end-to-end: requisitos → ER → DDL → optimización |
| 12 | Administración | Intermedio | Backups, usuarios/roles, permisos, monitoreo básico |
| 13 | Entrevistas | Mixto | 50+ preguntas típicas DBA con respuestas explicadas |

---

## Estilo visual

- Emojis como marcadores visuales por sección (🧠 teoría, 💻 código, 📊 diagrama, 🎤 entrevista, ⚠️ advertencia, 💡 tip)
- `tcolorbox` con colores distintos por tipo de caja
- Portada con título, autor (Aldo Zetina Muciño), fecha
- Índice automático con `\tableofcontents`
- Numeración de páginas y capítulo en encabezado

---

## README.md del repo

Incluye:
- Descripción del proyecto
- Requisitos para compilar (LaTeX, Java, PlantUML)
- Comandos de compilación (`make` o `pdflatex`)
- Tabla de contenidos con links a secciones

---

## Criterios de éxito

- PDF compila sin errores desde `make` o `pdflatex main.tex`
- Todos los capítulos tienen al menos: teoría, 1 ejemplo SQL, 1 pregunta de entrevista
- Capítulos con diagramas tienen `.puml` fuente versionado
- Repo público en GitHub con README funcional
