CREATE TABLE users(
id_user              int(255) PRIMARY KEY auto_increment NOT NULL,
email                varchar(255) NOT NULL,
id                   varchar(255) NOT NULL,
id_token             varchar(255) NOT NULL,
imagen               varchar(255) NOT NULL,
nombre               varchar(255) NOT NULL,
proveedor            varchar(255) NOT NULL,
remember_token       varchar(255),
tipo_usuario         varchar(50)
)ENGINE=InnoDb;

CREATE TABLE escenarios(
id              int(255) PRIMARY KEY auto_increment NOT NULL,
nombre          varchar(255) NOT NULL,
codigo          varchar(50) NOT NULL,
imagen          varchar(255) NOT NULL,
descripcion     text
)ENGINE=InnoDb;

CREATE TABLE reserva(
id              int(255) PRIMARY KEY auto_increment NOT NULL,
id_user         int(255) NOT NULL,
id_reserva      int(255) NOT NULL,
reserva_creada  varchar(255) NOT NULL,
FOREIGN KEY(id_user) REFERENCES users(id_user),
FOREIGN KEY(id_reserva) REFERENCES escenarios(id)
)ENGINE=InnoDb;

CREATE TABLE users_registered(
id              int(255) auto_increment PRIMARY KEY NOT NULL,
nombre          varchar(255) NOT NULL,
apellido        varchar(255) NOT NULL,
email           varchar(255) NOT NULL,
contraseña      varchar(50) NOT NULL,
tipo_usuario   varchar(50) NOT NULL
)ENGINE=InnoDb;

insert into escenarios (nombre,codigo,imagen,descripcion) values ('cancha','12','hola','asi es');