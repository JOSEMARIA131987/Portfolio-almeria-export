# Análisis de Exportaciones Hortofrutícolas de Almería (2015-2024)

##  Descripción del Proyecto
Este proyecto simula un pipeline analítico completo (*End-to-End*) enfocado en el sector agroexportador de Almería. Analiza la evolución histórica de las exportaciones hortofrutícolas (2015-2024) combinando la ingesta de datos con Python, el modelado relacional en una base de datos optimizada y la visualización interactiva de negocio.

---

## 🛠 Stack Tecnológico y Arquitectura
*   **Python (Pandas / NumPy):** Extracción, inspección, estandarización de cadenas de texto y limpieza de datos en bruto (*Raw Data*).
*   **PostgreSQL (pgAdmin):** Diseño e implementación de un Almacén de Datos (*Data Warehouse*) modelado bajo un **Esquema Estrella**.
*   **Power BI:** Capa de visualización interactiva conectada directamente al modelo dimensional para la exploración de KPIs.

---

## 🏗 Arquitectura de Datos (Esquema Estrella)
Para garantizar la integridad referencial y optimizar el rendimiento analítico, los datos limpios procedentes de la capa de *staging* (`exportaciones`) se estructuraron en un modelo dimensional relacional dentro de PostgreSQL:
*   **Tabla de Hechos:** `hechos_exportaciones` (Contiene las métricas clave de negocio: volumen en kg, valor en euros y precio medio por kilo).
*   **Dimensiones:** 
    *   `dim_producto`: Catálogo normalizado de hortalizas y frutas.
    *   `dim_pais`: Catálogo de países de destino europeos e internacionales.
    *   `dim_fecha`: Dimensión temporal estructurada por años de campaña.

---

##  Estructura del Repositorio
```text
portfolio_almeria_exportaciones/
├── data/
│   ├── raw/                 # Datos crudos originales
│   └── processed/           # Datos limpios y procesados
├── sql/
│   └── esquema_estrella.sql # DDL del modelo dimensional en PostgreSQL
├── notebooks/
│   └── exploracion_exportaciones_almeria.ipynb # Script de limpieza y EDA en Pandas
├── dashboards/
│   └── exportaciones_almeria.pbix # Archivo del informe de Power BI
└── README.md                # Documentación del proyecto
