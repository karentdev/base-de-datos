/*==============================================================*/
/* Tabla: TRAMITE                                               */
/*==============================================================*/
create table TRAMITE (
  tramite_id        INT4            not null,
  cliente_id        INT4            not null,
  personal_id       INT4            not null,
  tramite_tipo      VARCHAR(50)     null,
  tramite_fecha     DATE            null,
  tramite_costo     NUMERIC(6,2)    null,
  tramite_estado    VARCHAR(50)     null, 

  constraint PK_TRAMITE primary key (tramite_id)
);

/*==============================================================*/
/* Tabla: RESULTADO_TRAMITE                                     */
/*==============================================================*/
create table RESULTADO_TRAMITE (
  rtramite_id       INT4            not null,
  tramite_id        INT4            not null,
  rtramite_fecha     DATE            null,
  rtramite_pago     NUMERIC(6,2)    null,

  constraint PK_RESULTADO_TRAMITE primary key (rtramite_id)
);

/*==============================================================*/
/* Tabla: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
  cliente_id              INT4            not null,
  cliente_nombre          VARCHAR(50)     null, 
  cliente_apellido        VARCHAR(50)     null, 
  cliente_direccion       VARCHAR(50)     null, 
  cliente_telefono        VARCHAR(50)     null, 
  cliente_correo          VARCHAR(50)     null, 
  cliente_identificador   VARCHAR(50)     null, 
  cliente_tramite         VARCHAR(50)     null, 

  constraint PK_CLIENTE primary key (cliente_id)
);

/*==============================================================*/
/* Tabla: SERVICIO_ADICIONAL                                    */
/*==============================================================*/
create table SERVICIO_ADICIONAL (
  servadicional_id            INT4            not null,
  sacramento_id               INT4            not null,
  servadicional_tipo          VARCHAR(50)     null, 
  servadicional_fecha         DATE            null,
  servadicional_precio        NUMERIC(6,2)    null,
  servadicional_cantidad      INT4            null,

  constraint PK_SERVICIO_ADICIONAL primary key (servadicional_id)
);

/*==============================================================*/
/* Tabla: PERSONAL                                              */
/*==============================================================*/
create table PERSONAL (
  personal_id                 INT4            not null,
  personal_nombre             VARCHAR(50)     null, 
  personal_apellido           VARCHAR(50)     null, 
  personal_identificacion     VARCHAR(50)     null, 
  personal_direccion          VARCHAR(50)     null, 
  personal_fechanacimiento    DATE            null,
  personal_fechaingreso       DATE            null,
  personal_telefono           VARCHAR(50)     null, 
  personal_correo             VARCHAR(50)     null, 

  constraint PK_PERSONAL primary key (personal_id)
);

/*==============================================================*/
/* Tabla: TIPO_PERSONAL                                         */
/*==============================================================*/
create table TIPO_PERSONAL (
  tipopersonal_id         INT4            not null,
  personal_id             INT4            not null,
  iglesia_id              INT4            not null,
  tipopersonal_tipo       VARCHAR(50)     null, 

  constraint PK_TIPO_PERSONAL primary key (tipopersonal_id)
);

/*==============================================================*/
/* Tabla: SACRAMENTO                                            */
/*==============================================================*/
create table SACRAMENTO (
  sacramento_id           INT4            not null,
  personal_id             INT4            not null,
  cliente_id              INT4            not null,
  tipopersonal_id         INT4            not null,
  iglesia_id              INT4            not null,
  sacramento_tipo         VARCHAR(50)     null, 
  sacramento_fecha        DATE            null,
  sacramento_precio       NUMERIC(6,2)    null,
  sacramento_total        NUMERIC(6,2)    null,
  sacramento_cantidad     INT4            null,

  constraint PK_SACRAMENTO primary key (sacramento_id)
);

/*==============================================================*/
/* Tabla: FELIGRESE                                             */
/*==============================================================*/
create table FELIGRESE (
  feligrese_id          INT4            not null,
  sacramento_id         INT4            not null,
  feligrese_nombre      VARCHAR(50)     null, 
  feligrese_apellido    VARCHAR(50)     null, 
  feligrese_cedula      VARCHAR(50)     null, 

  constraint PK_FELIGRESE primary key (feligrese_id)
);

/*==============================================================*/
/* Tabla: IGLESIA                                               */
/*==============================================================*/
create table IGLESIA (
  iglesia_id            INT4            not null,
  iglesia_nombre        VARCHAR(50)     null, 
  iglesia_direccion     VARCHAR(50)     null, 
  iglesia_telefono      VARCHAR(50)     null, 
  iglesia_correo        VARCHAR(50)     null, 
  iglesia_dimensiones   VARCHAR(50)     null, 
  iglesia_capacidad     INT             null, 
  iglesia_estado        VARCHAR(50)     null, 

  constraint PK_IGLESIA primary key (iglesia_id)
);

/*==============================================================*/
/* Tabla: MANTENIMIENTO                                         */
/*==============================================================*/
create table MANTENIMIENTO (
  mantenimiento_id        INT4            not null,
  iglesia_id              INT4            not null,
  mantenimiento_tipo      VARCHAR(50)     null, 
  mantenimiento_fecha     DATE            null,
  mantenimiento_costo     NUMERIC(6,2)    null,

  constraint PK_MANTENIMIENTO primary key (mantenimiento_id)
);

/*==============================================================*/
/* Tabla: REPORTE_MANTENIMIENTO                                 */
/*==============================================================*/
create table REPORTE_MANTENIMIENTO (
  rmantenimiento_id         INT4            not null,
  mantenimiento_id          INT4            not null,
  rmantenimiento_fecha      DATE            null,
  rmantenimiento_valor      NUMERIC(6,2)    null,

  constraint PK_REPORTE_MANTENIMIENTO primary key (rmantenimiento_id)
);

/*==============================================================*/
/*                                                              */
/*==============================================================*/

alter table TRAMITE
  add constraint FK_TRAMITE_RELATIONS_CLIENTE foreign key (cliente_id)
    references CLIENTE (cliente_id)
    on delete restrict on update restrict;

alter table TRAMITE
  add constraint FK_TRAMITE_RELATIONS_PERSONAL foreign key (personal_id)
    references PERSONAL (personal_id)
    on delete restrict on update restrict;

alter table RESULTADO_TRAMITE
  add constraint FK_RTRAMITE_RELATIONS_TRAMITE foreign key (tramite_id)
    references TRAMITE (tramite_id)
    on delete restrict on update restrict;

alter table SERVICIO_ADICIONAL
  add constraint FK_SADICIONAL_RELATIONS_SACRAMENTO foreign key (sacramento_id)
    references SACRAMENTO (sacramento_id)
    on delete restrict on update restrict;

alter table TIPO_PERSONAL
  add constraint FK_TPERSONAL_RELATIONS_PERSONAL foreign key (personal_id)
    references PERSONAL (personal_id)
    on delete restrict on update restrict;

alter table TIPO_PERSONAL
  add constraint FK_TPERSONAL_RELATIONS_IGLESIA foreign key (iglesia_id)
    references IGLESIA (iglesia_id)
    on delete restrict on update restrict;

alter table SACRAMENTO
  add constraint FK_SACRAMENTO_RELATIONS_PERSONAL foreign key (personal_id)
    references PERSONAL (personal_id)
    on delete restrict on update restrict;

alter table SACRAMENTO
  add constraint FK_SACRAMENTO_RELATIONS_CLIENTE foreign key (cliente_id)
    references CLIENTE (cliente_id)
    on delete restrict on update restrict;

alter table SACRAMENTO
  add constraint FK_SACRAMENTO_RELATIONS_TPERSONAL foreign key (tipopersonal_id)
    references TIPO_PERSONAL (tipopersonal_id)
    on delete restrict on update restrict;

alter table FELIGRESE
  add constraint FK_FELIGRESE_RELATIONS_SACRAMENTO foreign key (sacramento_id)
    references SACRAMENTO (sacramento_id)
    on delete restrict on update restrict;

alter table MANTENIMIENTO
  add constraint FK_MANTENIMIENTO_RELATIONS_IGLESIA foreign key (iglesia_id)
    references IGLESIA (iglesia_id)
    on delete restrict on update restrict;

alter table REPORTE_MANTENIMIENTO
  add constraint FK_RMANTENIMIENTO_RELATIONS_IGLESIA foreign key (mantenimiento_id)
    references MANTENIMIENTO (mantenimiento_id)
    on delete restrict on update restrict;