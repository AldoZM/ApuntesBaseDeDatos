# Apuntes DBA

Cuaderno de apuntes en LaTeX para preparación como DBA/backend con bases de datos.
Enfoque: estudio personal + entrevistas de trabajo.

## Contenido

| # | Capítulo | Nivel |
|---|---|---|
| 00 | Introducción a Bases de Datos | Básico |
| 01 | Modelo Relacional | Intermedio |
| 02 | SQL Fundamentos | Intermedio |
| 03 | SQL Avanzado | Avanzado |
| 04 | Modelado UML y ER | Intermedio |
| 05 | Normalización | Avanzado |
| 06 | Índices | Avanzado |
| 07 | Transacciones | Avanzado |
| 08 | PostgreSQL | Avanzado |
| 09 | MySQL / MariaDB | Avanzado |
| 10 | NoSQL | Intermedio |
| 11 | Diseño de BD — Caso Práctico | Avanzado |
| 12 | Administración | Intermedio |
| 13 | Preguntas de Entrevista | Mixto |

## Requisitos

### Compilación básica (sin diagramas)
- [TeX Live](https://www.tug.org/texlive/) o [MiKTeX](https://miktex.org/)
- Paquetes LaTeX: `tcolorbox`, `listings`, `hyperref`, `geometry`, `fancyhdr`, `tikz`, `booktabs`

### Diagramas PlantUML
- Java 11+
- [PlantUML jar](https://plantuml.com/download) — descargar `plantuml.jar` en la raíz del proyecto
- GNU Make

## Compilar

### Solo PDF (sin regenerar diagramas)
```bash
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

### PDF completo con diagramas
```bash
make
make PUML_JAR=/ruta/plantuml.jar
```

### Limpiar archivos auxiliares
```bash
make clean
```

## Estructura

```
ApuntesBaseDeDatos/
├── main.tex
├── preamble.tex
├── Makefile
├── chapters/
├── images/
│   ├── src_plantuml/
│   └── diagrams/
└── docs/
```

## Autor

Aldo Zetina Muciño — zetinaa3@gmail.com
