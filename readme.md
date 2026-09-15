#  Análisis de Exportaciones Hortofrutícolas de Almería (2015-2024)

Pipeline de datos completo de extremo a extremo (*End-to-End*) para analizar la evolución histórica, los principales mercados de destino y el rendimiento por producto de las exportaciones agrícolas de Almería.

##  Arquitectura del Proyecto y Tecnologías
Este proyecto simula un entorno de analítica real implementando una arquitectura moderna:
* **ETL & Automatización:** Python, Pandas (procesamiento de datos en bruto, limpieza y transformación).
* **Base de Datos:** PostgreSQL (modelado dimensional en **Modelo en Estrella** / *Star Schema* con tablas de hechos y dimensiones).
* **Visualización:** Power BI (diseño de dashboards interactivos con medidas DAX avanzadas para el cálculo de KPIs, Crecimiento YoY y análisis de precios).

---

##  Vistas del Dashboard

### 1. Visión General (Overview)
*Indicadores clave de volumen, facturación total, número de países y productos, con análisis de impacto (incluyendo la variación del 2020 afectada por el contexto global).*
<img width="887" height="503" alt="Visión General" src="https://github.com/user-attachments/assets/eb556c19-d348-4e97-9a9d-d929ac798d24" />


### 2. Análisis de Productos
*Análisis de dispersión (Volumen vs. Precio Medio) y evolución de ventas por producto.*
<img width="886" height="499" alt="Analisis por Producto" src="https://github.com/user-attachments/assets/012f8f69-d51d-46e2-9671-1f42e4a78f96" />



### 3. Análisis por Países
*Distribución geográfica de las exportaciones y ranking de los principales mercados de destino.*
<img width="884" height="497" alt="Analisis por País" src="https://github.com/user-attachments/assets/bdb25eb6-eae3-4d46-93b5-9f0d19161408" />


---

##  Principales Medidas DAX Implementadas
El proyecto utiliza medidas optimizadas mediante variables (`VAR`) para garantizar un rendimiento fluido y evitar errores en el contexto de filtro:
- **Cálculo de Crecimiento Interanual (YoY %)** dinámico adaptado a la selección de años.
- **Precio Medio ponderado** a partir de los totales de valor y volumen.
