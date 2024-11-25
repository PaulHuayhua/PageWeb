# Desarrollo del Proyecto  

## Paso 1: Análisis de Requerimientos  
- Identificar las entidades principales: usuario, moderador, consulta y respuesta.  
- Definir las relaciones entre ellas:  
  - Un usuario puede realizar muchas consultas.  
  - Un moderador puede responder a muchas consultas.  
  - Cada consulta tiene una respuesta única.

## Paso 2: Diseño de Base de Datos  
- Crear un modelo entidad-relación (MER).  
- Normalizar las tablas para evitar redundancia de datos.  

## Paso 3: Implementación  
1. **Creación de tablas**:  
   - Implementar las estructuras con claves primarias y restricciones de longitud.  
2. **Definición de claves foráneas**:  
   - Relacionar las tablas entre sí mediante claves foráneas.  

## Paso 4: Pruebas de Datos  
- Insertar registros de prueba en cada tabla para validar la integridad de las relaciones.  
- Verificar que las consultas a la base de datos retornan los resultados esperados.  
