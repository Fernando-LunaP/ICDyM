-- Tablas
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
-------------
DELIMITER $$
USE `Diabetes`$$
CREATE PROCEDURE Limpia_Datos ()
BEGIN
-- modifica los días fuera de rango
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
    
    commit;
END$$

DELIMITER ;

-------------
DELIMITER $$
CREATE DEFINER=`admin`@`%` PROCEDURE `Actualiza_Edad`()
BEGIN
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
    
    commit;
END$$
DELIMITER ;

--------------

DELIMITER $$
USE `Diabetes`$$
CREATE PROCEDURE Unir_datos ()
BEGIN
-- inserta todos los datos en una sola tabla
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

    commit;
    
END$$

DELIMITER ;

--------------
DELIMITER $$
USE `Diabetes`$$
CREATE PROCEDURE Genera_datos_pob ()
BEGIN
-- inserta todos los datos en una sola tabla
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

    commit;
    
END$$

DELIMITER ;