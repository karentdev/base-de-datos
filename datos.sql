/*==============================================================*/
/* Tabla: CLIENTE                                               */
/*==============================================================*/
INSERT INTO CLIENTE values (1, 'Yulissa Melina',  'Moreira Castro', 'Manta', '0987465789', 'yulissa@github.com', '1316725634', 'NO');
INSERT INTO CLIENTE values (2, 'Daniela Mariela', 'Sánchez Artega', 'Manta', '0456372836', 'daniela@shell.com',  '1398567300', 'NO');
INSERT INTO CLIENTE values (3, 'Jesús Alexander', 'López Cañarte',  'Manta', '0946756486', 'jesus@gitlab.com',   '1321526345', 'NO');
INSERT INTO CLIENTE values (4, 'Paco Hérnan',     'Mero Vera',      'Manta', '0965784566', 'paco@mail.com',      '1306453645', 'NO');

/*==============================================================*/
/* Tabla: PERSONAL                                              */
/*==============================================================*/
INSERT INTO PERSONAL values (1, 'Gabriela Silva', 'Chávez Farfán',   '1324152623', 'Manta', '2001-01-14', '2020-01-14', '0967345263', 'farfan@live.com');
INSERT INTO PERSONAL values (2, 'Gina Patricia',  'López Soledispa', '1390528356', 'Manta', '2002-05-24', '2021-01-14', '0945624352', 'lopez@live.com');
INSERT INTO PERSONAL values (3, 'Karen María',    'Loor Lucas',      '1309267352', 'Manta', '2000-03-03', '2020-01-14', '0978354634', 'loor@live.com');
INSERT INTO PERSONAL values (4, 'Pedro José',     'Zambrano Bailón', '1318956374', 'Manta', '1999-10-12', '2021-01-14', '0989123329', 'bailon@live.com');

/*==============================================================*/
/* Tabla: IGLESIA                                               */
/*==============================================================*/
INSERT INTO IGLESIA values (1, 'Maria Auxiliadora', 'Manta', '0993209428','iglesia@iglesia.com','100x80', 150, 'ACTIVO');

/*==============================================================*/
/* Tabla: TRAMITE                                               */
/*==============================================================*/
INSERT INTO TRAMITE values (1, 1, 1, 'Bautizo',    '2022-01-05', 20, 'PENDIENTE');
INSERT INTO TRAMITE values (2, 2, 2, 'Casamiento', '2022-01-06', 50, 'PENDIENTE');
INSERT INTO TRAMITE values (3, 3, 3, 'Comunión',   '2022-01-07', 30, 'PENDIENTE');
INSERT INTO TRAMITE values (4, 4, 4, 'Bautizo',    '2022-01-08', 20, 'PENDIENTE');

/*==============================================================*/
/* Tabla: TIPO_PERSONAL                                         */
/*==============================================================*/
INSERT INTO TIPO_PERSONAL values (1, 1, 1, 'Monja');
INSERT INTO TIPO_PERSONAL values (2, 4, 1, 'Sacerdote');

/*==============================================================*/
/* Tabla: SACRAMENTO                                            */
/*==============================================================*/
INSERT INTO SACRAMENTO values (1, 1, 1, 1, 1, 'Bautizo',  '2022-01-12', 50, 80, 90);
INSERT INTO SACRAMENTO values (2, 2, 2, 2, 1, 'Comunión', '2022-01-15', 20, 50, 90);

/*==============================================================*/
/* Tabla: SERVICIO_ADICIONAL                                    */
/*==============================================================*/
INSERT INTO SERVICIO_ADICIONAL values (1, 1, 'Grupo Musical', '2022-01-12', 40, 2);
INSERT INTO SERVICIO_ADICIONAL values (2, 2, 'Decoraciones',  '2022-01-15', 30, 3);

/*==============================================================*/
/* Tabla: FELIGRESE                                             */
/*==============================================================*/
INSERT INTO FELIGRESE values (1, 1, 'Jose Bautista', 'Sánchez Pinargote', '1312764654');
INSERT INTO FELIGRESE values (2, 1, 'Juan Pablo',    'Cárdona Zapata',    '1301782997');
INSERT INTO FELIGRESE values (3, 2, 'Miguel José',   'Ganchozo Lucas',    '1302648465');

/*==============================================================*/
/* Tabla: MANTENIMIENTO                                         */
/*==============================================================*/
INSERT INTO MANTENIMIENTO values (1, 1, 'PINTURA', '2022-01-20', 50);