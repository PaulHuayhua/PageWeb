CREATE TABLE user (
    identifier int NOT NULL,
    name varchar(50) NOT NULL COMMENT 'Nombre completo del usuario.',
    email varchar(250) NOT NULL COMMENT 'Dirección de correo electrónico única.',
    registration_date timestamp NOT NULL COMMENT 'Fecha de registro del usuario.',
    CONSTRAINT user_pk PRIMARY KEY (identifier)
);

CREATE TABLE moderator (
    identifier int NOT NULL,
    name varchar(50) NOT NULL COMMENT 'Nombre completo del moderador.',
    email varchar(250) NOT NULL COMMENT 'Correo electrónico del moderador.',
    CONSTRAINT moderator_pk PRIMARY KEY (identifier)
);

CREATE TABLE answer (
    identifier int NOT NULL,
    answer varchar(500) NOT NULL COMMENT 'Contenido detallado de la respuesta.',
    answer_date timestamp NOT NULL COMMENT 'Fecha y hora en que se proporcionó la respuesta.',
    CONSTRAINT answer_pk PRIMARY KEY (identifier)
);

CREATE TABLE consultation (
    identifier int NOT NULL,
    title varchar(50) NULL COMMENT 'Título breve de la consulta.',
    consultation varchar(500) NOT NULL COMMENT 'Descripción detallada de la consulta.',
    consultation_date timestamp NOT NULL COMMENT 'Fecha de la consulta.',
    user_identifier int NOT NULL,
    moderator_identifier int NOT NULL,
    answer_identifier int NOT NULL,
    CONSTRAINT consultation_pk PRIMARY KEY (identifier)
);
