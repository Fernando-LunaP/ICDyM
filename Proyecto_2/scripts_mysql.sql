-- Tablas
-- Descomentar la linea de abajo si es que no se tiene creada una base todavia
-- CREATE database Diabetes;

USE Diabetes;

-- Crear tablas

CREATE TABLE `asist_medi` (
  `CVE` bigint DEFAULT NULL,
  `DESCRIP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `causaDef2017` (
  `CVE` text,
  `DESCRIP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `causaDef2018` (
  `CVE` text,
  `DESCRIP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `causaDef2019` (
  `CVE` text,
  `DESCRIP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `causaDef2020` (
  `CVE` text,
  `DESCRIP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `causaDef2021` (
  `CVE` text,
  `DESCRIP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `lengua` (
  `CVE` bigint DEFAULT NULL,
  `DESCRIP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `ocupacion` (
  `CVE` bigint DEFAULT NULL,
  `DESCRIP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `rawDataDefunciones2017` (
  `ent_regis` bigint DEFAULT NULL,
  `mun_regis` bigint DEFAULT NULL,
  `ent_resid` bigint DEFAULT NULL,
  `mun_resid` bigint DEFAULT NULL,
  `tloc_resid` bigint DEFAULT NULL,
  `loc_resid` bigint DEFAULT NULL,
  `ent_ocurr` bigint DEFAULT NULL,
  `mun_ocurr` bigint DEFAULT NULL,
  `tloc_ocurr` bigint DEFAULT NULL,
  `loc_ocurr` bigint DEFAULT NULL,
  `causa_def` text,
  `lista_mex` text,
  `sexo` bigint DEFAULT NULL,
  `edad` bigint DEFAULT NULL,
  `dia_ocurr` bigint DEFAULT NULL,
  `mes_ocurr` bigint DEFAULT NULL,
  `anio_ocur` bigint DEFAULT NULL,
  `dia_regis` bigint DEFAULT NULL,
  `mes_regis` bigint DEFAULT NULL,
  `anio_regis` bigint DEFAULT NULL,
  `dia_nacim` bigint DEFAULT NULL,
  `mes_nacim` bigint DEFAULT NULL,
  `anio_nacim` bigint DEFAULT NULL,
  `ocupacion` bigint DEFAULT NULL,
  `escolarida` bigint DEFAULT NULL,
  `edo_civil` bigint DEFAULT NULL,
  `presunto` bigint DEFAULT NULL,
  `ocurr_trab` bigint DEFAULT NULL,
  `lugar_ocur` bigint DEFAULT NULL,
  `necropsia` bigint DEFAULT NULL,
  `asist_medi` bigint DEFAULT NULL,
  `sitio_ocur` bigint DEFAULT NULL,
  `cond_cert` bigint DEFAULT NULL,
  `nacionalid` bigint DEFAULT NULL,
  `derechohab` bigint DEFAULT NULL,
  `embarazo` bigint DEFAULT NULL,
  `rel_emba` bigint DEFAULT NULL,
  `horas` bigint DEFAULT NULL,
  `minutos` bigint DEFAULT NULL,
  `capitulo` bigint DEFAULT NULL,
  `grupo` bigint DEFAULT NULL,
  `lista1` bigint DEFAULT NULL,
  `gr_lismex` text,
  `vio_fami` bigint DEFAULT NULL,
  `area_ur` bigint DEFAULT NULL,
  `edad_agru` bigint DEFAULT NULL,
  `complicaro` bigint DEFAULT NULL,
  `dia_cert` bigint DEFAULT NULL,
  `mes_cert` bigint DEFAULT NULL,
  `anio_cert` bigint DEFAULT NULL,
  `maternas` text,
  `lengua` bigint DEFAULT NULL,
  `cond_act` bigint DEFAULT NULL,
  `par_agre` bigint DEFAULT NULL,
  `ent_ocules` bigint DEFAULT NULL,
  `mun_ocules` bigint DEFAULT NULL,
  `loc_ocules` bigint DEFAULT NULL,
  `razon_m` bigint DEFAULT NULL,
  `dis_re_oax` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `rawDataDefunciones2018` (
  `ent_regis` bigint DEFAULT NULL,
  `mun_regis` bigint DEFAULT NULL,
  `ent_resid` bigint DEFAULT NULL,
  `mun_resid` bigint DEFAULT NULL,
  `tloc_resid` bigint DEFAULT NULL,
  `loc_resid` bigint DEFAULT NULL,
  `ent_ocurr` bigint DEFAULT NULL,
  `mun_ocurr` bigint DEFAULT NULL,
  `tloc_ocurr` bigint DEFAULT NULL,
  `loc_ocurr` bigint DEFAULT NULL,
  `causa_def` text,
  `lista_mex` text,
  `sexo` bigint DEFAULT NULL,
  `edad` bigint DEFAULT NULL,
  `dia_ocurr` bigint DEFAULT NULL,
  `mes_ocurr` bigint DEFAULT NULL,
  `anio_ocur` bigint DEFAULT NULL,
  `dia_regis` bigint DEFAULT NULL,
  `mes_regis` bigint DEFAULT NULL,
  `anio_regis` bigint DEFAULT NULL,
  `dia_nacim` bigint DEFAULT NULL,
  `mes_nacim` bigint DEFAULT NULL,
  `anio_nacim` bigint DEFAULT NULL,
  `ocupacion` bigint DEFAULT NULL,
  `escolarida` bigint DEFAULT NULL,
  `edo_civil` bigint DEFAULT NULL,
  `presunto` bigint DEFAULT NULL,
  `ocurr_trab` bigint DEFAULT NULL,
  `lugar_ocur` bigint DEFAULT NULL,
  `necropsia` bigint DEFAULT NULL,
  `asist_medi` bigint DEFAULT NULL,
  `sitio_ocur` bigint DEFAULT NULL,
  `cond_cert` bigint DEFAULT NULL,
  `nacionalid` bigint DEFAULT NULL,
  `derechohab` bigint DEFAULT NULL,
  `embarazo` bigint DEFAULT NULL,
  `rel_emba` bigint DEFAULT NULL,
  `horas` bigint DEFAULT NULL,
  `minutos` bigint DEFAULT NULL,
  `capitulo` bigint DEFAULT NULL,
  `grupo` bigint DEFAULT NULL,
  `lista1` bigint DEFAULT NULL,
  `gr_lismex` text,
  `vio_fami` bigint DEFAULT NULL,
  `area_ur` bigint DEFAULT NULL,
  `edad_agru` bigint DEFAULT NULL,
  `complicaro` bigint DEFAULT NULL,
  `dia_cert` bigint DEFAULT NULL,
  `mes_cert` bigint DEFAULT NULL,
  `anio_cert` bigint DEFAULT NULL,
  `maternas` text,
  `lengua` bigint DEFAULT NULL,
  `cond_act` bigint DEFAULT NULL,
  `par_agre` bigint DEFAULT NULL,
  `ent_ocules` bigint DEFAULT NULL,
  `mun_ocules` bigint DEFAULT NULL,
  `loc_ocules` bigint DEFAULT NULL,
  `razon_m` bigint DEFAULT NULL,
  `dis_re_oax` bigint DEFAULT NULL,
  `Unnamed: 59` double DEFAULT NULL,
  `escolarida.1` bigint DEFAULT NULL,
  `diferencias` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `rawDataDefunciones2019` (
  `ent_regis` bigint DEFAULT NULL,
  `mun_regis` bigint DEFAULT NULL,
  `ent_resid` bigint DEFAULT NULL,
  `mun_resid` bigint DEFAULT NULL,
  `tloc_resid` bigint DEFAULT NULL,
  `loc_resid` bigint DEFAULT NULL,
  `ent_ocurr` bigint DEFAULT NULL,
  `mun_ocurr` bigint DEFAULT NULL,
  `tloc_ocurr` bigint DEFAULT NULL,
  `loc_ocurr` bigint DEFAULT NULL,
  `causa_def` text,
  `lista_mex` text,
  `sexo` bigint DEFAULT NULL,
  `edad` bigint DEFAULT NULL,
  `dia_ocurr` bigint DEFAULT NULL,
  `mes_ocurr` bigint DEFAULT NULL,
  `anio_ocur` bigint DEFAULT NULL,
  `dia_regis` bigint DEFAULT NULL,
  `mes_regis` bigint DEFAULT NULL,
  `anio_regis` bigint DEFAULT NULL,
  `dia_nacim` bigint DEFAULT NULL,
  `mes_nacim` bigint DEFAULT NULL,
  `anio_nacim` bigint DEFAULT NULL,
  `ocupacion` bigint DEFAULT NULL,
  `escolarida` bigint DEFAULT NULL,
  `edo_civil` bigint DEFAULT NULL,
  `presunto` bigint DEFAULT NULL,
  `ocurr_trab` bigint DEFAULT NULL,
  `lugar_ocur` bigint DEFAULT NULL,
  `necropsia` bigint DEFAULT NULL,
  `asist_medi` bigint DEFAULT NULL,
  `sitio_ocur` bigint DEFAULT NULL,
  `cond_cert` bigint DEFAULT NULL,
  `nacionalid` bigint DEFAULT NULL,
  `derechohab` bigint DEFAULT NULL,
  `embarazo` bigint DEFAULT NULL,
  `rel_emba` bigint DEFAULT NULL,
  `horas` bigint DEFAULT NULL,
  `minutos` bigint DEFAULT NULL,
  `capitulo` bigint DEFAULT NULL,
  `grupo` bigint DEFAULT NULL,
  `lista1` bigint DEFAULT NULL,
  `gr_lismex` text,
  `vio_fami` bigint DEFAULT NULL,
  `area_ur` bigint DEFAULT NULL,
  `edad_agru` bigint DEFAULT NULL,
  `complicaro` bigint DEFAULT NULL,
  `dia_cert` bigint DEFAULT NULL,
  `mes_cert` bigint DEFAULT NULL,
  `anio_cert` bigint DEFAULT NULL,
  `maternas` text,
  `lengua` bigint DEFAULT NULL,
  `cond_act` bigint DEFAULT NULL,
  `par_agre` bigint DEFAULT NULL,
  `ent_ocules` bigint DEFAULT NULL,
  `mun_ocules` bigint DEFAULT NULL,
  `loc_ocules` bigint DEFAULT NULL,
  `razon_m` bigint DEFAULT NULL,
  `dis_re_oax` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `rawDataDefunciones2020` (
  `ent_regis` bigint DEFAULT NULL,
  `mun_regis` bigint DEFAULT NULL,
  `ent_resid` bigint DEFAULT NULL,
  `mun_resid` bigint DEFAULT NULL,
  `tloc_resid` bigint DEFAULT NULL,
  `loc_resid` bigint DEFAULT NULL,
  `ent_ocurr` bigint DEFAULT NULL,
  `mun_ocurr` bigint DEFAULT NULL,
  `tloc_ocurr` bigint DEFAULT NULL,
  `loc_ocurr` bigint DEFAULT NULL,
  `causa_def` text,
  `lista_mex` text,
  `sexo` bigint DEFAULT NULL,
  `edad` bigint DEFAULT NULL,
  `dia_ocurr` bigint DEFAULT NULL,
  `mes_ocurr` bigint DEFAULT NULL,
  `anio_ocur` bigint DEFAULT NULL,
  `dia_regis` bigint DEFAULT NULL,
  `mes_regis` bigint DEFAULT NULL,
  `anio_regis` bigint DEFAULT NULL,
  `dia_nacim` bigint DEFAULT NULL,
  `mes_nacim` bigint DEFAULT NULL,
  `anio_nacim` bigint DEFAULT NULL,
  `ocupacion` bigint DEFAULT NULL,
  `escolarida` bigint DEFAULT NULL,
  `edo_civil` bigint DEFAULT NULL,
  `presunto` bigint DEFAULT NULL,
  `ocurr_trab` bigint DEFAULT NULL,
  `lugar_ocur` bigint DEFAULT NULL,
  `necropsia` bigint DEFAULT NULL,
  `asist_medi` bigint DEFAULT NULL,
  `sitio_ocur` bigint DEFAULT NULL,
  `cond_cert` bigint DEFAULT NULL,
  `nacionalid` bigint DEFAULT NULL,
  `derechohab` bigint DEFAULT NULL,
  `embarazo` bigint DEFAULT NULL,
  `rel_emba` bigint DEFAULT NULL,
  `horas` bigint DEFAULT NULL,
  `minutos` bigint DEFAULT NULL,
  `capitulo` bigint DEFAULT NULL,
  `grupo` bigint DEFAULT NULL,
  `lista1` bigint DEFAULT NULL,
  `gr_lismex` text,
  `vio_fami` bigint DEFAULT NULL,
  `area_ur` bigint DEFAULT NULL,
  `edad_agru` bigint DEFAULT NULL,
  `complicaro` bigint DEFAULT NULL,
  `dia_cert` bigint DEFAULT NULL,
  `mes_cert` bigint DEFAULT NULL,
  `anio_cert` bigint DEFAULT NULL,
  `maternas` text,
  `lengua` bigint DEFAULT NULL,
  `cond_act` bigint DEFAULT NULL,
  `par_agre` bigint DEFAULT NULL,
  `ent_ocules` bigint DEFAULT NULL,
  `mun_ocules` bigint DEFAULT NULL,
  `loc_ocules` bigint DEFAULT NULL,
  `razon_m` bigint DEFAULT NULL,
  `dis_re_oax` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `rawDataDefunciones2021` (
  `ent_regis` bigint DEFAULT NULL,
  `mun_regis` bigint DEFAULT NULL,
  `ent_resid` bigint DEFAULT NULL,
  `mun_resid` bigint DEFAULT NULL,
  `tloc_resid` bigint DEFAULT NULL,
  `loc_resid` bigint DEFAULT NULL,
  `ent_ocurr` bigint DEFAULT NULL,
  `mun_ocurr` bigint DEFAULT NULL,
  `tloc_ocurr` bigint DEFAULT NULL,
  `loc_ocurr` bigint DEFAULT NULL,
  `causa_def` text,
  `lista_mex` text,
  `sexo` bigint DEFAULT NULL,
  `edad` bigint DEFAULT NULL,
  `dia_ocurr` bigint DEFAULT NULL,
  `mes_ocurr` bigint DEFAULT NULL,
  `anio_ocur` bigint DEFAULT NULL,
  `dia_regis` bigint DEFAULT NULL,
  `mes_regis` bigint DEFAULT NULL,
  `anio_regis` bigint DEFAULT NULL,
  `dia_nacim` bigint DEFAULT NULL,
  `mes_nacim` bigint DEFAULT NULL,
  `anio_nacim` bigint DEFAULT NULL,
  `ocupacion` bigint DEFAULT NULL,
  `escolarida` bigint DEFAULT NULL,
  `edo_civil` bigint DEFAULT NULL,
  `presunto` bigint DEFAULT NULL,
  `ocurr_trab` bigint DEFAULT NULL,
  `lugar_ocur` bigint DEFAULT NULL,
  `necropsia` bigint DEFAULT NULL,
  `asist_medi` bigint DEFAULT NULL,
  `sitio_ocur` bigint DEFAULT NULL,
  `cond_cert` bigint DEFAULT NULL,
  `nacionalid` bigint DEFAULT NULL,
  `derechohab` bigint DEFAULT NULL,
  `embarazo` bigint DEFAULT NULL,
  `rel_emba` bigint DEFAULT NULL,
  `horas` bigint DEFAULT NULL,
  `minutos` bigint DEFAULT NULL,
  `capitulo` bigint DEFAULT NULL,
  `grupo` bigint DEFAULT NULL,
  `lista1` bigint DEFAULT NULL,
  `gr_lismex` text,
  `vio_fami` bigint DEFAULT NULL,
  `area_ur` bigint DEFAULT NULL,
  `edad_agru` bigint DEFAULT NULL,
  `complicaro` bigint DEFAULT NULL,
  `dia_cert` bigint DEFAULT NULL,
  `mes_cert` bigint DEFAULT NULL,
  `anio_cert` bigint DEFAULT NULL,
  `maternas` text,
  `lengua` bigint DEFAULT NULL,
  `cond_act` bigint DEFAULT NULL,
  `par_agre` bigint DEFAULT NULL,
  `ent_ocules` bigint DEFAULT NULL,
  `mun_ocules` bigint DEFAULT NULL,
  `loc_ocules` bigint DEFAULT NULL,
  `razon_m` bigint DEFAULT NULL,
  `dis_re_oax` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `rawDataEstimaciones` (
  `RENGLON` bigint DEFAULT NULL,
  `CLAVE` bigint DEFAULT NULL,
  `CLAVE_ENT` bigint DEFAULT NULL,
  `NOM_ENT` text,
  `MUN` text,
  `SEXO` text,
  `AÑO` bigint DEFAULT NULL,
  `EDAD_QUIN` text,
  `POB` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `rawDataHabitantes` (
  `Codigo_Municipio` text,
  `Nombre_Municipio` text,
  `Cantidad_Habitantes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `sexo` (
  `CVE` bigint DEFAULT NULL,
  `DESCRIP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `sitio_ocur` (
  `CVE` bigint DEFAULT NULL,
  `DESCRIP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tamanio_loc` (
  `CVE` bigint DEFAULT NULL,
  `DESCRIP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



--

create table Diabetes.registro_defunciones
(
	idDef int not null auto_increment,
    anio int not null,
	fecha_regis date,
    mun_resid int not null,
    tloc_resid int,
    sexo int,
	ocupacion int,
    edad int,
    asist_medi int,
    sitio_ocur int,
    lengua int,
    primary key (idDef)
);

create table Diabetes.municipios
(
	idMunicipio int,
    Nombre varchar(50),
    primary key (idMunicipio)
);

create table Diabetes.Cant_Habitantes
(
	idMunicipio int,
    Anio smallint,
    Poblacion int,
    primary key (idMunicipio, Anio)
);

create table Diabetes.Estatus
(
	clave int auto_increment,
    procedimiento varchar(30),
    estatus int,
    primary key (Clave),
    unique (procedimiento)
);

-- Registro

insert into Estatus (procedimiento, estatus) values ('Actualiza_Edad', 0);
insert into Estatus (procedimiento, estatus) values ('Genera_datos_pob', 0);
insert into Estatus (procedimiento, estatus) values ('Limpia_Datos', 0);
insert into Estatus (procedimiento, estatus) values ('Unir_datos', 0);

-- Funciones

DELIMITER $$

CREATE FUNCTION Revisa_Estatus(ElProcedimiento varchar(30))
RETURNS INT
BEGIN

   DECLARE valor INT;
   SET valor = 0;
   SELECT ifnull(estatus, 0) into valor from Diabetes.Estatus
   WHERE procedimiento = ElProcedimiento;

   RETURN valor;

END$$

DELIMITER ;

-- Vistas
create or replace view Diabetes.vw_Def_Diabetes_2017
as
select mun_resid, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua,
		str_to_date(concat('2017','-', lpad(mes_regis, 2, 0), '-', lpad(dia_regis, 2, 0)), '%Y-%m-%d') fecha_regis
from rawDataDefunciones2017
where causa_def in (select CVE from causaDef2017 where upper(descrip) like '%DIABETES%')
and mun_resid between 1 and 72;

create or replace view Diabetes.vw_Def_Diabetes_2018
as
select mun_resid, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua,
		str_to_date(concat('2018','-', lpad(mes_regis, 2, 0), '-', lpad(dia_regis, 2, 0)), '%Y-%m-%d') fecha_regis
from rawDataDefunciones2018
where causa_def in (select CVE from causaDef2018 where upper(descrip) like '%DIABETES%')
and mun_resid between 1 and 72;

create or replace view Diabetes.vw_Def_Diabetes_2019
as
select mun_resid, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua,
		str_to_date(concat('2019','-', lpad(mes_regis, 2, 0), '-', lpad(dia_regis, 2, 0)), '%Y-%m-%d') fecha_regis
from rawDataDefunciones2019
where causa_def in (select CVE from causaDef2019 where upper(descrip) like '%DIABETES%')
and mun_resid between 1 and 72;

create or replace view Diabetes.vw_Def_Diabetes_2020
as
select mun_resid, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua,
		str_to_date(concat('2020','-', lpad(mes_regis, 2, 0), '-', lpad(dia_regis, 2, 0)), '%Y-%m-%d') fecha_regis
from rawDataDefunciones2020
where causa_def in (select CVE from causaDef2020 where upper(descrip) like '%DIABETES%')
and mun_resid between 1 and 72;

create or replace view Diabetes.vw_Def_Diabetes_2021
as
select mun_resid, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua,
		str_to_date(concat('2021','-', lpad(mes_regis, 2, 0), '-', lpad(dia_regis, 2, 0)), '%Y-%m-%d') fecha_regis
from rawDataDefunciones2021
where causa_def in (select CVE from causaDef2021 where upper(descrip) like '%DIABETES%')
and mun_resid between 1 and 72;


create or replace view Diabetes.vw_Reporte
as
select rg.idDef Id, rg.anio Anio, rg.fecha_regis Fecha_Registro, mun.Nombre Nombre, tloc.Descrip Tamanio_Localidad, sex.Descrip Sexo,
oc.Descrip Ocupacion, rg.Edad, asist.DESCRIP Asistencia_Medica, sit.DESCRIP Sitio_Ocurrencia, l.DESCRIP Lengua_Indigena
from registro_defunciones rg
inner join municipios mun
on rg.mun_resid=mun.idMunicipio
left join tamanio_loc tloc
on rg.tloc_resid=tloc.CVE
left join sexo sex
on rg.sexo=sex.CVE
left join ocupacion oc
on rg.ocupacion=oc.CVE
left join asist_medi asist
on rg.asist_medi=asist.CVE
left join sitio_ocur sit
on rg.sitio_ocur=sit.CVE
left join lengua l
on rg.lengua=l.CVE
order by rg.Anio, rg.Fecha_Regis;


create or replace view Diabetes.vw_Mortalidad
as
select M.idMunicipio Cd_Municipio, M.Nombre Nombre_Municipio, A.Anio Anio, ifnull(B.cant_muertes, 0) Cant_Muertes,
cast(((100000/A.Poblacion)*ifnull(B.cant_muertes, 0)) as decimal(6, 2)) Mortalidad from
Cant_Habitantes A
left join
(select mun_resid, anio, count(1) cant_muertes from registro_defunciones
group by mun_resid, anio) B
on A.idMunicipio=B.mun_resid and A.Anio=B.Anio
left join municipios M
on A.idMunicipio=M.idMunicipio
order by M.idMunicipio, A.Anio;

-- Procedimientos almacenados
--
DELIMITER $$
CREATE PROCEDURE Limpia_Tablas ()
BEGIN
-- inserta todos los datos en una sola tabla
	truncate table Diabetes.rawDataDefunciones2017;
    truncate table Diabetes.rawDataDefunciones2018;
    truncate table Diabetes.rawDataDefunciones2019;
    truncate table Diabetes.rawDataDefunciones2020;
    truncate table Diabetes.rawDataDefunciones2021;
    truncate table Diabetes.rawDataHabitantes;
    truncate table Diabetes.rawDataEstimaciones;
    
    truncate table Diabetes.causaDef2017;
    truncate table Diabetes.causaDef2018;
    truncate table Diabetes.causaDef2019;
    truncate table Diabetes.causaDef2020;
    truncate table Diabetes.causaDef2021;
    
    truncate table Diabetes.tamanio_loc;
    truncate table Diabetes.ocupacion;
    truncate table Diabetes.sexo;
    truncate table Diabetes.asist_medi;
    truncate table Diabetes.sitio_ocur;
    truncate table Diabetes.lengua;
    
    update Diabetes.Estatus set Estatus = 0;

    commit;
    
END$$

DELIMITER ;

--

DELIMITER $$
CREATE PROCEDURE Limpia_Datos ()
BEGIN
-- modifica los días fuera de rango
	IF (Revisa_Estatus('Limpia_Datos') = 0) THEN
		update rawDataDefunciones2017 set dia_regis=28 where mes_regis=2 and dia_regis>28;
		update rawDataDefunciones2017 set dia_regis=31 where mes_regis in (1, 3, 5, 7, 8, 10, 12) and dia_regis>31;
		update rawDataDefunciones2017 set dia_regis=30 where mes_regis in (4, 6, 9, 11) and dia_regis>31;
    
		update rawDataDefunciones2018 set dia_regis=28 where mes_regis=2 and dia_regis>28;
		update rawDataDefunciones2018 set dia_regis=31 where mes_regis in (1, 3, 5, 7, 8, 10, 12) and dia_regis>31;
		update rawDataDefunciones2018 set dia_regis=30 where mes_regis in (4, 6, 9, 11) and dia_regis>31;

		update rawDataDefunciones2019 set dia_regis=28 where mes_regis=2 and dia_regis>28;
		update rawDataDefunciones2019 set dia_regis=31 where mes_regis in (1, 3, 5, 7, 8, 10, 12) and dia_regis>31;
		update rawDataDefunciones2019 set dia_regis=30 where mes_regis in (4, 6, 9, 11) and dia_regis>31;
    
		update rawDataDefunciones2020 set dia_regis=28 where mes_regis=2 and dia_regis>29;
		update rawDataDefunciones2020 set dia_regis=31 where mes_regis in (1, 3, 5, 7, 8, 10, 12) and dia_regis>31;
		update rawDataDefunciones2020 set dia_regis=30 where mes_regis in (4, 6, 9, 11) and dia_regis>31;

		update rawDataDefunciones2021 set dia_regis=28 where mes_regis=2 and dia_regis>28;
		update rawDataDefunciones2021 set dia_regis=31 where mes_regis in (1, 3, 5, 7, 8, 10, 12) and dia_regis>31;
		update rawDataDefunciones2021 set dia_regis=30 where mes_regis in (4, 6, 9, 11) and dia_regis>31;
    
		update Diabetes.Estatus set Estatus = 1 where procedimiento = 'Limpia_Datos';
    
		commit;
    END IF;
END$$

DELIMITER ;

--
DELIMITER $$
CREATE PROCEDURE `Actualiza_Edad`()
BEGIN

	IF (Revisa_Estatus('Actualiza_Edad') = 0) THEN
		update rawDataDefunciones2017 set edad=4001 where edad<4001;
		update rawDataDefunciones2017 set edad=edad-4000 where edad<=4120;

		update rawDataDefunciones2018 set edad=4001 where edad<4001;
		update rawDataDefunciones2018 set edad=edad-4000 where edad<=4120;

		update rawDataDefunciones2019 set edad=4001 where edad<4001;
		update rawDataDefunciones2019 set edad=edad-4000 where edad<=4120;

		update rawDataDefunciones2020 set edad=4001 where edad<4001;
		update rawDataDefunciones2020 set edad=edad-4000 where edad<=4120;

		update rawDataDefunciones2021 set edad=4001 where edad<4001;
		update rawDataDefunciones2021 set edad=edad-4000 where edad<=4120;
    
		update Diabetes.Estatus set Estatus = 1 where procedimiento = 'Actualiza_Edad';
    
		commit;
	END IF;
END$$
DELIMITER ;

--

DELIMITER $$
CREATE PROCEDURE Unir_datos ()
BEGIN
-- inserta todos los datos en una sola tabla
	IF (Revisa_Estatus('Unir_datos') = 0) THEN
		truncate table Diabetes.registro_defunciones;

		insert into Diabetes.registro_defunciones (mun_resid, anio, fecha_regis, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua)
		select mun_resid, 2017, fecha_regis, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua
		from Diabetes.vw_Def_Diabetes_2017;

		insert into Diabetes.registro_defunciones (mun_resid, anio, fecha_regis, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua)
		select mun_resid, 2018, fecha_regis, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua
		from Diabetes.vw_Def_Diabetes_2018;

		insert into Diabetes.registro_defunciones (mun_resid, anio, fecha_regis, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua)
		select mun_resid, 2019, fecha_regis, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua
		from Diabetes.vw_Def_Diabetes_2019;
    
		insert into Diabetes.registro_defunciones (mun_resid, anio, fecha_regis, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua)
		select mun_resid, 2020, fecha_regis, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua
		from Diabetes.vw_Def_Diabetes_2020;
    
		insert into Diabetes.registro_defunciones (mun_resid, anio, fecha_regis, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua)
		select mun_resid, 2021, fecha_regis, tloc_resid, ocupacion, sexo, edad, asist_medi, sitio_ocur, lengua
		from Diabetes.vw_Def_Diabetes_2021;
    
		update Diabetes.Estatus set Estatus = 1 where procedimiento = 'Unir_datos';

		commit;
	END IF;
    
END$$

DELIMITER ;

--
DELIMITER $$
CREATE PROCEDURE Genera_datos_pob ()
BEGIN
-- inserta todos los datos en una sola tabla
	IF (Revisa_Estatus('Genera_datos_pob') = 0) THEN
		truncate table Diabetes.municipios;
		truncate table Diabetes.Cant_Habitantes;
    
		update Diabetes.rawDataEstimaciones set clave=substr(clave, 3, 3);
    
		insert into Diabetes.municipios (idMunicipio, Nombre)
		select cast(Codigo_municipio as unsigned), Nombre_Municipio
		from Diabetes.rawDataHabitantes;
    
		insert into Diabetes.Cant_Habitantes (idMunicipio, Anio, Poblacion)
		select cast(Codigo_municipio as unsigned), 2020, Cantidad_Habitantes
		from Diabetes.rawDataHabitantes;
    
		insert into Diabetes.Cant_Habitantes (idMunicipio, Anio, Poblacion)
		select clave, año, sum(pob) from rawDataEstimaciones
		where año in (2017, 2018, 2019, 2021)
		group by clave, año;
    
		update Diabetes.Estatus set Estatus = 1 where procedimiento = 'Genera_datos_pob';

		commit;
    END IF;
    
END$$

DELIMITER ;