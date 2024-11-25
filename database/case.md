# Descripción del Caso  

Este proyecto desarrolla un sistema de base de datos para gestionar consultas y respuestas realizadas entre usuarios y moderadores. Proporciona una estructura organizada para almacenar y rastrear interacciones en una plataforma de consultas.

## Diseño de Base de Datos  
El diseño incluye las siguientes tablas principales:  
- **`user`**: Almacena información de los usuarios registrados.  
- **`moderator`**: Almacena información de los moderadores responsables de responder las consultas.  
- **`consultation`**: Registra las consultas realizadas por los usuarios y su relación con respuestas y moderadores.  
- **`answer`**: Contiene las respuestas a las consultas.  

![Diagrama de Base de Datos](../resources/database_diagram.png)

## Diccionario de Datos  

### Tabla: `user`  
| Columna             | Tipo de Dato   | Descripción                                |  
|---------------------|----------------|--------------------------------------------|  
| `identifier`        | `int`          | Identificador único del usuario.           |  
| `name`              | `varchar(50)`  | Nombre completo del usuario.               |  
| `email`             | `varchar(250)` | Dirección de correo electrónico.           |  
| `registration_date` | `timestamp`    | Fecha de registro del usuario.             |  

### Tabla: `moderator`  
| Columna         | Tipo de Dato   | Descripción                                  |  
|-----------------|----------------|----------------------------------------------|  
| `identifier`    | `int`          | Identificador único del moderador.           |  
| `name`          | `varchar(50)`  | Nombre completo del moderador.               |  
| `email`         | `varchar(250)` | Dirección de correo electrónico del moderador.|  

### Tabla: `consultation`  
| Columna             | Tipo de Dato   | Descripción                                |  
|---------------------|----------------|--------------------------------------------|  
| `identifier`        | `int`          | Identificador único de la consulta.        |  
| `title`             | `varchar(50)`  | Título breve de la consulta.               |  
| `consultation`      | `varchar(500)` | Descripción detallada de la consulta.      |  
| `consultation_date` | `timestamp`    | Fecha y hora en la que se realizó la consulta. |  
| `user_identifier`   | `int`          | Relación con el usuario que realizó la consulta. |  
| `moderator_identifier` | `int`       | Relación con el moderador que responderá.  |  
| `answer_identifier` | `int`          | Relación con la respuesta dada a la consulta. |  

### Tabla: `answer`  
| Columna         | Tipo de Dato   | Descripción                                  |  
|-----------------|----------------|----------------------------------------------|  
| `identifier`    | `int`          | Identificador único de la respuesta.         |  
| `answer`        | `varchar(500)` | Contenido detallado de la respuesta.         |  
| `answer_date`   | `timestamp`    | Fecha y hora en la que se dio la respuesta.  |  
