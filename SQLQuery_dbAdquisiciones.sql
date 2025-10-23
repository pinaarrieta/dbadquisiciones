--****************************************************************************************************
-- SQL Query 1
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Tablas de la Clasificación por Objeto del Gasto (COG) de la CDMX
-- 23 de mayo de 2020
--****************************************************************************************************

--Creación de la base de datos

use master;

create database dbAdquisiciones;

use dbAdquisiciones;

--Capitulo n000
--	Subcapítulo nn00
--		Partida genérica nnn0
--			partida específica nnnn
--Ejemplo: Capitulo				1000		Servicios personales
--		   Subcapitulo			 1100		Remuneraciones al personal de carácter permanente
--		   Partida genérica		  1130		Sueldos base al personal permanente
--		   Partida específica	   1131		Sueldo base

--Tabla del capítulo del gasto


use dbAdquisiciones;

create table tblCapitulo(idCapitulo int NOT NULL,
						 capitulo nvarchar(120) NOT NULL,
				
						 constraint pkidCapitulo
						 primary key(idCapitulo)
						 );	
						 					--ok en local y azure
--Insertar los nueve capitulos del COG
insert into tblCapitulo(idCapitulo, capitulo)
				values(1000, 'Servicios personales')
				

insert into tblCapitulo(idCapitulo, capitulo)
				values(2000, 'Materiales y suministros')

insert into tblCapitulo(idCapitulo, capitulo)
				values(3000, 'Servicios generales')

insert into tblCapitulo(idCapitulo, capitulo)
				values(4000, 'Tranferencias, asignaciones, subsidios y otras ayudas')

insert into tblCapitulo(idCapitulo, capitulo)
				values(5000, 'Bienes muebles, inmuebles e intangibles')

insert into tblCapitulo(idCapitulo, capitulo)
				values(6000, 'Inversión pública')

insert into tblCapitulo(idCapitulo, capitulo)
				values(7000, 'Inversiones financieras y otras provisiones')

insert into tblCapitulo(idCapitulo, capitulo)
				values(8000, 'Participaciones y aportaciones')

insert into tblCapitulo(idCapitulo, capitulo)
				values(9000, 'Deuda pública');

select * from tblCapitulo;		--ok en local y Azure

--****************************************************************************************************

--Tabla del Subcapítulo del gasto


use dbAdquisiciones;

create table tblSubcapitulo(idSubcapitulo int NOT NULL,
							subcapitulo nvarchar(140)NOT NULL,
							idCapitulo int NOT NULL,
							
							constraint idSubcapitulo
							primary key(idSubcapitulo),
							
							constraint fkIdCapitulo
							foreign key(idCapitulo)
							references tblCapitulo(idCapitulo)
							);		--ok local y azure

--Insertar los 63 subcapitulos del COG

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	1100,'Remuneraciones al personal de carácter permanente.',1000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	1200,'Remuneraciones al personal de carácter transitorio.',1000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	1300,'Remuneraciones adicionales y especiales.',1000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	1400,'Seguridad social.',1000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	1500,'Otras prestaciones sociales y económicas.',1000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	1600,'Previsiones',1000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	1700,'Pago de estímulos a servidores públicos.',1000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	1800,'Impuesto sobre nóminas y otros que se deriven de una relación laboral.',1000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	2100,'Materiales de administración, emisión de documentos y artículos oficiales.',2000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	2200,'Alimentos y utensilios',2000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	2300,'Materias primas y materiales de producción y comercialización',2000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	2400,'Materiales y artículos de construcción y de reparación.',2000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)

	values(	2500,'Productos quimicos, farmaceuticos y de laboratorio.',2000)
insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	2600,'Combustibles, lubricantes y aditivos.',2000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	2700,'Vestuario, blancos, prendas y artículos deportivos.',2000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	2800,'Materiales y suministros de seguridad',2000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	2900,'Herramientas, refacciones y accesorios menores.',2000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	3100,'Servicios básicos.',3000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	3200,'Servicios de arrendamiento.',3000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	3300,'Servicios profesionales, científicos. técnicos y otros servicios.',3000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	3400,'Servicios financieros, bancarios y comerciales.',3000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	3500,'Servicios de instalación, reparación mantenimiento y conservación.',3000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	3600,'Gastos de comunicación social y publicidad.',3000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	3700,'Servicios de traslado y viáticos.',3000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	3800,'Servicios oficiales.',3000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	3900,'Otros servicios generales.',3000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	4100,'Transferencias internas y asignaciones al sector público.',4000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	4200,'Transferencia al resto del sector público.',4000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	4300,'Subsidios y subvenciones.',4000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	4400,'Ayudas sociales.',4000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	4500,'Pensiones y jubilaciones',4000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	4600,'Transferencias a fideicomisos, mandatos y otros análogos.',4000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	4700,'Transferencias a la seguridad social.',4000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	4800,'Donativos.',4000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	4900,'Transferencias al exterior',4000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	5100,'Mobiliario y equipo de administración.',5000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	5200,'Mobiliario y equipo educacional y recreativo.',5000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	5300,'Equipo e instrumental médico y de laboratorio.',5000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(	5400,'Vehículos y equipo de transporte.',5000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
	values(5500,'Equipo de defensa y seguridad.', 5000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(5600,'Máquina, otros equipos y herramientas.', 5000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(5700,'Activos biológicos.', 5000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(5800,'Bienes inmuebles.', 5000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(5900,'Activos intangibles.', 5000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(6100,'Obra pública en bienes de dominio público.', 6000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(6200,'Obra pública en bienes propios.', 6000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(6300,'Proyectos productivos y acciones de fomento.', 6000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(7100,'Inversiones para el fomento de actividades productivas.', 7000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(7200,'Acciones y participaciones de capital', 7000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(7300,'Compra de títulos y valores.', 7000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(7400,'Concesión de préstamos.', 7000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(7500,'Inversiones en fideicomisos, mandatos y otros análogos.', 7000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(7600,'Otras inversiones financieras.', 7000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(7900,'Provisiones para contingencias y otras erogaciones especiales.', 7000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(8100,'Participaciones.', 8000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(8300,'Aportaciones.', 8000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(8500,'Convenios.', 8000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(9100,'Amortización de la deuda pública.', 9000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(9200,'Intereses de la deuda pública.', 9000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(9300,'Comisiones de la deuda pública.', 9000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(9400,'Gastos de la deuda pública.', 9000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(9500,'Costo por coberturas.', 9000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(9600,'Apoyos financieros.',9000)

insert into tblSubcapitulo(idSubcapitulo, subcapitulo, idCapitulo)
		values(9900,'Adeudos de ejercicios fiscales anteriores (adefas).', 9000); 

select * from tblSubcapitulo;

select c.idCapitulo, c.capitulo, s.idSubcapitulo, s.subcapitulo
	from tblCapitulo c
		join tblSubcapitulo s
			on c.idCapitulo = s.idCapitulo;		--ok local y azure

--***********************************************************************************************************

--Tabla de la partida agrupadora o genérica

use dbAdquisiciones;

create table tblPartidaGenerica(idPartidaGenerica int NOT NULL,
								partidaGenerica nvarchar(255) NOT NULL,
								idSubcapitulo int NOT NULL,
								
								constraint pkIdPartidaGenerica
								primary key (idPartidaGenerica),

								constraint fkIdSubcapitulo
								foreign key (idSubcapitulo)
								references tblSubcapitulo(idSubcapitulo)
								);		--ok local y azure
--Insertar las 354 partidas genericas

insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1110,'Dietas.',1100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1120,'Haberes.',1100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1130,'Sueldos base al personal permanente.',1100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1140,'Remuneraciones por adscripción laboral en el extranjero.',1100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1210,'Honorarios asimilables a salarios.',1200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1220,'Sueldos base al personal eventual.',1200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1230,'Retribuciones por servicios de carácter social.',1200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1240,'Retribución a los representantes de los trabajadores y de los patrones en la junta de conciliación y arbitraje.',1200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1310,'Primas por años de servicio efectivos prestados.',1300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1320,'Primas de vacaciones, dominical y gratificación de fin de año.',1300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1330,'Horas Extraordinarias',1300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1340,'Compensaciones.',1300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1350,'Sobrehaberes.',1300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1360,'Asignaciones de técnico, de mando, por comisión, de vuelo y de técnico especial.',1300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1370,'Honorarios especiales.',1300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1380,'Participaciones por vigilancia en el cumplimiento de las leyes y custodia de valores.',1300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1410,'Aportaciones de seguridad social.',1400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1420,'Aportaciones a fondos de vivienda.',1400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1430,'Aportaciones al sistema para el retiro.',1400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1440,'Aportaciones para seguros.',1400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1510,'Cuotas para el fondo de ahorro y fondo de trabajo.',1500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1520,'Indemnizaciones.',1500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1530,'Prestaciones y haberes de retiro.',1500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1540,'Prestaciones contractuales.',1500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1550,'Apoyos a la capacitación de los servidores públicos.',1500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1590,'Otras prestaciones sociales y económicas.',1500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1610,'Previsiones de carácter laboral, económica y de seguridad social.',1600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1710,'Estímulos.',1700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1720,'Recompensas.',1700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1810,'Impuesto sobre nóminas.',1800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (1820,'Otros impuestos derivados de una relación laboral.',1800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2110,'Materiales, útiles y equipos menores de oficina.',2100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2120,'Materiales y útiles de impresión y reproducción.',2100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2130,'Material estadístico y geográfico.',2100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2140,'Materiales útiles y equipos menores de tecnologías de la información y comunicaciones.',2100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2150,'Material impreso e información digital.',2100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2160,'Material de limpieza.',2100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2170,'Materiales y útiles de enseñanza.',2100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2180,'Materiales para el registro e identificación de bienes y personas.',2100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2210,'Productos alimenticios para personas.',2200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2220,'Productos alimenticios para animales.',2200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2230,'Utensilios para el servicio de alimentación.',2200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2310,'Productos alimenticios, agropecuarios y forestales adquiridos como materia prima.',2300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2320,'Insumos textiles adquiridos como materia prima.',2300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2330,'Productos de papel, cartón e impresos adquiridos como materia prima.',2300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2340,'Combustibles, lubricantes, aditivos, carbón, y sus derivados adquiridos como materia prima.',2300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2350,'Productos químicos, farmacéuticos y de laboratorio adquiridos como materia prima.',2300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2360,'Productos metálicos y a base de minerales no metálicos adquiridos como materia prima.',2300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2370,'Productos de cuero, piel, plástico y hule adquiridos como materia prima.',2300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2380,'Mercancías adquiridas para su comercialización.',2300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2390,'Otros productos adquiridos como materia prima.',2300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2410,'Productos minerales no metálicos.',2400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2420,'Cemento y productos de concreto.',2400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2430,'Cal, yeso y productos de yeso.',2400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2440,'Madera y productos de madera.',2400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2450,'Vidrio y productos de vidrio.',2400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2460,'Material eléctrico y electrónico.',2400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2470,'Artículos metálicos para la construcción.',2400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2480,'Materiales complementarios.',2400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2490,'Otros materiales y artículos de construcción y reparación.',2400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2510,'Productos químicos básicos.',2500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2520,'Fertilizantes, pesticidas y otros agroquímicos.',2500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2530,'Medicinas y productos farmacéuticos.',2500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2540,'Materiales, accesorios y suministros médicos.',2500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2550,'Materiales, accesorios y suministros de laboratorio.',2500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2560,'Fibras sintéticas, hules, plásticos y derivados.',2500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2590,'Otros productos químicos.',2500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2610,'Combustibles, lubricantes y aditivos.',2600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2620,'Carbón y sus derivados.',2600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2710,'Vestuario y uniformes.',2700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2720,'Prendas de seguridad y protección personal.',2700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2730,'Artículos deportivos.',2700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2740,'Productos textiles.',2700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2750,'Blancos y otros productos textiles, excepto prendas de vestir.',2700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2810,'Sustancias y materiales explosivos.',2800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2820,'Materiales de seguridad pública.',2800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2830,'Prendas de protección para la seguridad pública y nacional.',2800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2910,'Herramientas menores.',2900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2920,'Refacciones y accesorios menores de edificios.',2900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2930,'Refacciones y accesorios menores de mobiliario y equipo de administración, educacional y recreativo.',2900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2940,'Refacciones y accesorios menores de equipo de cómputo y tecnologías de la información.',2900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2950,'Refacciones y accesorios menores de equipo e instrumental médico y de laboratorio.',2900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2960,'Refacciones y accesorios menores para equipo de transporte.',2900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2970,'Refacciones y accesorios menores de equipo de defensa y seguridad.',2900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2980,'Refacciones y accesorios menores de maquinaria y otros equipos.',2900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (2990,'Refacciones y accesorios menores otros bienes muebles.',2900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3110,'Energía eléctrica.',3100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3120,'Gas.',3100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3130,'Agua.',3100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3140,'Telefonía tradicional.',3100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3150,'Telefonía celular.',3100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3160,'Servicios de telecomunicaciones y satélites.',3100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3170,'Servicios de acceso de Internet, redes y procesamiento de información.',3100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3180,'Servicios postales y telegráficos.',3100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3190,'Servicios integrales y otros servicios.',3100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3210,'Arrendamiento de terrenos.',3200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3220,'Arrendamiento de edificios.',3200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3230,'Arrendamiento de mobiliario y equipo de administración, educacional y recreativo.',3200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3240,'Arrendamiento de equipo e instrumental médico y de laboratorio.',3200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3250,'Arrendamiento de equipo de transporte.',3200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3260,'Arrendamiento de maquinaria, otros equipos y herramientas.',3200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3270,'Arrendamiento de activos intangibles.',3200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3280,'Arrendamiento financiero.',3200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3290,'Otros arrendamientos.',3200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3310,'Servicios legales, de contabilidad, auditoría y relacionados.',3300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3320,'Servicios de diseño, arquitectura, ingeniería y actividades relacionadas.',3300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3330,'Servicios de consultoría administrativa, procesos, técnica y en tecnologías de la información.',3300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3340,'Servicios de capacitación.',3300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3350,'Servicios de investigación científica y desarrollo.',3300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3360,'Servicios de apoyo administrativo, traducción, fotocopiado e impresión.',3300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3370,'Servicios de protección y seguridad.',3300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3380,'Servicios de vigilancia.',3300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3390,'Servicios profesionales, científicos y técnicos integrales.',3300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3410,'Servicios financieros y bancarios.',3400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3420,'Servicios de cobranza, investigación crediticia y similar.',3400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3430,'Servicios de recaudación, traslado y custodia de valores.',3400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3440,'Seguros de responsabilidad patrimonial y fianzas.',3400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3450,'Seguro de bienes patrimoniales.',3400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3460,'Almacenaje, envase y embalaje.',3400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3470,'Fletes y maniobras.',3400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3480,'Comisiones por ventas.',3400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3490,'Servicios financieros, bancarios y comerciales integrales.',3400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3510,'Conservación y mantenimiento menor de inmuebles.',3500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3520,'Instalación, reparación y mantenimiento de mobiliario y equipo de administración, educacional y recreativo.',3500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3530,'Instalación, reparación y mantenimiento de equipo de cómputo y tecnologías de la información.',3500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3540,'Instalación, reparación y mantenimiento de equipo e instrumental médico y de laboratorio.',3500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3550,'Reparación y mantenimiento de equipo de transporte.',3500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3560,'Reparación y mantenimiento de equipo de defensa y seguridad.',3500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3570,'Instalación, reparación y mantenimiento de maquinaria, otros equipos y herramienta.',3500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3580,'Servicios de limpieza y manejo de desechos.',3500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3590,'Servicios de jardinería y fumigación.',3500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3610,'Difusión por radio, televisión y otros medios de mensajes sobre programas y actividades gubernamentales.',3600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3620,'Difusión por radio, televisión y otros medios de mensajes comerciales para promover la venta de bienes o servicios.',3600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3630,'Servicios de creatividad, preproducción y producción de publicidad, excepto Internet.',3600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3640,'Servicios de revelado de fotografías.',3600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3650,'Servicios de la industria fílmica, del sonido y del video.',3600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3660,'Servicios de creación y difusión de contenido exclusivamente a través de Internet.',3600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3690,'Otros servicios de información.',3600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3710,'Pasajes aéreos.',3700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3720,'Pasajes terrestres.',3700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3730,'Pasajes marítimos, lacustres y fluviales.',3700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3740,'Autotransporte.',3700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3750,'Viáticos en el país.',3700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3760,'Viáticos en el extranjero.',3700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3770,'Gastos de instalación y traslado de menaje.',3700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3780,'Servicios integrales de traslado y viáticos.',3700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3790,'Otros servicios de traslado y hospedaje.',3700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3810,'Gastos de ceremonial.',3800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3820,'Gastos de orden social y cultural.',3800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3830,'Congresos y convenciones.',3800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3840,'Exposiciones.',3800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3850,'Gastos de representación.',3800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3910,'Servicios funerarios y de cementerios.',3900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3920,'Impuestos y derechos.',3900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3930,'Impuestos y derechos de importación.',3900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3940,'Sentencias y resoluciones por autoridad competente.',3900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3950,'Penas, multas, accesorios y actualizaciones.',3900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3960,'Otros gastos por responsabilidades.',3900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3970,'Utilidades.',3900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3980,'Impuesto sobre nóminas y otros que se deriven de una relación laboral.',3900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (3990,'Otros servicios generales.',3900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4110,'Asignaciones presupuestarias al Poder Ejecutivo.',4100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4120,'Asignaciones presupuestarias al Poder Legislativo.',4100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4130,'Asignaciones presupuestarias al Poder Judicial.',4100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4140,'Asignaciones presupuestarias a órganos autónomos.',4100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4150,'Transferencias internas otorgadas a entidades paraestatales no empresariales y no financieras.',4100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4160,'Transferencias internas otorgadas a entidades paraestatales empresariales y no financieras.',4100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4170,'Transferencias internas otorgadas a fideicomisos públicos empresariales y no financieros.',4100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4180,'Transferencias internas otorgadas a instituciones paraestatales públicas financieras.',4100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4190,'Transferencias internas otorgadas a fideicomisos públicos financieros.',4100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4210,'Transferencias otorgadas a entidades paraestatales no empresariales y no financieras.',4200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4220,'Transferencias otorgadas para entidades paraestatales empresariales y no financieras.',4200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4230,'Transferencias otorgadas para instituciones paraestatales públicas financieras.',4200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4240,'Transferencias otorgadas a entidades federativas y municipios.',4200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4250,'Transferencias a fideicomisos de entidades federativas y municipios.',4200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4310,'Subsidios a la producción.',4300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4320,'Subsidios a la distribución.',4300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4330,'Subsidios a la inversión.',4300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4340,'Subsidios a la prestación de servicios públicos.',4300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4350,'Subsidios para cubrir diferenciales de tasas de interés.',4300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4360,'Subsidios a la vivienda.',4300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4370,'Subvenciones al consumo.',4300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4380,'Subsidios a entidades federativas y municipios.',4300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4390,'Otros subsidios.',4300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4410,'Ayudas sociales a personas.',4400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4420,'Becas y otras ayudas para programas de capacitación.',4400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4430,'Ayudas sociales a instituciones de enseñanza.',4400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4440,'Ayudas sociales a actividades científicas o académicas.',4400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4450,'Ayudas sociales a instituciones sin fines de lucro.',4400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4460,'Ayudas sociales a cooperativas.',4400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4470,'Ayudas sociales a entidades de interés público.',4400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4480,'Ayudas por desastres naturales y otros siniestros.',4400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4510,'Pensiones.',4500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4520,'Jubilaciones.',4500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4590,'Otras pensiones y jubilaciones.',4500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4610,'Transferencias a fideicomisos del Poder Ejecutivo.',4600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4620,'Transferencias a fideicomisos del Poder Legislativo.',4600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4630,'Transferencias a fideicomisos del Poder Judicial.',4600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4640,'Transferencias a fideicomisos públicos de entidades paraestatales no empresariales y no financieras.',4600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4650,'Transferencias a fideicomisos públicos de entidades paraestatales empresariales y no financieras.',4600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4660,'Transferencias a fideicomisos de instituciones públicas financieras.',4600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4690,'Otras transferencias a fideicomisos',4600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4710,'Transferencias por obligación de ley.',4700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4810,'Donativos a instituciones sin fines de lucro.',4800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4820,'Donativos a entidades federativas.',4800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4830,'Donativos a fideicomisos privados.',4800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4840,'Donativos a fideicomisos estatales.',4800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4850,'Donativos internacionales.',4800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4910,'Transferencias para gobiernos extranjeros.',4900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4920,'Transferencias para organismos internacionales.',4900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (4930,'Transferencias para el sector privado externo.',4900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5110,'Muebles de oficina y estantería.',5100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5120,'Muebles, excepto de oficina y estantería.',5100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5130,'Bienes artísticos, culturales y científicos.',5100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5140,'Objetos de valor.',5100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5150,'Equipo de cómputo y de tecnología de la información.',5100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5190,'Otros mobiliarios y equipos de administración.',5100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5210,'Equipos y aparatos audiovisuales.',5200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5220,'Aparatos deportivos.',5200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5230,'Cámaras fotográficas y de video.',5200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5290,'Otro mobiliario y equipo educacional y recreativo.',5200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5310,'Equipo médico y de laboratorio.',5300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5320,'Instrumental médico y de laboratorio.',5300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5410,'Vehículos y equipo terrestre.',5400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5420,'Carrocerías y remolques.',5400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5430,'Equipo aeroespacial.',5400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5440,'Equipo ferroviario.',5400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5450,'Embarcaciones.',5400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5490,'Otros equipos de transporte.',5400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5510,'Equipo de defensa y seguridad.',5500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5610,'Maquinaria y equipo agropecuario.',5600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5620,'Maquinaria y equipo industrial.',5600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5630,'Maquinaria y equipo de construcción.',5600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5640,'Sistemas de aire acondicionado, calefacción y de refrigeración industrial y comercial.',5600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5650,'Equipo de comunicación y telecomunicación.',5600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5660,'Equipos de generación eléctrica, aparatos y accesorios eléctricos.',5600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5670,'Herramientas y máquinas-herramienta.',5600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5690,'Otros equipos.',5600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5710,'Bovinos.',5700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5720,'Porcinos.',5700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5730,'Aves.',5700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5740,'Ovinos y caprinos.',5700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5750,'Peces y acuicultura.',5700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5760,'Equinos.',5700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5770,'Especies menores y de zoológico.',5700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5780,'Árboles y plantas.',5700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5790,'Otros activos biológicos.',5700)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5810,'Terrenos.',5800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5820,'Viviendas.',5800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5830,'Edificios no residenciales.',5800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5890,'Otros bienes inmuebles.',5800)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5910,'Software.',5900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5920,'Patentes.',5900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5930,'Marcas.',5900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5940,'Derechos.',5900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5950,'Concesiones.',5900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5960,'Franquicias.',5900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5970,'Licencias informáticas e intelectuales.',5900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5980,'Licencias industriales, comerciales y otras.',5900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (5990,'Otros activos intangibles.',5900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6110,'Edificación habitacional.',6100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6120,'Edificación no habitacional.',6100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6130,'Construcción de obras para el abastecimiento de agua, petróleo, gas, electricidad y telecomunicaciones.',6100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6140,'División de terrenos y construcción de obras de urbanización.',6100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6150,'Construcción de vías de comunicación.',6100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6160,'Otras construcciones de ingeniería civil u obra pesada.',6100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6170,'Instalaciones y equipamiento en construcciones.',6100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6190,'Trabajos de acabados en edificaciones y otros trabajos especializados.',6100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6210,'Edificación habitacional.',6200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6220,'Edificación no habitacional.',6200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6230,'Construcción de obras para el abastecimiento de agua, petróleo, gas, electricidad y telecomunicaciones.',6200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6240,'División de terrenos y construcción de obras de urbanización.',6200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6250,'Construcción de vías de comunicación.',6200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6260,'Otras construcciones de ingeniería civil u obra pesada.',6200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6270,'Instalaciones y equipamiento en construcciones.',6200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6290,'Trabajos de acabados en edificaciones y otros trabajos especializados.',6200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6310,'Estudios, formulación y evaluación de proyectos productivos no incluidos en conceptos anteriores de este capítulo.',6300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (6320,'Ejecución de proyectos productivos no incluidos en conceptos anteriores de este capítulo.',6300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7110,'Créditos otorgados por entidades federativas y municipios al sector social y privado para el fomento de actividades productivas.',7100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7120,'Créditos otorgados por entidades federativas a municipios para el fomento de actividades productivas.',7100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7210,'Acciones y participaciones de capital en entidades paraestatales no empresariales y no financieras con fines de política económica.',7200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7220,'Acciones y participaciones de capital en entidades paraestatales empresariales no financieras con fines de política económica.',7200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7230,'Acciones y participaciones de capital en instituciones paraestatales públicas financieras con fines de política económica.',7200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7240,'Acciones y participaciones de capital en el sector privado con fines de política económica.',7200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7250,'Acciones y participaciones de capital en organismos internacionales con fines de política económica.',7200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7260,'Acciones y participaciones de capital en el sector externo con fines de política económica.',7200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7270,'Acciones y participaciones de capital en el sector público con fines de gestión de la liquidez.',7200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7280,'Acciones y participaciones de capital en el sector privado con fines de gestión de la liquidez.',7200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7290,'Acciones y participaciones de capital en el sector externo con fines de administración de la liquidez.',7200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7310,'Bonos.',7300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7320,'Valores representativos de deuda, adquiridos con fines de política económica.',7300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7330,'Valores representativos de deuda adquiridos con fines de gestión de liquidez.',7300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7340,'Obligaciones negociables adquiridas con fines de política económica.',7300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7350,'Obligaciones negociables adquiridas con fines de gestión de liquidez.',7300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7390,'Otros valores.',7300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7410,'Concesión de préstamos a entidades paraestatales no empresariales y no financieras con fines de política económica.',7400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7420,'Concesión de préstamos a entidades paraestatales empresariales no financieras con fines de política económica.',7400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7430,'Concesión de préstamos a instituciones paraestatales públicas financieras con fines de política económica.',7400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7440,'Concesión de préstamos a entidades federativas y municipios con fines de política económica.',7400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7450,'Concesión de préstamos al sector privado con fines de política económica.',7400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7460,'Concesión de préstamos al sector externo con fines de política económica.',7400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7470,'Concesión de préstamos al sector público con fines de gestión de liquidez.',7400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7480,'Concesión de préstamos al sector privado con fines de gestión de liquidez.',7400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7490,'Concesión de préstamos al sector externo con fines de gestión de liquidez.',7400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7510,'Inversiones en fideicomisos del Poder Ejecutivo.',7500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7520,'Inversiones en fideicomisos del Poder Legislativo.',7500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7530,'Inversiones en fideicomisos del Poder Judicial.',7500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7540,'Inversiones en fideicomisos públicos no empresariales y no financieros.',7500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7550,'Inversiones en fideicomisos públicos empresariales no financieros.',7500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7560,'Inversiones en fideicomisos públicos financieros.',7500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7570,'Inversiones en fideicomisos de entidades federativas.',7500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7580,'Inversiones en fideicomisos de municipios.',7500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7590,'Fideicomisos de empresas privadas y particulares.',7500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7610,'Depósitos a largo plazo en moneda nacional.',7600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7620,'Depósitos a largo plazo en moneda extranjera.',7600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7910,'Contingencias por fenómenos naturales.',7900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7920,'Contingencias socioeconómicas.',7900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (7990,'Otras erogaciones especiales.',7900)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8110,'Fondo general de participaciones.',8100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8120,'Fondo de fomento municipal.',8100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8130,'Participaciones de las entidades federativas a los municipios.',8100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8140,'Otros conceptos participables de la federación a entidades federativas.',8100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8150,'Otros conceptos participables de la federación a municipios.',8100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8160,'Convenios de colaboración administrativa.',8100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8310,'Aportaciones de la federación a las entidades federativas.',8300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8320,'Aportaciones de la federación a municipios.',8300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8330,'Aportaciones de las entidades federativas a los municipios.',8300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8340,'Aportaciones previstas en leyes y decretos al sistema de protección social.',8300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8350,'Aportaciones previstas en leyes y decretos compensatorias a entidades federativas y municipios.',8300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8510,'Convenios de reasignación.',8500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8520,'Convenios de descentralización.',8500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (8530,'Otros convenios.',8500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9110,'Amortización de la deuda interna con instituciones de crédito.',9100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9120,'Amortización de la deuda interna por emisión de títulos y valores.',9100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9130,'Amortización de arrendamientos financieros nacionales.',9100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9140,'Amortización de la deuda externa con instituciones de crédito.',9100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9150,'Amortización de deuda externa con organismos financieros internacionales.',9100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9160,'Amortización de la deuda bilateral.',9100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9170,'Amortización de la deuda externa por emisión de títulos y valores.',9100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9180,'Amortización de arrendamientos financieros internacionales.',9100)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9210,'Intereses de la deuda interna con instituciones de crédito.',9200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9220,'Intereses derivados de la colocación de títulos y valores.',9200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9230,'Intereses por arrendamientos financieros nacionales.',9200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9240,'Intereses de la deuda externa con instituciones de crédito.',9200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9250,'Intereses de la deuda con organismos financieros internacionales.',9200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9260,'Intereses de la deuda bilateral.',9200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9270,'Intereses derivados de la colocación de títulos y valores en el exterior.',9200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9280,'Intereses por arrendamientos financieros internacionales.',9200)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9310,'Comisiones de la deuda pública interna.',9300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9320,'Comisiones de la deuda pública externa.',9300)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9410,'Gastos de la deuda pública interna.',9400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9420,'Gastos de la deuda pública externa.',9400)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9510,'Costos por coberturas.',9500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9520,'Costos por cobertura de la deuda pública externa.',9500)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9610,'Apoyos a intermediarios financieros.',9600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9620,'Apoyos a ahorradores y deudores del sistema financiero nacional.',9600)
insert into tblPartidaGenerica(idPartidaGenerica, partidaGenerica, idSubcapitulo) values (9910,'ADEFAS.',9900);		--ok local y azure

select cap.idCapitulo, cap.capitulo, sc.idSubcapitulo, sc.subcapitulo, pg.idPartidaGenerica, pg.partidaGenerica
	from tblPartidaGenerica pg
		join tblSubcapitulo sc
			on pg.idSubcapitulo = sc.idSubcapitulo
		join tblCapitulo cap
			on sc.idCapitulo = cap.idCapitulo;


--*********************************************************************************************************************

--Tabla de partidas presupuestales

use dbAdquisiciones;

create table tblPartidaEspecifica(idPartidaEspecifica int NOT NULL,
								  partidaEspecifica nvarchar(255) NOT NULL,
								  idPartidaGenerica int NOT NULL,
								  
								  constraint pkIdPartidaEspecifica
								  primary key(idPartidaEspecifica),

								  constraint fkIdPartidaGenerica
								  foreign key(idPartidaGenerica)
								  references tblPartidaGenerica(idPartidaGenerica)
								  );		--ok local y azure

--Insertar las 493 partidas presupuestales

--insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1111,'Dietas.',1110)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1111,'Dietas.',1110)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1121,'Haberes para personal de seguridad pública y bomberos.',1120)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1131,'Sueldos base al personal permanente.',1130)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1132,'Sueldos al personal a lista de raya base.',1130)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1211,'Honorarios asimilables a salarios.',1210)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1221,'Sueldos base al personal eventual.',1220)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1231,'Retribuciones por servicios de carácter social.',1230)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1241,'Retribución a los representantes de los trabajadores y de los patrones en la Junta de Conciliación y Arbitraje.',1240)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1311,'Prima quinquenal por años de servicios efectivos prestados.',1310)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1312,'Primas por años de servicio activo.',1310)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1319,'Otras primas por años de servicios efectivos prestados.',1310)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1321,'Prima de vacaciones.',1320)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1322,'Prima dominical.',1320)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1323,'Gratificación de fin de año.',1320)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1331,'Horas extraordinarias.',1330)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1332,'Guardias.',1330)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1341,'Compensaciones.',1340)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1342,'Compensaciones por servicios eventuales.',1340)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1343,'Compensaciones adicionales y provisionales por servicios especiales.',1340)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1371,'Honorarios especiales.',1370)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1411,'Aportaciones a instituciones de seguridad social.',1410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1412,'Aportaciones al Instituto Mexicano del Seguro Social.',1410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1421,'Aportaciones a fondos de vivienda.',1420)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1422,'Aportaciones al fondo de vivienda del INFONAVIT.',1420)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1431,'Aportaciones al sistema para el retiro o a la administradora de fondos para el retiro y ahorro solidario.',1430)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1441,'Primas por seguro de vida del personal civil.',1440)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1442,'Primas por seguro de vida del personal de seguridad pública y bomberos.',1440)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1443,'Primas por seguro de retiro del personal al servicio de las unidades responsables del gasto del Distrito Federal.',1440)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1444,'Primas por seguro de gastos médicos mayores, de responsabilidad civil y asistencia legal.',1440)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1511,'Cuotas para el fondo de ahorro y fondo de trabajo.',1510)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1521,'Liquidaciones por indemnizaciones y por sueldos y salarios caídos.',1520)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1522,'Liquidaciones por haberes caídos.',1520)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1531,'Prestaciones y haberes de retiro.',1530)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1541,'Vales.',1540)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1542,'Apoyo económico por defunción de familiares directos.  	' ,	1540)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1543,'Estancias de Desarrollo Infantil.',1540)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1544,'Asignaciones para requerimiento de cargos de servidores públicos de nivel técnico operativo.',1540)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1545,'Asignaciones para prestaciones a personal sindicalizado y no sindicalizado.',1540)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1546,'Lavado de ropa.',1540)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1547,'Becas a hijos de trabajadores.',1540)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1548,'Asignaciones para pago de antigüedad.',1540)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1549,'Apoyos colectivos.',1540)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1551,'Apoyos a la capacitación de los servidores públicos.',1550)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1591,'Asignaciones para requerimiento de cargos de servidores públicos superiores y de mandos medios así como de líderes coordinadores y enlaces.',1590)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1592,'Asignaciones para servidores públicos del Ministerio Público.',1590)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1611,'Previsiones de carácter laboral, económica y de seguridad social.',1610)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1711,'Becas para licenciatura.',1710)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1712,'Premio de puntualidad.',1710)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1713,'Premio de antigüedad.',1710)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1714,'Estímulos conmemorativos.',1710)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1715,'Estímulos por tesis y titulación.',1710)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1811,'Impuesto sobre nóminas.',1810)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(1821,'Otros impuestos derivados de una relación laboral.',1820)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2111,'Materiales, útiles y equipos menores de oficina.',2110)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2121,'Materiales y útiles de impresión y reproducción.',2120)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2131,'Material estadístico y geográfico.',2130)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2141,'Materiales, útiles y equipos menores de tecnologías de la información y comunicaciones.',2140)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2151,'Material impreso e información digital.',2150)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2161,'Material de limpieza.',2160)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2171,'Materiales y útiles de enseñanza.',2170)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2181,'Materiales para el registro e identificación de bienes y personas.',2180)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2211,'Productos alimenticios y bebidas para personas.',2210)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2221,'Productos alimenticios para animales.',2220)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2231,'Utensilios para el servicio de alimentación.',2230)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2311,'Productos alimenticios, agropecuarios y forestales adquiridos como materia prima.',2310)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2321,'Insumos textiles adquiridos como materia prima.',2320)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2331,'Productos de papel, cartón e impresos adquiridos como materia prima.',2330)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2341,'Combustibles, lubricantes, aditivos, carbón y sus derivados adquiridos como materia prima.',2340)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2351,'Productos químicos, farmacéuticos y de laboratorio adquiridos como materia prima.',2350)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2361,'Productos metálicos y a base de minerales no metálicos adquiridos como materia prima.',2360)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2371,'Productos de cuero, piel, plástico y hule adquiridos como materia prima.',2370)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2381,'Mercancías adquiridas para su comercialización.',2380)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2391,'Otros productos adquiridos como materia prima.',2390)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2411,'Mezcla asfáltica.',2410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2419,'Otros productos minerales no metálicos.',2410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2421,'Cemento y productos de concreto.',2420)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2431,'Cal, yeso y productos de yeso.',2430)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2441,'Madera y productos de madera.',2440)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2451,'Vidrio y productos de vidrio.',2450)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2461,'Material eléctrico y electrónico.  	' ,	2460)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2471,'Artículos metálicos para la construcción.',2470)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2481,'Materiales complementarios.',2480)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2491,'Otros materiales y artículos de construcción y reparación.',2490)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2511,'Productos químicos básicos.',2510)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2521,'Fertilizantes, pesticidas y otros agroquímicos.',2520)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2531,'Medicinas y productos farmacéuticos.',2530)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2541,'Materiales, accesorios y suministros médicos.',2540)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2551,'Materiales, accesorios y suministros de laboratorio.',2550)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2561,'Fibras sintéticas, hules, plásticos y derivados.',2560)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2591,'Otros productos químicos.',2590)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2611,'Combustibles, lubricantes y aditivos.',2610)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2621,'Carbón y sus derivados.',2620)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2711,'Vestuario y uniformes.',2710)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2721,'Prendas de seguridad y protección personal.  	' ,	2720)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2731,'Artículos deportivos.',2730)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2741,'Productos textiles.',2740)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2751,'Blancos y otros productos textiles, excepto prendas de vestir.',2750)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2811,'Sustancias y materiales explosivos.',2810)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2821,'Materiales de seguridad pública.',2820)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2831,'Prendas de protección para seguridad pública y nacional.',2830)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2911,'Herramientas menores.',2910)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2921,'Refacciones y accesorios menores de edificios.',2920)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2931,'Refacciones y accesorios menores de mobiliario y equipo de administración, educacional y recreativo.',2930)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2941,'Refacciones y accesorios menores de equipo de cómputo y tecnologías de la información.',2940)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2951,'Refacciones y accesorios menores de equipo e instrumental médico y de laboratorio.',2950)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2961,'Refacciones y accesorios menores de equipo de transporte.',2960)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2971,'Refacciones y accesorios menores de equipo de defensa y seguridad.',2970)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2981,'Refacciones y accesorios menores de maquinaria y otros equipos.',2980)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(2991,'Refacciones y accesorios menores otros bienes muebles. Asignaciones destinadas a la adquisición de instrumental complementario y repuestos menores no considerados en las partidas anteriores.  	' ,	2990)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3111,'Contratación e instalación de energía eléctrica.',3110)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3112,'Servicio de energía eléctrica.',3110)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3121,'Gas.',3120)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3131,'Agua potable.',3130)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3132,'Agua tratada.',3130)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3141,'Telefonía tradicional.',3140)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3151,'Telefonía celular.',3150)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3161,'Servicios de telecomunicaciones y satélites.',3160)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3171,'Servicios de acceso de Internet, redes y procesamiento de información.',3170)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3181,'Servicios postales y telegráficos.',3180)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3191,'Servicios integrales y otros servicios.',3190)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3211,'Arrendamiento de terrenos.',3210)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3221,'Arrendamiento de edificios.',3220)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3231,'Arrendamiento de mobiliario y equipo de administración, educacional y recreativo.',3230)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3241,'Arrendamiento de equipo e instrumental médico y de laboratorio.',3240)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3251,'Arrendamiento de equipo de transporte para la ejecución de programas de seguridad pública y atención de desastres naturales.',3250)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3252,'Arrendamiento de equipo de transporte destinado a servicios públicos y la operación de programas públicos.',3250)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3253,'Arrendamiento de equipo de transporte destinado a servidores públicos y servicios administrativos.',3250)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3261,'Arrendamiento de maquinaria, otros equipos y herramientas.',3260)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3271,'Arrendamiento de activos intangibles.',3270)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3281,'Arrendamiento financiero.',3280)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3291,'Otros arrendamientos.',3290)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3311,'Servicios legales, de contabilidad, auditoría y relacionados.',3310)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3321,'Servicios de diseño, arquitectura, ingeniería y actividades relacionadas.',3320)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3331,'Servicios de consultoría administrativa, procesos, técnica y en tecnologías de la información.',3330)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3341,'Servicios de capacitación.',3340)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3351,'Servicios de investigación científica y desarrollo.',3350)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3361,'Servicios de apoyo administrativo, fotocopiado e impresión.',3360)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3371,'Servicios de protección y seguridad.',3370)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3381,'Servicios de vigilancia.  	' ,	3380)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3391,'Servicios profesionales, científicos y técnicos integrales.',3390)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3411,'Servicios financieros y bancarios.',3410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3421,'Servicios de cobranza, investigación crediticia y similar.',3420)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3431,'Gastos inherentes a la recaudación.',3430)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3432,'Gastos de ensobretado y traslado de nómina.',3430)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3439,'Otros servicios de recaudación, traslado y custodia de valores.',3430)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3441,'Seguros de responsabilidad patrimonial y fianzas.',3440)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3451,'Seguro de bienes patrimoniales.',3450)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3461,'Almacenaje, envase y embalaje.',3460)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3471,'Fletes y maniobras.',3470)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3481,'Comisiones por ventas.',3480)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3491,'Diferencias por variaciones en el tipo de cambio.',3490)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3499,'Otros Servicios financieros, bancarios y comerciales integrales.',3490)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3511,'Conservación y mantenimiento menor de inmuebles.',3510)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3521,'Instalación, reparación y mantenimiento de mobiliario y equipo de administración, educacional y recreativo.',3520)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3531,'Instalación, reparación y mantenimiento de equipo de cómputo y tecnologías de la información.  	' ,	3530)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3541,'Instalación, reparación y mantenimiento de equipo e instrumental médico y de laboratorio.',3540)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3551,'Reparación, mantenimiento y conservación de equipo de transporte para la ejecución de programas de seguridad pública y atención de desastres naturales.',3550)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3552,'Reparación, mantenimiento y conservación de equipo de transporte destinados a servicios públicos y operación de programas públicos.',3550)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3553,'Reparación, mantenimiento y conservación de equipo de transporte destinados a servidores públicos y servicios administrativos.',3550)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3561,'Reparación y mantenimiento de equipo de defensa y seguridad.',3560)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3571,'Instalación, reparación y mantenimiento de maquinaria, otros equipos y herramienta.',3570)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3581,'Servicios de limpieza y manejo de desechos.',3580)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3591,'Servicios de jardinería y fumigación.',3590)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3611,'Difusión por radio, televisión y otros medios de mensajes sobre programas y actividades gubernamentales.',3610)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3621,'Difusión por radio, televisión y otros medios de mensajes comerciales para promover la venta de bienes o servicios.',3620)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3631,'Servicios de creatividad, preproducción y producción de publicidad, excepto Internet.',3630)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3641,'Servicios de revelado de fotografías.',3640)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3651,'Servicios de la industria fílmica, del sonido y del video.',3650)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3661,'Servicio de creación y difusión de contenido exclusivamente a través de Internet.',3660)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3362,'Servicios de impresión	' ,	3360)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3691,'Otros servicios de información.  	' ,	3690)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3711,'Pasajes aéreos nacionales e internacionales.',3710)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3712,'Traslado aéreo de personas.',3710)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3721,'Pasajes terrestres nacionales e internacionales.',3720)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3722,'Pasajes terrestres al interior del Distrito Federal.',3720)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3723,'Traslado terrestre de personas.',3720)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3731,'Pasajes marítimos, lacustres y fluviales.',3730)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3732,'Traslado marítimo, lacustre y fluvial de personas.',3730)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3741,'Autotransporte.',3740)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3751,'Viáticos en el país.',3750)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3761,'Viáticos en el extranjero.',3760)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3771,'Gastos de instalación y traslado de menaje.',3770)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3781,'Servicios integrales de traslado y viáticos.',3780)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3791,'Otros servicios de traslado y hospedaje.',3790)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3811,'Gastos de ceremonial.',3810)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3821,'Espectáculos culturales.',3820)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3822,'Gastos de orden social.',3820)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3823,'Gastos de difusión y extensión universitaria.',3820)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3831,'Congresos y convenciones.',3830)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3832,'Gastos de orden académico.',3830)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3841,'Exposiciones.',3840)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3851,'Gastos de representación.',3850)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3911,'Servicios funerarios y de cementerio a los familiares de los civiles y pensionistas directos.',3910)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3921,'Impuestos y derechos.',3920)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3931,'Impuestos y derechos de importación.',3930)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3941,'Sentencias y resoluciones judiciales.',3940)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3951,'Penas, multas, accesorios y actualizaciones.',3950)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3961,'Gastos por concepto de responsabilidades del Gobierno del Distrito Federal.',3960)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3969,'Otros gastos por responsabilidades.',3960)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3991,'Servicios para la promoción deportiva.',3990)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3992,'Servicios para la promoción y difusión de sitios turísticos, culturales, recreativos y deportivos del Distrito Federal.',3990)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3993,'Subrogaciones.',3990)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3994,'Erogaciones derivadas de ingresos por cuenta de terceros.',3990)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(3999,'Otros servicios generales.',3990)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4111,'Asignaciones presupuestarias al Órgano Ejecutivo del Distrito Federal.',4110)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4121,'Asignaciones presupuestarias al Órgano Legislativo del Distrito Federal.',4120)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4131,'Asignaciones presupuestarias al Órgano Superior de Justicia del Distrito Federal.',4130)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4141,'Asignaciones presupuestarias a Órganos Autónomos del Distrito Federal.',4140)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4151,'Transferencias otorgadas a entidades paraestatales no empresariales y no financieras.',4150)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4152,'Aportaciones otorgadas a entidades paraestatales no empresariales y no financieras.',4150)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4161,'Transferencias otorgadas a entidades paraestatales empresariales y no financieras.',4160)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4162,'Aportaciones otorgadas a entidades paraestatales empresariales y no financieras.',4160)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4171,'Transferencias otorgadas a fideicomisos públicos empresariales y no financieros.',4170)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4172,'Aportaciones otorgadas a fideicomisos públicos empresariales y no financieros.',4170)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4181,'Transferencias otorgadas a instituciones paraestatales públicas financieras.',4180)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4182,'Aportaciones otorgadas a instituciones paraestatales públicas financieras.',4180)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4191,'Transferencias otorgadas a fideicomisos públicos financieros.',4190)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4192,'Aportaciones otorgadas a fideicomisos públicos financieros.',4190)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4211,'Transferencias otorgadas a entidades paraestatales no empresariales y no financieras.',4210)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4221,'Transferencias otorgadas para entidades paraestatales empresariales y no financieras.',4220)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4231,'Transferencias otorgadas para instituciones paraestatales públicas financieras.',4230)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4241,'Transferencias otorgadas a entidades federativas y municipios.',4240)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4251,'Transferencias a fideicomisos de entidades federativas y municipios.  	' ,	4250)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4311,'Subsidios a la producción.',4310)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4321,'Subsidios a la distribución.',4320)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4331,'Subsidios a la inversión.',4330)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4341,'Subsidios a la prestación de servicios públicos.',4340)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4361,'Subsidios a la vivienda.',4360)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4411,'Premios.',4410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4412,'Ayudas sociales a personas u hogares de escasos recursos.',4410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4419,'Otras ayudas sociales a personas.',4410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4421,'Becas y otras ayudas para programas de capacitación.',4420)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4430,'Ayudas sociales a instituciones de enseñanza.',4430)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4431,'Ayudas sociales a instituciones de enseñanza.',4430)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4441,'Ayudas sociales a actividades científicas o académicas.',4440)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4451,'Ayudas sociales a instituciones sin fines de lucro.',4450)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4461,'Ayudas sociales a cooperativas.',4460)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4471,'Ayudas sociales a entidades de interés público.',4470)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4481,'Ayudas por desastres naturales y otros siniestros.',4480)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4511,'Pensiones.',4510)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4521,'Jubilaciones.',4520)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4611,'Transferencias a fideicomisos del Órgano Ejecutivo del Distrito Federal.',4610)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4612,'Aportaciones a fideicomisos del Órgano Ejecutivo del Distrito Federal.',4610)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4621,'Transferencias a fideicomisos del Órgano Legislativo del Distrito Federal.',4620)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4631,'Transferencias a fideicomisos del Órgano Superior de Justicia del Distrito Federal.',4630)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4641,'Transferencias a fideicomisos no empresariales y no financieros.',4640)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4642,'Aportaciones a fideicomisos no empresariales y no financieros.',4640)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4651,'Transferencias a fideicomisos públicos de entidades paraestatales empresariales y no financieras.',4650)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4652,'Aportaciones a fideicomisos públicos de entidades paraestatales empresariales y no financieras.',4650)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4921,'Transferencias para organismos internacionales.',4920)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(4931,'Transferencias para el sector privado externo.',4930)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5111,'Muebles de oficina y estantería.  	' ,	5110)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5121,'Muebles, excepto de oficina y estantería.',5120)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5131,'Bienes artísticos, culturales y científicos.',5130)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5141,'Objetos de valor.',5140)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5151,'Equipo de cómputo y de tecnologías de la información.',5150)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5191,'Otros mobiliarios y equipos de administración.',5190)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5211,'Equipos y aparatos audiovisuales.',5210)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5221,'Aparatos deportivos.',5220)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5231,'Cámaras fotográficas y de video.',5230)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5291,'Otro mobiliario y equipo educacional y recreativo.',5290)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5311,'Equipo médico y de laboratorio.',5310)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5321,'Instrumental médico y de laboratorio.',5320)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5411,'Automóviles y camiones para la ejecución de programas de seguridad pública y atención de desastres naturales.',5410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5412,'Automóviles y camiones destinados a servicios públicos y la operación de programas públicos.',5410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5413,'Automóviles y camiones destinados a servidores públicos y servicios administrativos.',5410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5421,'Carrocerías y remolques para la ejecución de programas de seguridad pública y atención de desastres naturales.  	' ,	5420)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5422,'Carrocerías y remolques destinados a servicios públicos y la operación de programas públicos.',5420)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5423,'Carrocerías y remolques destinado a servidores públicos y servicios administrativos.',5420)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5431,'Equipo aeroespacial.',5430)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5441,'Equipo ferroviario.',5440)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5451,'Embarcaciones.',5450)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5491,'Otros equipos de transporte.',5490)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5511,'Equipo de defensa y seguridad.',5510)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5611,'Maquinaria y equipo agropecuario.',5610)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5621,'Maquinaria y equipo industrial.',5620)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5631,'Maquinaria y equipo de construcción.',5630)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5641,'Sistemas de aire acondicionado, calefacción y de refrigeración industrial y comercial.',5640)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5651,'Equipo de comunicación y telecomunicación.',5650)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5661,'Equipos de generación eléctrica, aparatos y accesorios eléctricos.',5660)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5671,'Herramientas y máquinasherramienta.',5670)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5691,'Otros equipos.',5690)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5711,'Bovinos.',5710)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5721,'Porcinos.',5720)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5731,'Aves.',5730)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5741,'Ovinos y caprinos.',5740)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5751,'Peces y acuicultura.',5750)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5761,'Equinos.',5760)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5771,'Especies menores y de zoológico.',5770)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5781,'Árboles y plantas.',5780)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5791,'Otros activos biológicos.',5790)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5811,'Adquisición de terrenos.',5810)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5812,'Adjudicaciones, expropiaciones e indemnizaciones de terrenos.',5810)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5821,'Adquisición de viviendas.',5820)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5822,'Adjudicaciones, expropiaciones e indemnizaciones de viviendas.',5820)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5831,'Adquisición de edificios no residenciales.',5830)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5832,'Adjudicaciones, expropiaciones e indemnizaciones de edificios no residenciales.',5830)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5891,'Adquisición de otros bienes inmuebles.',5890)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5892,'Adjudicaciones, expropiaciones e indemnizaciones de otros bienes inmuebles.  	' ,	5890)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5911,'Software.',5910)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5921,'Patentes.',5920)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5931,'Marcas.',5930)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5941,'Derechos.',5940)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5951,'Concesiones.',5950)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5961,'Franquicias.',5960)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5971,'Licencias informáticas e intelectuales.',5970)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5981,'Licencias industriales, comerciales y otras.',5980)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(5991,'Otros activos intangibles.',5990)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6111,'Edificación habitacional.',6110)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6121,'Edificación no habitacional.',6120)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6131,'Construcción de obras para el abastecimiento de agua, petróleo, gas, electricidad y telecomunicaciones.',6130)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6141,'División de terrenos y construcción de obras de urbanización.',6140)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6151,'Construcción de vías de comunicación.' ,	6150)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6161,'Otras construcciones de ingeniería civil u obra pesada.',6160)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6171,'Instalaciones y equipamiento en construcciones.',6170)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6191,'Trabajos de acabados en edificaciones y otros trabajos especializados.',6190)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6211,'Edificación habitacional.',6210)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6221,'Edificación no habitacional.',6220)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6231,'Construcción de obras para el abastecimiento de agua, petróleo, gas, electricidad y telecomunicaciones.',6230)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6241,'División de terrenos y construcción de obras de urbanización.',6240)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6251,'Construcción de vías de comunicación.',6250)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6261,'Otras construcciones de ingeniería civil u obra pesada.',6260)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6271,'Instalaciones y equipamiento en construcciones.',6270)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6291,'Trabajos de acabados en edificaciones y otros trabajos especializados.',6290)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6311,'Estudios, formulación y evaluación de proyectos productivos no incluidos en conceptos anteriores de este capítulo.',6310)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(6321,'Ejecución de proyectos productivos no incluidos en conceptos anteriores de este capítulo.',6320)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7111,'Créditos otorgados por entidades federativas y municipios al sector social y privado para el fomento de actividades productivas.',7110)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7119,'Otros créditos otorgados al sector social y privado para el fomento de actividades productivas.',7110)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7211,'Acciones y participaciones de capital en entidades paraestatales no empresariales y no financieras con fines de política económica.',7210)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7221,'Acciones y participaciones de capital en entidades paraestatales empresariales y no financieras con fines de política económica.',7220)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7231,'Acciones y participaciones de capital en instituciones paraestatales públicas financieras con fines de política económica.',7230)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7241,'Acciones y participaciones de capital en el sector privado con fines de política económica.',7240)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7251,'Acciones y participaciones de capital en organismos internacionales con fines de política económica.',7250)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7261,'Acciones y participaciones de capital en el sector externo con fines de política económica.',7260)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7271,'Acciones y participaciones de capital en el sector público con fines de gestión de la liquidez.',7270)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7281,'Acciones y participaciones de capital en el sector privado con fines de gestión de la liquidez.',7280)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7291,'Acciones y participaciones de capital en el sector externo con fines de gestión de la liquidez.',7290)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7311,'Bonos.',7310)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7321,'Valores representativos de deuda adquiridos con fines de política económica.  	' ,	7320)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7331,'Valores representativos de deuda adquiridos con fines de gestión de liquidez.',7330)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7341,'Obligaciones negociables adquiridas con fines de política económica.',7340)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7351,'Obligaciones negociables adquiridas con fines de gestión de liquidez.',7350)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7391,'Otros valores.',7390)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7411,'Concesión de préstamos a entidades paraestatales no empresariales y no financieras.',7410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7421,'Concesión de préstamos a entidades paraestatales empresariales y no financieras.',7420)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7431,'Concesión de préstamos a instituciones paraestatales públicas financieras.',7430)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7451,'Concesión de préstamos al sector privado.',7450)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7461,'Concesión de préstamos al sector externo.',7460)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7471,'Concesión de préstamos al sector público.',7470)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7481,'Concesión de préstamos al sector privado.',7480)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7491,'Concesión de préstamos al sector externo.',7490)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7511,'Inversiones en fideicomisos del Órgano Ejecutivo del Distrito Federal.',7510)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7521,'Inversiones en fideicomisos del Órgano Legislativo del Distrito Federal.',7520)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7531,'Inversiones en fideicomisos del Órgano Superior de Justicia del Distrito Federal.',7530)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7541,'Inversiones en fideicomisos públicos no empresariales y no financieros.',7540)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7551,'Inversiones en fideicomisos públicos empresariales y no financieros.',7550)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7561,'Inversiones en fideicomisos públicos financieros.',7560)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7571,'Inversiones en fideicomisos de entidades federativas.',7570)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7591,'Fideicomisos de empresas privadas y particulares.',7590)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7611,'Depósitos a largo plazo en moneda nacional.',7610)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7612,'Erogaciones recuperables por concepto de reserva.',7610)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7621,'Depósitos a largo plazo en moneda extranjera.',7620)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7911,'Contingencias por fenómenos naturales.',7910)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7921,'Contingencias socioeconómicas.',7920)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(7999,'Otras erogaciones especiales.',7990)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8110,'Fondo general de participaciones.',8110)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8120,'Fondo de fomento municipal.',8120)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8130,'Participaciones de las entidades federativas a los municipios.',8130)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8140,'Otros conceptos participables de la Federación a entidades federativas.',8140)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8150,'Otros conceptos participables de la Federación a municipios.',8150)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8160,'Convenios de colaboración administrativa.',8160)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8310,'Aportaciones de la Federación a las entidades federativas.',8310)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8320,'Aportaciones de la Federación a municipios.  	' ,	8320)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8330,'Aportaciones de las entidades federativas a los municipios.  	' ,	8330)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8340,'Aportaciones previstas en leyes y decretos al sistema de protección social.',8340)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8350,'Aportaciones previstas en leyes y decretos compensatorias a entidades federativas y municipios.',8350)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8510,'Convenios de reasignación.  	' ,	8510)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8520,'Convenios de descentralización.  	' ,	8520)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(8530,'Otros Convenios.  	' ,	8530)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9111,'Amortización de la deuda interna con instituciones de crédito.',9110)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9121,'Amortización de la deuda interna por emisión de títulos y valores.',9120)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9131,'Amortización de arrendamientos financieros nacionales.',9130)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9141,'Amortización de la deuda externa con instituciones de crédito.',9140)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9151,'Amortización de deuda externa con organismos financieros internacionales.',9150)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9161,'Amortización de la deuda bilateral.',9160)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9171,'Amortización de la deuda externa por emisión de títulos y valores.',9170)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9181,'Amortización de arrendamientos financieros internacionales.',9180)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9211,'Intereses de la deuda interna con instituciones de crédito.',9210)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9221,'Intereses derivados de la colocación de títulos y valores.',9220)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9231,'Intereses por arrendamientos financieros nacionales.',9230)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9241,'Intereses de la deuda externa con instituciones de crédito.',9240)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9251,'Intereses de la deuda con organismos financieros Internacionales.',9250)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9261,'Intereses de la deuda bilateral.',9260)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9271,'Intereses derivados de la colocación de títulos y valores en el exterior.',9270)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9281,'Intereses por arrendamientos financieros internacionales.',9280)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9311,'Comisiones de la deuda pública interna.',9310)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9321,'Comisiones de la deuda pública externa.',9320)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9411,'Gastos de la deuda pública interna.',9410)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9421,'Gastos de la deuda pública externa.',9420)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9511,'Costos por cobertura de la deuda pública interna.',9510)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9521,'Costos por cobertura de la deuda pública externa.',9520)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9611,'Apoyos a intermediarios financieros.',9610)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9621,'Apoyos a ahorradores y deudores del Sistema Financiero Nacional.',9620)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9911,'ADEFAS.',9910)
insert into tblPartidaEspecifica(idPartidaEspecifica, partidaEspecifica, idPartidaGenerica) values(9912,'Devolución de ingresos percibidos indebidamente en ejercicios fiscales anteriores.' ,	9910);


select * from tblPartidaEspecifica;



--Vista para la consulta del clasificador objeto del gasto

create view vwClasificacionObjetoGasto as

	select cap.idCapitulo, cap.capitulo, sub.idSubcapitulo, sub.subcapitulo, pg.idPartidaGenerica, pg.partidaGenerica, 
		   pe.idPartidaEspecifica, pe.partidaEspecifica
		from tblPartidaEspecifica pe
			join tblPartidaGenerica pg
				on pe.idPartidaGenerica = pg.idPartidaGenerica
			join tblSubcapitulo sub
				on pg.idSubcapitulo = sub.idSubcapitulo
			join tblCapitulo cap
				on sub.idCapitulo = cap.idCapitulo;

select * from vwClasificacionObjetoGasto; --ok local y azure

--Procedimiento almacenado para consulta de partidas específicas con parametrto

create procedure spPartidaEspecifica @partida int as
	select part.idPartidaEspecifica, part.partidaEspecifica
		from tblPartidaEspecifica as part
			where part.idPartidaEspecifica = @partida;

exec spPartidaEspecifica @partida = "3361";

--Fin spPartidaespecifica      --ok local y azure

--Procedimiento almacenado para buscar capitulo

create procedure spCapitulo @capitulo int as
	select cap.idCapitulo, cap.capitulo
		from tblCapitulo as cap
			where cap.idCapitulo = @capitulo;

exec spCapitulo @capitulo = 5000;  --ok local y azure

--Fin spCapitulo

--Procedimiento almacenada para consulta de texto en partida especifica

create procedure spBuscaTextoPartideEspecifica @buscaTextoPartEsp nvarchar(255) as
	select pe.idPartidaEspecifica, pe.idPartidaGenerica, pe.partidaEspecifica
		from tblPartidaEspecifica as pe
			where pe.partidaEspecifica like @buscaTextoPartEsp;

exec spBuscaTextoPartideEspecifica @buscaTextoPartEsp = '%sueldo%';   --ok local y azure

--Fin spBuscaTextoPartideEspecifica


--****************************************************************************************************
--SQL QUERY 2
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Tablas de Dependencias Generales de la Administración Pública del IEMS y sus funcionarios
-- 06 de junio de 2020
--****************************************************************************************************

use dbAdquisiciones;

--Tabla de funcionarios de la entidad

create table tblFuncionarios(idIntFuncionario int NOT NULL,
							 strRfcFuncionario nvarchar(13) NOT NULL,
							 strCurpFuncionario nvarchar(24) NOT NULL,
							 strTratoFuncionario nvarchar(24) NOT NULL,
							 strNombresFuncionario nvarchar(60) NOT NULL,
							 strApellidoPaternoFuncionario nvarchar(60) NOT NULL,
							 strApellidoMaternoFuncionario nvarchar(60) NOT NULL,
							 
							 constraint pkIdIntFuncionario
							 primary key(idIntFuncionario),
							 
							 constraint unqStrRfcFuncionario
							 unique(strRfcFuncionario),
							 
							 constraint unqStrCurpFuncionario
							 unique(strCurpFuncionario)
							 
							 );	--OK	--ok local y azure
--Captura de datos de funcionarios

insert into tblFuncionarios(idIntFuncionario, strRfcFuncionario, strCurpFuncionario, strTratoFuncionario, strNombresFuncionario, strApellidoPaternoFuncionario, strApellidoMaternoFuncionario)values(0, 'VACANTE', 'VACANTE', 'VACANTE','VACANTE', 'VACANTE', 'VACANTE')
insert into tblFuncionarios(idIntFuncionario, strRfcFuncionario, strCurpFuncionario, strTratoFuncionario, strNombresFuncionario, strApellidoPaternoFuncionario, strApellidoMaternoFuncionario)values(1, 'J_______', 'JUCS', 'MTRA.','S______', 'J_____', 'C___')
insert into tblFuncionarios(idIntFuncionario, strRfcFuncionario, strCurpFuncionario, strTratoFuncionario, strNombresFuncionario, strApellidoPaternoFuncionario, strApellidoMaternoFuncionario)values(2, 'U_______', 'UE________', 'LIC.','AN____', 'U____', 'AV____')
insert into tblFuncionarios(idIntFuncionario, strRfcFuncionario, strCurpFuncionario, strTratoFuncionario, strNombresFuncionario, strApellidoPaternoFuncionario, strApellidoMaternoFuncionario)values(3, 'SAMN', 'SAMN', 'ARQ.','N__________', 'S______', 'M____')
insert into tblFuncionarios(idIntFuncionario, strRfcFuncionario, strCurpFuncionario, strTratoFuncionario, strNombresFuncionario, strApellidoPaternoFuncionario, strApellidoMaternoFuncionario)values(4, 'PIBE761_____', 'PIB___________', 'LIC.','ERICK GENARO', 'PIÑA ARRIETA', 'BARBOSA')
insert into tblFuncionarios(idIntFuncionario, strRfcFuncionario, strCurpFuncionario, strTratoFuncionario, strNombresFuncionario, strApellidoPaternoFuncionario, strApellidoMaternoFuncionario)values(5, 'JIM_______', 'JIMG', 'LIC.', 'GU_____', 'JI_____', 'M____');

select * from tblFuncionarios; --OK  --ok local y azure



use dbAdquisiciones;

--alter table tblDirectorio
--alter column strNombreUnidadResponable nvarchar(120) NOT NULL;

--Consulta para obtener el nombre comleto del servidor público
select idIntFuncionario,
		strNombresFuncionario,
		strApellidoPaternoFuncionario,
		strApellidoMaternoFuncionario,
		concat( idIntFuncionario, '   ',
				strApellidoPaternoFuncionario, ' ',
				strApellidoMaternoFuncionario, ' ',
				strNombresFuncionario, ' ') strNombreCompleto
	from tblFuncionarios
	order by strApellidoPaternoFuncionario;

--Vista del nombre completo del servidor público --ok local y azure

create view vwNombreCompletoFuncionario as
select idIntFuncionario,
		strNombresFuncionario,
		strApellidoPaternoFuncionario,
		strApellidoMaternoFuncionario,
		concat( idIntFuncionario, '   ',
				strApellidoPaternoFuncionario, ' ',
				strApellidoMaternoFuncionario, ' ',
				strNombresFuncionario, ' ') strNombreCompleto
	from tblFuncionarios;

select * from vwNombreCompletoFuncionario;   --ok local y azure
					


--Tabla de entidades de la administración publica del IEMS

use dbAdquisiciones;

create table tblDirectorio(idStrUnidadResponsable nvarchar(10) NOT NULL,
						  strDireccion nvarchar(3),
						  strSubdireccion nvarchar(6),
						  strUnidadDeptal nvarchar(8),
					      strNombreUnidadResponable nvarchar(120) NOT NULL,
					      idIntFuncionarioEnTurno int,
					      strCargoFuncionarioEnTurno nvarchar(120) NOT NULL,
					      
						  constraint pkIdIntUnidadResponsable
						  primary key(idStrUnidadResponsable),
						  
						  constraint fkIdIntFuncionarioEnTurno
						  foreign key(idIntFuncionarioEnTurno)
						  references tblFuncionarios(idIntFuncionario)
						  ); --ok local y azure


insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1','1.0','1.0.0','1.0.0.0','DIRECCIÓN GENERAL',1, 'DIRECTOR(A) GENERAL DEL IEMS')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.0.1','1.0','1.0.0','1.0.0.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE ENLACE Y COMUNICACIÓN',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE ENLACE  COMUNICACIÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.0.1.1','1.0','1.0.0','1.0.0.1','LÍDER COORDINADOR DE PROYECTOS DE INFORMACIÓN A',0, 'LÍDER COORDINADOR(A) DE PROYECTOS DE INFORMACIÓN A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.0.1.2','1.0','1.0.0','1.0.0.1','LÍDER COORDINADOR DE PROYECTOS DE INFORMACIÓN B',0, 'LÍDER COORDINADOR(A) DE PROYECTOS DE INFORMACIÓN B')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.1','1.0','1.0.1','1.0.1.0','SUBDIRECCIÓN DE TECNOLOGÍAS DE LA INFORMACIÓN Y COMUNICACIÓN',0, 'SUBDIRECTOR(A) DE TECNOLOGÍAS DE INFORMACIÓN Y COMUNICACIÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.1.1','1.0','1.0.1','1.0.1.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE INFORMÁTICA',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE INFORMÁTICA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.1.2','1.0','1.0.1','1.0.1.2','JEFATURA DE UNIDAD DEPARTAMENTAL DE COMUNICACIONES DIGITALES',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE COMUNICACIONES DIGITALES')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.1.3','1.0','1.0.1','1.0.1.3','JEFATURA DE UNIDAD DEPARTAMENTAL DE SISTEMAS Y PROCESAMIENTO DE INFORMACIÓN',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE SISTEMAS Y PROCESAMIENTO DE INFORMACIÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.1.4','1.0','1.0.1','1.0.1.4','JEFATURA DE UNIDAD DEPARTAMENTAL DE PROCESOS Y DISEÑO MULTIMEDIA',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE PROCESOS Y DISEÑO MULTIMEDIA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.2','1.0','1.0.2','1.0.2.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL LÁZARO CÁRDENAS DEL RÍO',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL LÁZARO CÁRDENAS DEL RÍO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.2.0.1','1.0','1.0.2','1.0.2.0','ENLACE DE PLANTEL LÁZARO CÁRDENAS DEL RÍO A',0, 'ENLACE DEL PLANTEL LÁZARO CÁRDENAS DEL RÍO A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.2.1','1.0','1.0.2','1.0.2.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL LÁZARO CÁRDENAS DEL RÍO',0, 'JEFE(A) DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL LÁZARO CÁRDENAS DEL RÍO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.3','1.0','1.0.3','1.0.3.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL MELCHOR OCAMPO',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL MELCHOR OCAMPO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.3.0.1','1.0','1.0.3','1.0.3.0','ENLACE DEL PLANTEL MELCHOR OCAMPO A',0, 'ENLACE DEL PLANTEL MELCHOR OCAMPO A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.3.1','1.0','1.0.3','1.0.3.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL MELCHOR OCAMPO',0, 'JEFE(A) DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL MELCHOR OCAMPO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.4','1.0','1.0.4','1.0.4.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL RICARDO FLORES MAGÓN',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL RICARDO FLORES MAGÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.4.0.1','1.0','1.0.4','1.0.4.0','ENLACE DEL PLANTEL RICARDO FLORES MAGÓN A',0, 'ENLACE DEL PLANTEL RICARDO FLORES MAGÓN A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.4.1','1.0','1.0.4','1.0.4.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL RICARDO FLORES MAGÓN',0, 'JEFE(A) DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL RICARDO FLORES MAGÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.6','1.0','1.0.6','1.0.6.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL BELISARIO DOMÍNGUEZ',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL BELISARIO DOMÍNGUEZ')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.6.0.1','1.0','1.0.6','1.0.6.0','ENLACE DEL PLANTEL BELISARIO DOMÍNGUEZ A',0, 'ENLACE DEL PLANTEL BELISARIO DOMÍNGUEZ A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.6.1','1.0','1.0.6','1.0.6.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL BELISARIO DOMÍNGUEZ',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL BELISARIO DOMÍNGUEZ')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.7','1.0','1.0.7','1.0.7.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL SALVADOR ALLENDE',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL SALVADOR ALLENDE')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.7.0.1','1.0','1.0.7','1.0.7.0','ENLACE DEL PLANTEL SALVADOR ALLENDE A',0, 'ENLACE DEL PLANTEL SALVADOR ALLENDE A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.7.1','1.0','1.0.7','1.0.7.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL SALVADOR ALLENDE',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL SALVADOR ALLENDE')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.8','1.0','1.0.8','1.0.8.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL FELIPE CARRILLO PUERTO',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL FELIPE CARRILLO PUERTO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.8.0.1','1.0','1.0.8','1.0.8.0','ENLACE DEL PLANTEL FELIPE CARRILLO PUERTO A',0, 'ENLACE DEL PLANTEL FELIPE CARRILLO PUERTO A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.8.1','1.0','1.0.8','1.0.8.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL FELIPE CARRILLO PUERTO',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL FELIPE CARRILLO PUERTO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.9','1.0','1.0.9','1.0.9.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL IZTAPALAPA 1',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL IZTAPALAPA 1')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.9.0.1','1.0','1.0.9','1.0.9.0','ENLACE DEL PLANTEL IZTAPALAPA 1 A',0, 'ENLACE DEL PLANTEL IZTAPALAPA 1 A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.9.1','1.0','1.0.9','1.0.9.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL IZTAPALAPA 1',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL IZTAPALAPA 1')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.10','1.0','1.0.10','1.0.10.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL BENITO JUÁREZ GARCÍA',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL BENITO JUÁREZ GARCÍA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.10.0.1','1.0','1.0.10','1.0.10.0','ENLACE DEL PLANTEL BENITO JUÁREZ GARCÍA A',0, 'ENLACE DEL PLANTEL BENITO JUÁREZ GARCÍA A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.10.1','1.0','1.0.10','1.0.10.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL BENITO JUÁREZ GARCÍA',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL BENITO JUÁREZ GARCÍA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.11','1.0','1.0.11','1.0.11.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL IGNACIO MANUEL ALTAMIRANO',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL IGNACIO MANUEL ALTAMIRANO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.11.0.1','1.0','1.0.11','1.0.11.0','ENLACE DEL PLANTEL IGNACIO MANUEL ALTAMIRANO A',0, 'ENLACE DEL PLANTEL IGNACIO MANUEL ALTAMIRANO A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.11.1','1.0','1.0.11','1.0.11.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL  IGNACIO MANUEL ALTAMIRANO',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL  IGNACIO MANUEL ALTAMIRANO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.12','1.0','1.0.12','1.0.12.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL CARMEN SERDÁN',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL CARMEN SERDÁN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.12.0.0','1.0','1.0.12','1.0.12.0','ENLACE DEL PLANTEL CARMEN SERDÁN A',0, 'ENLACE DEL PLANTEL CARMEN SERDÁN A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.12.1','1.0','1.0.12','1.0.12.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL CARMEN SERDÁN',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL CARMEN SERDÁN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.13','1.0','1.0.13','1.0.13.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL EMILIANO ZAPATA',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL EMILIANO ZAPATA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.13.0.1','1.0','1.0.13','1.0.13.0','ENLACE DEL PLANTEL EMILIANO ZAPATA A',0, 'ENLACE DEL PLANTEL EMILIANO ZAPATA A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.13.1','1.0','1.0.13','1.0.13.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL EMILIANO ZAPATA',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL EMILIANO ZAPATA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.14','1.0','1.0.14','1.0.14.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL JOSÉ MA. MORELOS Y PAVÓN',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL JOSÉ MA. MORELOS Y PAVÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.14.0.1','1.0','1.0.14','1.0.14.0','ENLACE DEL PLANTEL JOSE MA. MORELOS Y PAVÓN A',0, 'ENLACE DEL PLANTEL JOSE MA. MORELOS Y PAVÓN A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.14.1','1.0','1.0.14','1.0.14.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL JOSÉ MA. MORELOS Y PAVÓN',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL JOSÉ MA. MORELOS Y PAVÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.15','1.0','1.0.15','1.0.15.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL GRAL. FRANCISCO VILLA',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL GRAL. FRANCISCO VILLA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.15.0.1','1.0','1.0.15','1.0.15.0','ENLACE DEL PLANTEL GRAL FRANCSCO VILLA A',0, 'ENLACE DEL PLANTEL GRAL FRANCSCO VILLA A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.15.1','1.0','1.0.15','1.0.15.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL GRAL. FRANCISCO VILLA',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL GRAL. FRANCISCO VILLA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.16','1.0','1.0.16','1.0.16.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL OTILIO MONTAÑO',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL OTILIO MONTAÑO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.16.0.1','1.0','1.0.16','1.0.16.0','ENLACE DEL PLANTEL OTILIO MONTAÑO A',0, 'ENLACE DEL PLANTEL OTILIO MONTAÑO A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.16.1','1.0','1.0.16','1.0.16.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL OTILIO MONTAÑO',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL OTILIO MONTAÑO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.17','1.0','1.0.17','1.0.17.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL BERNARDINO DE SAHAGÚN',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL BERNARDINO DE SAHAGÚN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.17.0.1','1.0','1.0.17','1.0.17.1','ENLACE DEL PLANTEL BERNARDINO SAHAGÚN A',0, 'ENLACE DEL PLANTEL BERNARDINO SAHAGÚN A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.17.1','1.0','1.0.17','1.0.17.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL BERNARDINO DE SAHAGÚN',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL BERNARDINO DE SAHAGÚN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.18','1.0','1.0.18','1.0.18.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL JOSÉ REVUELTAS SÁNCHEZ',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL JOSÉ REVUELTAS SÁNCHEZ')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.18.0.1','1.0','1.0.18','1.0.18.0','ENLACE DEL PLANTEL JOSÉ REVUELTAS SÁNCHEZ A',0, 'ENLACE DEL PLANTEL JOSÉ REVUELTAS SÁNCHEZ A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.18.1','1.0','1.0.18','1.0.18.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL  JOSÉ REVUELTAS SÁNCHEZ',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL  JOSÉ REVUELTAS SÁNCHEZ')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.19','1.0','1.0.19','1.0.19.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL IZTAPALAPA III',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL IZTAPALAPA III')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.19.0.1','1.0','1.0.19','1.0.19.0','ENLACE DEL PLANTEL IZTAPALAPA III A',0, 'ENLACE DEL PLANTEL IZTAPALAPA III A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.19.1','1.0','1.0.19','1.0.19.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL IZTAPALAPA III',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL IZTAPALAPA III')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.20','1.0','1.0.20','1.0.20.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL IZTAPALAPA IV',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL IZTAPALAPA IV')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.20.0.1','1.0','1.0.20','1.0.20.0','ENLACE DEL PLANTEL IZTAPALAPA IV A',0, 'ENLACE DEL PLANTEL IZTAPALAPA IV A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.20.1','1.0','1.0.20','1.0.20.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL IZTAPALAPA IV',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL IZTAPALAPA IV')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.21','1.0','1.0.21','1.0.21.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL ALVARO OBREGÓN II',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL ALVARO OBREGÓN II')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.21.0.1','1.0','1.0.21','1.0.21.0','ENLACE DEL PLANTEL ALVARO OBREGÓN II A',0, 'ENLACE DEL PLANTEL ALVARO OBREGÓN II A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.21.1','1.0','1.0.21','1.0.21.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL ALVARO OBREGÓN II',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL ALVARO OBREGÓN II')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.22','1.0','1.0.22','1.0.22.0','SUBDIRECCIÓN DE COORDINACIÓN DE PLANTEL GUSTAVO A. MADERO IV',0, 'SUBDIRECTOR(A) DE COORDINACIÓN DE PLANTEL GUSTAVO A. MADERO III')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.22.0.1','1.0','1.0.22','1.0.22.0','ENLACE DEL PLANTEL GUSTAVO A. MADERO IV',0, 'ENLACE DEL PLANTEL GUSTAVO A. MADERO IV')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.0.22.1','1.0','1.0.22','1.0.22.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL GUSTAVO A. MADERO IV',0, 'JEFE(A)  DE UNIDAD DEPARTAMENTAL DE APOYO A ESTUDINATES Y DOCENTES PLANTEL GUSTAVO A. MADERO IV')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.1','1.1','1.1.0','1.1.0.0','DIRECCIÓN DE ASUNTOS ESTUDIANTILES',0, 'DIRECTOR(A) DE ASUNTOS ESTUDIANTILES')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.1.0.1','1.1','1.1.0','1.1.0.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE ACTIVIDADES EXTRACURRICULARES',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE ACTIVIDADES EXTRACURRICULARES')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.1.0.2','1.1','1.1.0','1.1.0.2','JEFATURA DE UNIDAD DEPARTAMENTAL DE CULTURA Y RECREACIÓN',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE CULTURA Y RECREACIÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.1.0.3','1.1','1.1.0','1.1.0.3','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO ESTUDIANTIL',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE APOYO ESTUDIANTIL')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.1.0.4','1.1','1.1.0','1.1.0.4','JEFATURA DE UNIDAD DEPARTAMENTAL DE ACTIVACIÓN DE LA SALUD',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE ACTIVACIÓN DE LA SALUD')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.1.0.0.1','1.1','1.1.0','1.1.0.4','LÍDER CORDINADOR DE PROYECTOS ESTUDIANTILES A',0, 'LÍDER CORDINADOR(A) DE PROYECTOS ESTUDIANTILES A')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.1.0.0.2','1.1','1.1.0','1.1.0.4','LÍDER CORDINADOR DE PROYECTOS ESTUDIANTILES B',0, 'LÍDER CORDINADOR(A) DE PROYECTOS ESTUDIANTILES B')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.1.1','1.1','1.1.1','1.1.1.0','SUBDIRECCIÓN DE ASUNTOS ESTUDIANTILES',0, 'SUBDIRECTOR(A) DE ASUNTOS ESTUDIANTILES')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.1.1.1','1.1','1.1.1','1.1.1.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE CERTIFICACIÓN',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE CERTIFICACIÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.1.1.2','1.1','1.1.1','1.1.1.2','JEFATURA DE UNIDAD DEPARTAMENTALDE BECAS Y ESTÍMULOS ESTUDIANTILES',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTALDE BECAS Y ESTÍMULOS ESTUDIANTILES')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.1.1.3','1.1','1.1.1','1.1.1.3','JEFATURA DE UNIDAD DEPARTAMENTAL DE CONTROL Y SEGUIMIENTO ESCOLAR',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE CONTROL Y SEGUIMIENTO ESCOLAR')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.2','1.2','1.2.0','1.2.0.0','DIRECCIÓN DE ASUNTOS ACADÉMICOS',0, 'DIRECTOR(A) DE ASUNTOS ACADÉMICOS')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.2.0.0.1','1.2','1.2.0','1.2.0.0','LÍDER CORDINADOR DE PROYECTOS ACADÉMICOS',0, 'LÍDER CORDINADOR(A) DE PROYECTOS ACADÉMICOS')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.2.0.1','1.2','1.2.0','1.2.0.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE CONTROL ESCOLAR',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE CONTROL ESCOLAR')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.2.1','1.2','1.2.1','1.2.1.0','SUBDIRECCIÓN DE PLANEACIÓN, EVALUACIÓN Y SEGUIMIENTO',0, 'SUBDIRECTOR(A) DE PLANEACIÓN, EVALUACIÓN Y SEGUIMIENTO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.2.1.1','1.2','1.2.1','1.2.1.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE PLANEACIÓN Y REGLAMENTACIÓN ACADÉMICA-ADMINISTRATIVA',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE PLANEACIÓN Y REGLAMENTACIÓN ACADÉMICA-ADMINISTRATIVA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.2.1.2','1.2','1.2.1','1.2.1.2','JEFATURA DE UNIDAD DEPARTAMENTAL DE EVALUACIÓN Y SEGUIMIENTO DE ESTUDIANTES',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE EVALUACIÓN Y SEGUIMIENTO DE ESTUDIANTES')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.2.2','1.2','1.2.2','1.2.2.0','SUBDIRECCIÓN DE SELECCIÓN, FORMACIÓN Y DESARROLLO ACADÉMICO',0, 'SUBDIRECTOR(A) DE SELECCIÓN, FORMACIÓN Y DESARROLLO ACADÉMICO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.2.2.1','1.2','1.2.2','1.2.2.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE SELECCIÓN Y ADMISIÓN ACADÉMICA',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE SELECCIÓN Y ADMISIÓN ACADÉMICA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.2.2.2','1.2','1.2.2','1.2.2.2','JEFATURA DE UNIDAD DEPARTAMENTAL DE DESARROLLO DOCENTE',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE DESARROLLO DOCENTE')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.3','1.3','1.3.0','1.3.0.0','DIRECCIÓN DE INNOVACIÓN Y DESARROLLO DE GESTIÓN',0, 'DIRECTOR(A) DE INNOVACIÓN Y DESARROLLO DE GESTIÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.3.0.0.1','1.3','1.3.0','1.3.0.0','LÍDER COORDINADOR DE PROYECTOS DE INNOVACIÓN',0, 'LÍDER COORDINADOR(A) DE PROYECTOS DE INNOVACIÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.3.1','1.3','1.3.1','1.3.1.0','SUBDIRECCIÓN DE DESARROLLO E INNOVACIÓN',0, 'SUBDIRECTOR(A) DE DESARROLLO E INNOVACIÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.3.1.1','1.3','1.3.1','1.3.1.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE APOYO A LA INNOVACIÓN',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE APOYO A LA INNOVACIÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.3.1.2','1.3','1.3.1','1.3.1.2','JEFATURA DE UNIDAD DEPARTAMENTAL DE DESARROLLO',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE DESARROLLO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.3.2','1.3','1.3.2','1.3.2.0','SUBDIRECCIÓN DE APOYO DOCENTE',0, 'SUBDIRECTOR(A) DE APOYO DOCENTE')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.3.2.1','1.3','1.3.2','1.3.2.1','JEFATURA DE UNIDAD DEPARTAMETAL DE APOYO PEDAGÓGICO',0, 'JEFE(A) DE LA UNIDAD DEPARTAMETAL DE APOYO PEDAGÓGICO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.3.2.2','1.3','1.3.2','1.3.2.2','JEFATURA DE UNIDAD DEPARTAMENTAL DE PRODUCCIÓN DIDÁCTICA',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE PRODUCCIÓN DIDÁCTICA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.3.2.3','1.3','1.3.2','1.3.2.3','JEFATURA DE UNIDAD DEPARTAMENTAL DE TECNOLOGÍAS',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE TECNOLOGÍAS')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.4','1.4','1.4.0','1.4.0.0','DIRECCIÓN JURÍDICA Y NORMATIVA',0, 'DIRECTOR(A) JURÍDICO Y NORMATIVA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.4.0.1','1.4','1.4.0','1.4.0.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE LA UNIDAD DE TRANSPARENCIA',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE LA UNIDAD DE TRANSPARENCIA')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.4.0.1.1','1.4','1.4.0','1.4.0.1','LÍDER COORDINADOR DE PROYECTOS DE TRANSPARENCIA Y ASUNTOS JURÍDICOS',0, 'LÍDER COORDINADOR(A) DE PROYECTOS DE TRANSPARENCIA Y ASUNTOS JURÍDICOS')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.4.0.2','1.4','1.4.0','1.4.0.2','JEFATURA DE UNIDAD DEPARTAMENTAL DE ASUNTOS JURÍDICOS',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE ASUNTOS JURÍDICOS')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.4.0.2.1','1.4','1.4.0','1.4.0.2','LÍDER COORDINADOR DE PROYECTOS JURÍDICOS B',0, 'LÍDER COORDINADOR(A) DE PROYECTOS JURÍDICOS B')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.5','1.5','1.5.0','1.5.0.0','DIRECCIÓN DE ADMINISTRACIÓN Y FINANZAS',2, 'DIRECTOR(A) DE ADMINISTRACIÓN Y FINANZAS')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.5.0.0.1','1.5','1.5.0','1.5.0.0','LÍDER COORDINADOR DE PROYECTOS DE SEGUIMIENTO ADMINISTRATIVO',0, 'LÍDER COORDINADOR(A) DE PROYECTOS DE SEGUIMIENTO ADMINISTRATIVO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.5.1','1.5','1.5.1','1.5.1.0','SUBDIRECCIÓN DE ADMINISTRACIÓN DE CAPITAL HUMANO',0, 'SUBDIRECTOR(A) DE ADMINISTRACIÓN DE CAPITAL HUMANO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.5.1.1','1.5','1.5.1','1.5.1.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE CONTROL DE PERSONAL',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE CONTROL DE PERSONAL')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.5.1.2','1.5','1.5.1','1.5.1.2','JEFATURA DE UNIDAD DEPARTAMENTAL DE PRESTACIONES Y POLÍTICA LABORAL',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE PRESTACIONES Y POLÍTICA LABORAL')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.5.2','1.5','1.5.2','1.5.2.0','SUBDIRECCIÓN DE RECURSOS MATERIALES, ABASTECIMIENTOS Y SERVICIOS',3, 'SUBDIRECTOR(A) DE RECURSOS MATERIALES, ABASTECIMIENTOS Y SERVICIOS')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.5.2.1','1.5','1.5.2','1.5.2.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE SUMINISTROS',4, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE SUMINISTROS')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.5.2.2','1.5','1.5.2','1.5.2.2','JEFATURA DE UNIDAD DEPARTAMENTAL DE MANTENIMIENTO Y SERVICIOS',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE MANTENIMIENTO Y SERVICIOS')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.5.2.3','1.5','1.5.2','1.5.2.3','JEFATURA DE UNIDAD DEPARTAMENTAL DE CONTROL DE BIENES',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE CONTROL DE BIENES')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.5.3','1.5','1.5.3','1.5.3.0','SUBDIRECCIÓN DE ADMINISTRACIÓN',0, 'SUBDIRECTOR(A) DE ADMINISTRACIÓN')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.5.3.1','1.5','1.5.3','1.5.3.1','JEFATURA DE UNIDAD DEPARTAMENTAL DE CONTABILIDAD Y REGISTRO',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE CONTABILIDAD Y REGISTRO')
insert into tblDirectorio(idStrUnidadResponsable, strDireccion, strSubdireccion, strUnidadDeptal, strNombreUnidadResponable, idIntFuncionarioEnTurno, strCargoFuncionarioEnTurno) values('1.5.3.2','1.5','1.5.3','1.5.3.2','JEFATURA DE UNIDAD DEPARTAMENTAL DE CONTROL PRESUPUESTAL',0, 'JEFE(A) DE LA UNIDAD DEPARTAMENTAL DE CONTROL PRESUPUESTAL');



select * from tblDirectorio; --ok local y azure


--Crear la vista de la unión de tablas funcionario y directorio

use  dbAdquisiciones;

create view vwDirectorioFuncionario as

select dir.idStrUnidadResponsable, dir.strDireccion, dir.strSubdireccion,
	   dir.strUnidadDeptal, dir.strNombreUnidadResponable, 
	   dir.idIntFuncionarioEnTurno,dir.strCargoFuncionarioEnTurno,
	   fun.idIntFuncionario, fun.strRfcFuncionario, fun.strCurpFuncionario,
	   fun.strTratoFuncionario, fun.strNombresFuncionario,
	   fun.strApellidoPaternoFuncionario, fun.strApellidoMaternoFuncionario
 from tblDirectorio dir
	join tblFuncionarios fun on fun.idIntFuncionario = dir.idIntFuncionarioEnTurno;	
	

select * from vwDirectorioFuncionario;	--ok local y azure

--Actualizacion de datos

use dbAdquisiciones;

select * from tblFuncionarios;
select * from tblDirectorio;

update tblDirectorio
set idIntFuncionarioEnTurno = 5
where idStrUnidadResponsable = '1.5.2.2';  --ok local y azure






--****************************************************************************************************
-- SQL Query 3
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Tablas de la dirección de almacen o lugares de abastecimiento
-- 06 de junio de 2020
--****************************************************************************************************

use dbAdquisiciones;

create table tblDireccionAbastecimiento(idIntDireccionAbastecimiento int NOT NULL,
										strCalleAbastecimiento nvarchar(240) NOT NULL,
										strNumeroExtAbastecimiento nvarchar(24)NOT NULL,
										strNumeroIntAbastecimiento nvarchar(24),
										strColoniaAbastecimiento nvarchar(120)NOT NULL,
										strCPabastecimiento nvarchar(6)NOT  NULL,
										strAlcaldiaMpoAbastecimiento nvarchar(120) NOT NULL,
										strEntidadAbastecimiento nvarchar(120) NOT NULL,
										strTelefonoAbastecimiento nvarchar(60),
										strEmailAbastecimiento nvarchar(90),
										strNombreContactoAbastecimiento nvarchar(120),
										
										constraint pkIdIntDireccionAbastecimiento
										primary key(idIntDireccionAbastecimiento)
										);  --ok local y azure

insert into tblDireccionAbastecimiento(idIntDireccionAbastecimiento,
										strCalleAbastecimiento,
										strNumeroExtAbastecimiento,
										strNumeroIntAbastecimiento,
										strColoniaAbastecimiento,
										strCPabastecimiento,
										strAlcaldiaMpoAbastecimiento,
										strEntidadAbastecimiento,
										strTelefonoAbastecimiento,
										strEmailAbastecimiento,
										strNombreContactoAbastecimiento)
values(1,'AVENID__________ ', '1_____', '', 'CONST________',
       '00000', 'ALCALDÍA GUSTAVO A. MADERO', 'CIUDAD DE MÉXICO', '5_______ EXT. 206',
       'o________@iems.edu.mx', 'LIC. O___________'); --ok local y azure
									   
select * from tblDireccionAbastecimiento;	

create view vwDireccionAbastecimiento as
select * from tblDireccionAbastecimiento;

select * from vwDireccionAbastecimiento; --ok local y azure								




--****************************************************************************************************
-- Sql Query 4 
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Tablas de la entidad contratante
-- 08 de junio de 2020
--****************************************************************************************************

use dbAdquisiciones;

create table tblEntidadContratante(idStrEntidadContratante nvarchar(12) NOT NULL,
								  strRfcEntidad nvarchar (13) NOT NULL,
								  strNombreEntidad nvarchar(240) NOT NULL,
								  strCalleEntidad nvarchar(120) NOT NULL,
								  strNumExtEntidad nvarchar(12) NOT NULL,
 								  strNumIntEntidad nvarchar(12),
								  strColoniaEntidad nvarchar(120) NOT NULL,
								  strCpEntidad nvarchar(6) NOT NULL,
								  strAlcaldiaMpoEntidad nvarchar(120) NOT NULL,
								  strCiudadEntidad nvarchar(60) NOT NULL,
								  strTelefonoEntidad nvarchar(60),
								  strCorreoEntidad nvarchar(120),
								  
								  constraint pkIdStrEntidadContratante
								  primary key (IdStrEntidadContratante),
								  
								  constraint unqStrNombreEntidad
								  unique(strNombreEntidad)
								  ); --ok local y azure
								  
insert into tblEntidadContratante(idStrEntidadContratante,
								  strRfcEntidad,
								  strNombreEntidad,
								  strCalleEntidad,
								  strNumExtEntidad,
								  strNumIntEntidad,
								  strColoniaEntidad,
								  strCpEntidad,
								  strAlcaldiaMpoEntidad,
								  strCiudadEntidad,
								  strTelefonoEntidad,
								  strCorreoEntidad)
values('36PDIE', 'IEM000401MJ7', 'INSTITUTO DE EDUCACIÓN MEDIA SUPERIOR DE LA CIUDAD DE MÉXICO',
       'AV. DIVISIÓN DEL NORTE', '906', '', 'NARVARTE PONIENTE', '03020', 'ALCALDÍA BENITO JUÁREZ',
       'CIUDAD DE MÉXICO', '5636-2500 ext. 400', '___________@iems.edu.mx');	--ok local y azure							  
								  
							  
create view vwEntidadContratante as								  
select * from tblEntidadContratante;

select * from vwEntidadContratante;  --ok local y azure


--Hay que tomar en cuenta que más adelante se incluye una tabla con las claves de todas la Unidades 
--Responsables del gato de la APCDMX al 12/08/2025, en el quey 13 URGs





--****************************************************************************************************
-- Sql Query 5
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Tablas de proveedores y  prestadores de servicio
-- 09 de junio de 2020
--****************************************************************************************************

use dbAdquisiciones;

create table tblProveedores(idStrRFCproveedor nvarchar(13) NOT NULL,
							strRazónSocialProveedor nvarchar(240) NOT NULL,
							strCalleProveedor nvarchar(120),
							strNumeroExtProveedor nvarchar(24),
							strNumeroIntProveedor nvarchar(24),
							strColoniaProveedor nvarchar(120),
							strCPproveedor nvarchar(12),
							strAlcaldiaMpoProveedor nvarchar(120),
							strCiudadProveedor nvarchar(120),
							strTelefonoProveedor nvarchar(120),
							strCorreoProveedor nvarchar(120),
							intPersonaFisicaMoral int,
							strCURPproveeedor nvarchar(18),
							strIdentPersonaFisica nvarchar(120),
							strNumActaConstitutiva nvarchar(24),
							dtmFechaActaConstitutiva date,
							strNotarioActaConstitutiva nvarchar(240),
							strNotariaActaConstitutiva nvarchar(120),
							strFolioMercantil nvarchar(12),
							strObjetoSocial nvarchar(240),
							strRepresentantelegal nvarchar(240),
							strIdentRepresentanteLegal nvarchar(120),
							strNumPoderNotarial nvarchar(24),
							dtmFechaPoderNotarial date,
							strNotarioPoderNotarial nvarchar(240),
							strNotariaPoderNotarial nvarchar(120),
							
							constraint pkIdStrRFCproveedor
							primary key(IdStrRFCproveedor),
							
							constraint unqStrRazónSocialProveedor
							unique(strRazónSocialProveedor)
							);  --ok local y azure
			
insert into tblProveedores(idStrRFCproveedor,
						   strRazónSocialProveedor, 
						   strCalleProveedor, 
						   strNumeroExtProveedor, 
						   strNumeroIntProveedor, 
						   strColoniaProveedor, 
						   strCPproveedor, 
						   strAlcaldiaMpoProveedor, 
						   strCiudadProveedor, 
						   strTelefonoProveedor, 
						   strCorreoProveedor, 
						   intPersonaFisicaMoral, 
						   strCURPproveeedor, 
						   strIdentPersonaFisica, 
						   strNumActaConstitutiva, 
						   dtmFechaActaConstitutiva, 
						   strNotarioActaConstitutiva, 
						   strNotariaActaConstitutiva, 
						   strFolioMercantil, 
						   strObjetoSocial, 
						   strRepresentantelegal, 
						   strIdentRepresentanteLegal, 
						   strNumPoderNotarial, 
						   dtmFechaPoderNotarial, 
						   strNotarioPoderNotarial, 
						   strNotariaPoderNotarial) 
values('PRO___________',
	   'P______, S. A. DE C. V.',
	   'P_____','507','302','DEL _______',
	   '03100','ALCALDÍA BENITO JUÁREZ','CIUDAD DE MÉXICO',
	   '4_______ Y 5______',
	   '____@_____.com',
	   2,
	   NULL,
	   'CREDENCIAL INE 00000000000',
	   '0000000',
	   '2016-03-04',
	   'LIC. _________',
	   '160 DE LA CIUDAD DE MÉXICO',
	   '552735-1',
	   'COMPRAVENTA, PRODUCCIÓN, DISTRIBUCIÓN,  ELABORACIÓN, FABRICACIÓN, ACONDICIONAMIENTO, DE TODA CLASE DE PRODUCTOS, BIENES Y SERVICIOS','C. LUIS _______','CREDENCIAL INE _______','3____','2016-03-04','LIC. GUA_______','160 DE LA CIUDAD DE MÉXICO');

	   --ok local y azure

insert into tblProveedores(idStrRFCproveedor,
						   strRazónSocialProveedor, 
						   strCalleProveedor, 
						   strNumeroExtProveedor, 
						   strNumeroIntProveedor, 
						   strColoniaProveedor, 
						   strCPproveedor, 
						   strAlcaldiaMpoProveedor, 
						   strCiudadProveedor, 
						   strTelefonoProveedor, 
						   strCorreoProveedor, 
						   intPersonaFisicaMoral, 
						   strCURPproveeedor, 
						   strIdentPersonaFisica, 
						   strNumActaConstitutiva, 
						   dtmFechaActaConstitutiva, 
						   strNotarioActaConstitutiva, 
						   strNotariaActaConstitutiva, 
						   strFolioMercantil, 
						   strObjetoSocial, 
						   strRepresentantelegal, 
						   strIdentRepresentanteLegal, 
						   strNumPoderNotarial, 
						   dtmFechaPoderNotarial, 
						   strNotarioPoderNotarial, 
						   strNotariaPoderNotarial) 
values( 'BPU__________',
		'BE_________DE C. V.',
		'RECURSOS HIDRÁULICOS',
		'8',
		NULL,
		'LA LOMA',
		'54060',
		'TLALNEPANTLA DE BAZ',
		'ESTADO DE MÉXICO',
		'______ ext _____',
		NULL,
		2,
		NULL,
		NULL,
		'8________',
		'2019/03/29',
		'LIC. ____________',
		'221 DE LA CIUDAD DE MÉXICO',
		'7806',
		'PRODUCIR, DISTRIBUIR, COMPRAR, VENDER Y COMERCIAL EN GENERAL CON TODA CLASE DE BEBIDAS GASEOSAS, O SIN GAS,  INCLUYENDO LA PRODUCCIÓN Y EMBOTELLAMIENTO DE JUEGOS DE FRUTAS, ASÍ COMO AGUAS MINERALES Y NATURALES',
		'A___________  paterno Materno',
		NULL,
		'8,_____',
		NULL,
		NULL,
		NULL
		); --ok local y azure
		
create view vwProveedores as
select * from tblProveedores;

select * from vwProveedores;  --ok local y azure






--**********************************************************************************
-- Sql Query 6 
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Tablas de fundamento legal de la adquisición y procedimientos de adquisición
-- 11 de junio de 2020
--***********************************************************************************

use dbAdquisiciones;

create table tblFundamentoLegal(idIntFundamentoLegal int NOT NULL,
								strArticulo nvarchar(60) NOT NULL,
								strFracción nvarchar(60),
								strLey nvarchar(120) NOT NULL,
								
								constraint pkIdIntFundamentoLegal
								primary key (idIntFundamentoLegal)
								); --ok local y azure
								
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(1, '1', '', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(2, '30', 'I', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(3, '30', 'II', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(4, '54', 'I', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(5, '54', 'II', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')

insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(6, '54', 'II BIS', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')

insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(7, '54', 'III', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(8, '54', 'IV', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(9, '54', 'IV BIS', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(10, '54', 'V', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')

insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(11, '54', 'VI', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(12, '54', 'VII', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(13, '54', 'VIII', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(14, '54', 'IX', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(15, '54', 'X', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(16, '54', 'XI', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(17, '54', 'XII', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(18, '54', 'XIII', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(19, '54', 'XIV', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(20, '54', 'XV', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(21, '54', 'XVI', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(22, '54', 'XVII', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(23, '54', 'XVIII', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(24, '54', 'XIX', 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')
	
insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(25, '55', NULL, 'LEY DE ADQUISICIONES PARA EL DISTRITO FEDERAL')

insert into tblFundamentoLegal(idIntFundamentoLegal, strArticulo, strFracción, strLey)
	values(26, '12', '12.3', 'CIRCULAR UNO 2109, NORMATIVIDAD EN MATERIA DE ADMINISTRACIÓN DE RECURSOS');


create view vwFundamentoLegal as
select * from tblFundamentoLegal;

select * from vwFundamentoLegal;  --ok local y azure




--Tabla de tipos de procedimiento de adjudicación*********************************

use dbAdquisiciones;

create table tblProcedimientoAdquisicion(idIntProcedimientoAdq int NOT NULL,
										 strProcedimientoAdq nvarchar(60),
										 intNacionalInternacional int NOT NULL,
										 
										 constraint pkIdIntProcedimientoAdq
										 primary key(idIntProcedimientoAdq)
										 );  --ok local y azure
										
insert into tblProcedimientoAdquisicion(idIntProcedimientoAdq, strProcedimientoAdq, intNacionalInternacional)
	values(1, 'LICITACIÓN PÚBLICA', 1)
	
insert into tblProcedimientoAdquisicion(idIntProcedimientoAdq, strProcedimientoAdq, intNacionalInternacional)
	values(2, 'LICITACIÓN PÚBLICA', 2)
	
insert into tblProcedimientoAdquisicion(idIntProcedimientoAdq, strProcedimientoAdq, intNacionalInternacional)
	values(3, 'INVITACIÓN RESTRINGIDA A CUANDO MENOS TRES PROVEEDORES', 1)
	
insert into tblProcedimientoAdquisicion(idIntProcedimientoAdq, strProcedimientoAdq, intNacionalInternacional)
	values(4, 'INVITACIÓN RESTRINGIDA A CUANDO MENOS TRES PROVEEDORES', 2)
	
insert into tblProcedimientoAdquisicion(idIntProcedimientoAdq, strProcedimientoAdq, intNacionalInternacional)
	values(5, 'ADJUDICACIÓN DIRECTA', 1)
	
insert into tblProcedimientoAdquisicion(idIntProcedimientoAdq, strProcedimientoAdq, intNacionalInternacional)
	values(6, 'ADJUDICACIÓN DIRECTA', 2)

insert into tblProcedimientoAdquisicion(idIntProcedimientoAdq, strProcedimientoAdq, intNacionalInternacional)
	values(7, 'ARRENDAMIENTO DE INMUEBLE',1);	

insert into tblProcedimientoAdquisicion(idIntProcedimientoAdq, strProcedimientoAdq, intNacionalInternacional)
	values(8, 'ARRENDAMIENTO DE INMUEBLE', 2);

insert into tblProcedimientoAdquisicion(idIntProcedimientoAdq, strProcedimientoAdq, intNacionalInternacional)
	values(9, 'CONVENIO DEPENDENCIAS APCDMX / APF', 1); --ok local y azure

create view vwProcedimientoAdquisicion as
select * from tblProcedimientoAdquisicion;	

select * from vwProcedimientoAdquisicion;  --ok local y azure










--**********************************************************************************
--SQL Query 7
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Tablas de fianzas y afianzadoras
-- 11 de junio de 2020
--***********************************************************************************

use dbAdquisiciones;

create table tblInstitucionEmisoraGarantia(idStrRFCinstitucionEmisora nvarchar(13) NOT NULL,
										   strNombreInstitucionEmisora nvarchar(240) NOT NULL,
										   
										   constraint pkIdStrRFCinstitucionEmisora
										   primary key(idStrRFCinstitucionEmisora)
										   ); --ok local y azure
										   
insert into tblInstitucionEmisoraGarantia(idStrRFCinstitucionEmisora, strNombreInstitucionEmisora)
	values('A___________', 'ASEGURADORA ______, S. A. DE C. V.')
	
insert into tblInstitucionEmisoraGarantia(idStrRFCinstitucionEmisora, strNombreInstitucionEmisora)
	values('A___________', '______, INSTITUCIÓN DE GARANTÍAS, S.A.')	
	
	
create view vwInstitucionEmisoraGarantia as
select * from tblInstitucionEmisoraGarantia

select * from vwInstitucionEmisoraGarantia;  --ok local y azure

--Crear la tabla de fianzas de garantía de cumplimiento emitidas

use dbAdquisiciones;

create table tblGarantiaCumplimiento(idIntGarantia int NOT NULL,
									 strFolioGarantia nvarchar(32) NOT NULL,
									 idStrRFCinstitucionEmisora nvarchar(13) NOT NULL,
									 intPorcentajeGarantia int NOT NULL, 
									 dblImporteGarantia double precision NOT NULL, 
									 strOficioEnvioGarantia nvarchar(36),
									 
									 constraint pkIdIntGarantia
									 primary key(idIntGarantia),
									 
									 constraint fkIdStrRFCinstitucionEmisora
									 foreign key(idStrRFCinstitucionEmisora)
									 references tblInstitucionEmisoraGarantia(idStrRFCinstitucionEmisora)
									 );

insert into tblGarantiaCumplimiento(idIntGarantia, strFolioGarantia, idStrRFCinstitucionEmisora, intPorcentajeGarantia, dblImporteGarantia, strOficioEnvioGarantia)
	values(1, '1013-09562-5', 'AAS9207314T7', 10, 24999.30, NULL);

insert into tblGarantiaCumplimiento(idIntGarantia, strFolioGarantia, idStrRFCinstitucionEmisora, intPorcentajeGarantia, dblImporteGarantia, strOficioEnvioGarantia)
	values(2, '2409179', 'ASG950531ID1', 10, 24000.00, NULL); 	
	
	
create view vwFiazaAfianzadora as
select gar.idIntGarantia, gar.strFolioGarantia, gar.idStrRFCinstitucionEmisora,
	   gar.intPorcentajeGarantia, gar.dblImporteGarantia, gar.strOficioEnvioGarantia,
	   inst.idStrRFCinstitucionEmisora as rfcAfianzadora, inst.strNombreInstitucionEmisora
from tblGarantiaCumplimiento gar
	join tblInstitucionEmisoraGarantia inst
		on inst.idStrRFCinstitucionEmisora = gar.idStrRFCinstitucionEmisora;
								 
select * from vwFiazaAfianzadora;  --ok local y azure
									 



--**********************************************************************************
--SQL Query 8
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Tablas de contratos
-- 11 de junio de 2020
--***********************************************************************************

use dbAdquisiciones;

select * from tblProcedimientoAdquisicion;

create table tblContratos(idIntContrato int NOT NULL, 
						  intEjercicioContrato int,
						  strNumeroContrato nvarchar(60), 
						  dtmFechaContrato date,
						  dtmInicioVigenciaContrato date, 
						  dtmFinVigenciaContrato date,
						  idStrEntidadContratante nvarchar(12), 
						  idStrRFCproveedor nvarchar(13),
						  idIntFundamentoLegal int, 
						  idIntProcedimientoAdq int,
						  strFolioProcAdjudicacion nvarchar(30), 
						  dtmFechaFallo date,
						  intPorcentajePenaConvencional int, 
						  intTipoGarantia int,
						  idIntGarantia int, 
						  idIntFuncionarioFacultado int,
						  idIntFuncionarioReviso int, 
						  idIntFuncionarioElaboro int,
						  idStrUnidadRespFuncFacultado nvarchar(10), 
						  idStrUnidadRespFuncReviso nvarchar(10),
						  idStrUnidadRespFuncElaboro nvarchar(10),
						  strOficioEnvioContrato nvarchar(36),
						  
						  constraint pkIdIntContrato
						  primary key (idIntContrato),
						  
						  constraint fkIdStrEntidadContratante
						  foreign key(idStrEntidadContratante)
						  references tblEntidadContratante(idStrEntidadContratante),
						  
						  constraint fkIdStrRFCproveedor
						  foreign key(idStrRFCproveedor)
						  references tblProveedores(idStrRFCproveedor),
						  
						  constraint fkIdIntFundamentoLegal
						  foreign key(idIntFundamentoLegal)
						  references tblFundamentoLegal(idIntFundamentoLegal),
						  
						  constraint fkIdIntProcedimientoAdq
						  foreign key(idIntProcedimientoAdq)
						  references tblProcedimientoAdquisicion(idIntProcedimientoAdq),
						  
						  constraint fkIdIntGarantia
						  foreign key(idIntGarantia)
						  references tblGarantiaCumplimiento(idIntGarantia),
						  
						  constraint fkIdIntFuncionarioFacultado
						  foreign key(idIntFuncionarioFacultado)
						  references tblFuncionarios(idIntFuncionario),
						  
						  constraint fkIdIntFuncionarioReviso
						  foreign key(idIntFuncionarioReviso)
						  references tblFuncionarios(idIntFuncionario),
						  
						  constraint fkIdIntFuncionarioElaboro
						  foreign key(idIntFuncionarioElaboro)
						  references tblFuncionarios(idIntFuncionario),
						  
						  constraint fkIdStrUnidadRespFuncFacultado
						  foreign key (idStrUnidadRespFuncFacultado)
						  references tblDirectorio(idStrUnidadResponsable),
						  
						  constraint fkIdStrUnidadRespFuncReviso
						  foreign key(idStrUnidadRespFuncReviso)
						  references tblDirectorio(idStrUnidadResponsable),
						  
						  constraint fkIdStrUnidadRespFuncElaboro
						  foreign key(idStrUnidadRespFuncElaboro)
						  references tblDirectorio(idStrUnidadResponsable)
						  
						  ); --ok local y azure
						  
						  
insert into tblContratos( idIntContrato, 
						  intEjercicioContrato,
						  strNumeroContrato, 
						  dtmFechaContrato,
						  dtmInicioVigenciaContrato, 
						  dtmFinVigenciaContrato,
						  idStrEntidadContratante, 
						  idStrRFCproveedor,
						  idIntFundamentoLegal, 
						  idIntProcedimientoAdq,
						  strFolioProcAdjudicacion, 
						  dtmFechaFallo,
						  intPorcentajePenaConvencional, 
						  intTipoGarantia,
						  idIntGarantia, 
						  idIntFuncionarioFacultado,
						  idIntFuncionarioReviso, 
						  idIntFuncionarioElaboro,
						  idStrUnidadRespFuncFacultado, 
						  idStrUnidadRespFuncReviso,
						  idStrUnidadRespFuncElaboro,
						  strOficioEnvioContrato)
values (1,
		2020,
		'SECTEI/IEMS/004/2020',
		'2020-02-01',
		'2020-02-01',
		'2020-12-31',
		'36PDIE',
		'B___________',
		25,
		5,
		NULL,
		NULL,
		10,
		1,
		1,
		2,
		3,
		4,
		'1.5',
		'1.5.2',
		'1.5.2.1',
		NULL
		); --ok local y azure
		

--Vista de la consulta de contratos y datos de tablas foráneas******************
create view vwContratos as

select cont.idIntContrato,
	   cont.intEjercicioContrato,
	   cont.strNumeroContrato,
	   cont.dtmFechaContrato,
	   cont.dtmInicioVigenciaContrato,
	   cont.dtmFinVigenciaContrato,
	   
	   cont.idStrEntidadContratante,
	   ent.strNombreEntidad,
	   
	   cont.idStrRFCproveedor,
	   prov.strRazónSocialProveedor,
	   
	   cont.idIntFundamentoLegal,
	   fund.strLey,
	   fund.strArticulo,
	   fund.strFracción,
	   
	   cont.idIntProcedimientoAdq,
	   adq.strProcedimientoAdq,
	   
	   cont.strFolioProcAdjudicacion,
	   cont.dtmFechaFallo,
	   cont.intPorcentajePenaConvencional,
	   cont.intTipoGarantia,
	   
	   cont.idIntFuncionarioFacultado,
	   funFac.strNombresFuncionario as nombreFuncFacultado,
	   funFac.strApellidoPaternoFuncionario as paternoFuncFacultado,
	   funFac.strApellidoMaternoFuncionario as maternoFuncFacultado,
	   
	   cont.idIntFuncionarioReviso,
	   funRev.strNombresFuncionario as nombreFunReviso,
	   funRev.strApellidoPaternoFuncionario as paternoFuncReviso,
	   funRev.strApellidoMaternoFuncionario as maternoFuncReviso,
	   
	   cont.idIntFuncionarioElaboro,
	   funEla.strNombresFuncionario as nombreFunElaboro,
	   funEla.strApellidoPaternoFuncionario as paternoFuncElaboro,
	   funEla.strApellidoMaternoFuncionario as maternoFuncElaboro,
	   
	   cont.idStrUnidadRespFuncFacultado,
	   dirFac.strNombreUnidadResponable as nombreUniRespFacultada,
	   
	   cont.idStrUnidadRespFuncReviso,
	   dirRev.strNombreUnidadResponable as nombreUniRespReviso,
	   
	   cont.idStrUnidadRespFuncElaboro,
	   dirEla.strNombreUnidadResponable as nombreUniRespElaboro
	   

from tblContratos cont
	join tblEntidadContratante ent
	on ent.idStrEntidadContratante = cont.idStrEntidadContratante
	
	join tblProveedores prov
	on prov.idStrRFCproveedor = cont.idStrRFCproveedor
	
	join tblFundamentoLegal fund
	on fund.idIntFundamentoLegal = cont.idIntFundamentoLegal
	
	join tblProcedimientoAdquisicion adq
	on adq.idIntProcedimientoAdq = cont.idIntProcedimientoAdq
	
	join tblFuncionarios funFac
	on funFac.idIntFuncionario = cont.idIntFuncionarioFacultado
	
	join tblFuncionarios funRev
	on funRev.idIntFuncionario = cont.idIntFuncionarioReviso
	
	join tblFuncionarios funEla
	on funEla.idIntFuncionario = cont.idIntFuncionarioElaboro
	
	join tblDirectorio dirFac
	on dirFac.idStrUnidadResponsable = cont.idStrUnidadRespFuncFacultado
	
	join tblDirectorio dirRev
	on dirRev.idStrUnidadResponsable = cont.idStrUnidadRespFuncReviso
	
	join tblDirectorio dirEla
	on dirEla.idStrUnidadResponsable = cont.idStrUnidadRespFuncElaboro;
	
select * from vwContratos; --ok local y azure

--*****Actualizaciones a la estructura de tblContratos, se agrega el tipo de contrato*******
--0 inicial, 2 2o modificatorio, 3 3er modificatorio, 4 4o modificatorio, etc.

alter table tblContratos
add intInicialModificatorio int;

update tblContratos
set intInicialModificatorio = 0
where idIntContrato = 1;
		
alter table tblContratos
alter column intInicialModificatorio int NOT NULL;		

select * from tblContratos; --ok local y azure

--**********************************************************************************
--SQL Query 9
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Tabla de requisiciónes
-- 11 de junio de 2020
--***********************************************************************************

use dbAdquisiciones;

create table tblRequisicion(idStrRequisicion nvarchar(24) NOT NULL,
							intNumeroRequisicion int NOT NULL,
							intEjercicio int NOT NULL,
							dtmFecha date NOT NULL,
							
							idIntFuncionarioSolicitante int NOT NULL,
							idIntFuncionarioVoBo int NOT NULL,
							idIntFuncionarioAutoriza int NOT NULL,
							
							idStrUnidadRespSolicitante nvarchar(10) NOT NULL,
							idStrUniRespVoBo nvarchar(10) NOT NULL,
							idStrUniRespAutoriza nvarchar(10) NOT NULL,
							
							dblSubtotalRequisicion double precision NOT NULL,
							dblIVArequisicion double precision NOT NULL,
							dblTotalRequisicion double precision NOT NULL,
							dtmInicioAbastecimiento date NOT NULL,
							dtmFinalAbastecimiento date NOT NULL,
							
							idIntDireccionAbastecimiento int NOT NULL,
							
							strOficioSuficiencia nvarchar(36),
							strJustificacionRequisicion nvarchar(240)NOT NULL,
							strOficioEnvioRequisicion nvarchar(36)
							
							constraint pkIdStrRequisicion
							primary key(idStrRequisicion),
					
							constraint fkIdIntFuncionarioSolicitante
							foreign key (idIntFuncionarioSolicitante)
							references tblFuncionarios(idIntFuncionario),
							
							constraint fkIdIntFuncionarioVoBo
							foreign key(idIntFuncionarioVoBo)
							references tblFuncionarios(idIntFuncionario),
							
							constraint fkIdIntFuncionarioAutoriza
							foreign key(idIntFuncionarioAutoriza)
							references tblFuncionarios(idIntFuncionario),
							
							constraint fkIdStrUnidadRespSolicitante
							foreign key(idStrUnidadRespSolicitante)
							references tblDirectorio(idStrUnidadResponsable),
							
							constraint fkIdStrUniRespVoBo
							foreign key(idStrUniRespVoBo)
							references tblDirectorio(idStrUnidadResponsable),
							
							constraint fkIdStrUniRespAutoriza
							foreign key(idStrUniRespAutoriza)
							references tblDirectorio(idStrUnidadResponsable),
							
							constraint fkIdIntDireccionAbastecimiento
							foreign key(idIntDireccionAbastecimiento)
							references tblDireccionAbastecimiento(idIntDireccionAbastecimiento)
							
							);  --ok local y azure

insert into tblRequisicion( idStrRequisicion,
							intNumeroRequisicion,
							intEjercicio,
							dtmFecha,
							idIntFuncionarioSolicitante,
							idIntFuncionarioVoBo,
							idIntFuncionarioAutoriza,
							idStrUnidadRespSolicitante,
							idStrUniRespVoBo,
							idStrUniRespAutoriza,
							dblSubtotalRequisicion,
							dblIVArequisicion,
							dblTotalRequisicion,
							dtmInicioAbastecimiento,
							dtmFinalAbastecimiento,
							idIntDireccionAbastecimiento,
							strOficioSuficiencia,
							strJustificacionRequisicion,
							strOficioEnvioRequisicion)
values( '007/2020',
		7,
		2020,
		'2020-01-13',
		5,
		3,
		2,
		'1.5.2.2',
		'1.5.2',
		'1.5',
		250000.00,
		0.00,
		250000.00,
		'2020-02-01',
		'2020-12-31',
		1,
		'SECTEI/IEMS/DAF/SA/O-035/2020',
		'SE REQUIERE EL SUMINISTRO DE AGUA PURIFICADA PARA CONSUMO HUMANO EN LOS PLANTELES Y OFNAS. CENTRALES DEL INSTITUTO',
		NULL);  --ok local y azure
		
select * from tblRequisicion;

--Vista de la requisicion y datos de tablas vinculadas

create view vwRequisicion as
select req.idStrRequisicion, 
	   req.intNumeroRequisicion,
	   req.intEjercicio,
	   req.dtmFecha,
	   
	   req.idIntFuncionarioSolicitante,
	   funSol.strNombresFuncionario as nombreSolicitante,
	   funSol.strApellidoPaternoFuncionario as paternoSolicitante,
	   funsol.strApellidoMaternoFuncionario as maternoSolicitante,
	   
	   req.idIntFuncionarioVoBo,
	   funVoBo.strNombresFuncionario as nombreVoBo,
	   funVoBo.strApellidoPaternoFuncionario as paternoVoBo,
	   funVoBo.strApellidoMaternoFuncionario as maternoVoBo,
	   
	   req.idIntFuncionarioAutoriza,
	   funAut.strNombresFuncionario as nombreAutoriza,
	   funAut.strApellidoPaternoFuncionario as paternoAutoriza,
	   funAut.strApellidoMaternoFuncionario as maternoAutoriza,
	   
	   req.idStrUnidadRespSolicitante,
	   dirSol.strNombreUnidadResponable as uniRespSolicitante,
	   
	   req.idStrUniRespVoBo,
	   dirVoBo.strNombreUnidadResponable as uniRespVoBo,
	   
	   req.idStrUniRespAutoriza,
	   dirAut.strNombreUnidadResponable as uniRespAutoriza,
	   
	   req.dblSubtotalRequisicion,
	   req.dblIVArequisicion,
	   req.dblTotalRequisicion,
	   req.dtmInicioAbastecimiento,
	   req.dtmFinalAbastecimiento,
	   
	   req.idIntDireccionAbastecimiento,
	   abast.strCalleAbastecimiento,
	   abast.strNumeroExtAbastecimiento,
	   abast.strNumeroIntAbastecimiento,
	   abast.strColoniaAbastecimiento,
	   abast.strCPabastecimiento,
	   abast.strEntidadAbastecimiento,
	   
	   req.strOficioSuficiencia,
	   req.strJustificacionRequisicion,
	   req.strOficioEnvioRequisicion
	   
	from tblRequisicion req
	
		join tblFuncionarios funAut
		on funAut.idIntFuncionario = req.idIntFuncionarioAutoriza
		join tblFuncionarios funVoBo
		on funVoBo.idIntFuncionario = req.idIntFuncionarioVoBo
		join tblFuncionarios funSol
		on funSol.idIntFuncionario = req.idIntFuncionarioSolicitante
		
		join tblDirectorio dirAut
		on dirAut.idStrUnidadResponsable = req.idStrUniRespAutoriza
		join tblDirectorio dirVoBo
		on dirVoBo.idStrUnidadResponsable = req.idStrUniRespVoBo
		join tblDirectorio dirSol
		on dirSol.idStrUnidadResponsable = req.idStrUnidadRespSolicitante
		
		join tblDireccionAbastecimiento abast
		on abast.idIntDireccionAbastecimiento = req.idIntDireccionAbastecimiento;
		
select * from vwRequisicion;  --ok local y azure

--Creación de la tabla de partidas de la requisición*************************************

use dbAdquisiciones;

create table tblPartidasRequisicion(idIntPartidaRequisicion int NOT NULL,
								    strDescripcion nvarchar(240) NOT NULL,
								    idStrRequisicion nvarchar(24) NOT NULL,
								    idIntPartidaPresupuestal int NOT NULL,
								    dblCantidadRequerida double precision NOT NULL,
								    strUnidad nvarchar(60) NOT NULL,
								    strPresentación nvarchar(60),
								    dblExistenciaActual double precision Not NULL,
								    dblCantidadPonderada double precision NOT NULL,
								    dblPrecioUnitario double precision NOT NULL,
								    dblImporte double precision NOT NULL,
								    dblTasa double precision NOT NULL,
								    dblIVA double precision NOT NULL,
								    dblTotal double precision NOT NULL,
								    
								    constraint pkIdIntPartidaRequisicion
								    primary key(idIntPartidaRequisicion),
								    
								    constraint fkIdIntPartidaPresupuestal
								    foreign key(idIntPartidaPresupuestal)
								    references tblPartidaEspecifica(idPartidaEspecifica)
								    );  --ok local y azure
								    
insert into tblPartidasRequisicion( idIntPartidaRequisicion,
								    strDescripcion,
								    idStrRequisicion,
								    idIntPartidaPresupuestal,
								    dblCantidadRequerida,
								    strUnidad,
								    strPresentación,
								    dblExistenciaActual,
								    dblCantidadPonderada,
								    dblPrecioUnitario,
								    dblImporte,
								    dblTasa,
								    dblIVA,
								    dblTotal)
values( 1,
		'SUMINISTRO DE AGUA PURIFICADA EN GARRAFÓN DE 20 LITROS',
		'007/2020',
		2211,
		10000.00,
		'GARRAFÓN',
		'20 LITROS',
		0.00,
		10000.00,
		25.00,
		250000.00,
		0.00,
		0.00,
		250000.00);  --ok local y azure
		
select * from tblPartidasRequisicion; --ok local y azure
				  
--Creación de la tabla de partidas del contrato***************************************


use dbAdquisiciones;

create table tblPartidasContrato(idIntPartidaContrato int NOT NULL,
								 idIntContrato int NOT NULL,
								 strDescripcion nvarchar(240),
								 strMarca nvarchar(120),
								 strModelo nvarchar(120),
								 idStrRequisicion nvarchar(24),
								 idIntPartidaPresupuestal int,
								 dblCantidad double precision,
								 strUnidad nvarchar(120),
								 strPresentacion nvarchar(120),
								 dblPrecioUnitario double precision,
								 dblImporte double precision,
								 dblTasa double precision,
								 dblIVA double precision,
								 dblTotal double precision
								 
								 constraint pkidIntPartidaContrato
								 primary key(idIntPartidaContrato),
								 
								 constraint fkIdIntContrato
								 foreign key(idIntContrato)
								 references tblContratos(idIntContrato),
								 
								 constraint fkIdStrRequisicion
								 foreign key(idStrRequisicion)
								 references tblRequisicion(idStrRequisicion),  --verificar si ya se creo esta tabla
								 
								 constraint fkIdIntPartidaPresupuestalContrato
								 foreign key(idIntPartidaPresupuestal)
								 references tblPartidaEspecifica(idPartidaEspecifica)
								 );  --ok local y azure


insert into tblPartidasContrato( idIntPartidaContrato,
								 idIntContrato,
								 strDescripcion,
								 strMarca,
								 strModelo,
								 idStrRequisicion,
								 idIntPartidaPresupuestal,
								 dblCantidad,
								 strUnidad,
								 strPresentacion,
								 dblPrecioUnitario,
								 dblImporte,
								 dblTasa,
								 dblIVA,
								 dblTotal)
values(1,
	   1,
	   'Garrafón de agua purificada de 20 litros',
	   'E-pura',
	   '20 litros',
	   '007/2020',
	   2211,
	   10000.00,
	   'GARRAFÓN',
	   '20 LITROS',
	   25.00,
	   250000.00,
	   0.00,
	   0.00,
	   250000.00);
			 
select * from tblPartidasContrato;

--Creación de la vista de la tabla contratos y sus partidas*****************************

create view vwContratos_Requisicion As

select    c.idIntContrato, 
		  c.intEjercicioContrato,
		  c.strNumeroContrato, 
		  c.dtmFechaContrato,
		  c.dtmInicioVigenciaContrato, 
		  c.dtmFinVigenciaContrato,
		  c.idStrEntidadContratante, 
		  c.idStrRFCproveedor,
		  c.idIntFundamentoLegal, 
		  c.idIntProcedimientoAdq,
		  c.strFolioProcAdjudicacion, 
		  c.dtmFechaFallo,
		  c.intPorcentajePenaConvencional, 
		  c.intTipoGarantia,
		  c.idIntGarantia, 
		  c.idIntFuncionarioFacultado,
		  c.idIntFuncionarioReviso, 
		  c.idIntFuncionarioElaboro,
		  c.idStrUnidadRespFuncFacultado, 
		  c.idStrUnidadRespFuncReviso,
		  c.idStrUnidadRespFuncElaboro,
		  c.strOficioEnvioContrato,
		  
		 pc.idIntPartidaContrato,
		 pc.idIntContrato as id_contrato,
		 pc.strDescripcion,
		 pc.strMarca,
		 pc.strModelo,
		 pc.idStrRequisicion as idRequi,
		 pc.idIntPartidaPresupuestal,
		 pc.dblCantidad,
		 pc.strUnidad,
		 pc.strPresentacion,
		 pc.dblPrecioUnitario,
		 pc.dblImporte,
		 pc.dblTasa,
		 pc.dblIVA,
		 pc.dblTotal,
		 
		 req.idStrRequisicion,
		 req.idIntFuncionarioSolicitante,
		 req.idStrUnidadRespSolicitante,
		 req.strOficioSuficiencia,
		 
		 dir.strNombreUnidadResponable,
		 f.strTratoFuncionario,
		 f.strNombresFuncionario,
		 f.strApellidoPaternoFuncionario,
		 f.strApellidoMaternoFuncionario

from tblContratos c
	join tblPartidasContrato pc on pc.idIntContrato = c.idIntContrato
	join tblRequisicion req on req.idStrRequisicion = pc.idStrRequisicion
	join tblDirectorio dir on dir.idStrUnidadResponsable = req.idStrUnidadRespSolicitante
	join tblFuncionarios f on f.idIntFuncionario = req.idIntFuncionarioSolicitante;
	
use dbadquisiciones;

select * from vwContratos_Requisicion;  --ok local y azure






--**********************************************************************************
-- SQL Query 9
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Tablas de órdenes de pago
-- 11 de junio de 2020
--***********************************************************************************

use dbAdquisiciones;

create table tblOrdenPago(idIntOrdenPago int NOT NULL,
						  intEjercicio int NOT NULL,
						  strFolioOrdenPago nvarchar(12) NOT NULL,
						  dtmFechaPago date NOT NULL,
						  strFolioFactura nvarchar(60),
						  strFolioFiscalUUID nvarchar(36),
						  idStrRFCproveedor nvarchar(13),
						  dblSubtotalFacturado double precision,
						  dblIVAfacturado double precision,
						  dblTotalFacturado double precision
						  
						  constraint pkIdIntOrdenPago
						  primary key (idIntOrdenPago),
						  
						  constraint fkIdStrRFCproveedorContratos
						  foreign key (idStrRFCproveedor)
						  references tblProveedores(idStrRFCproveedor),
						  
						  constraint unqStrFolioFiscalUUID
						  unique(strFolioFiscalUUID)
						  );  --ok local y azure


insert into tblOrdenPago( idIntOrdenPago,
						  intEjercicio,
						  strFolioOrdenPago,
						  dtmFechaPago,
						  strFolioFactura,
						  strFolioFiscalUUID,
						  idStrRFCproveedor,
						  dblSubtotalFacturado,
						  dblIVAfacturado,
						  dblTotalFacturado)
values(1,
	   2020,
	   '37',
	   '2020-03-24',
	   'K01192466',
	   'BC53BE62-3DEB-40B3-8C41-2FC7EF2EF63D',
	   'BPU7901018D4',
	   17415.00,
	   0.00,
	   17415.00
	   );  --ok local y azure
	   
select * from tblOrdenPago;

--Creación de la vista de ordenes de pago y proveedor
create view vwOrdenPagoProveedor as

select op.idIntOrdenPago,
	   op.intEjercicio,
	   op.strFolioOrdenPago,
	   op.dtmFechaPago,
	   op.strFolioFactura,
	   op.strFolioFiscalUUID,
	   op.idStrRFCproveedor,
	   op.dblSubtotalFacturado,
	   op.dblIVAfacturado,
	   op.dblTotalFacturado,
	   
	   prov.strRazónSocialProveedor
	   
 from tblOrdenPago op
	
	join tblProveedores prov
	on prov.idStrRFCproveedor = op.idStrRFCproveedor; --ok local y azure
	   

select * from vwOrdenPagoProveedor; --ok local y azure


--Creación de la tabla de partidas de la orden de pago***********************************

use dbAdquisiciones;

create table tblPartidasOrdenPago(idIntPartidaOrdenPago int NOT NULL,
								  idIntOrdenPago int NOT NULL,
								  strDescripcionPartidaFactura nvarchar(240) NOT NULL,
								  dblCantidadFactura double precision NOT NULL,
								  strUnidadFactura nvarchar (60) NOT NULL,
								  strPresentaciónFactura nvarchar (60) NOT NULL,
								  dblPrecioUnitarioFactura double precision NOT NULL,
								  dblImporteFactura double precision NOT NULL,
								  dblTasafactura double precision NOT NULL,
								  dblIVAfactura double precision NOT NULL,
								  dblTotalFacura double precision NOT NULL,
								  idIntPartidaContrato int NOT NULL,
								  idIntPartidaRequisicion int NOT NULL,
								  idIntPartidaEspecifica int NOT NULL,
								  idStrRFCproveedor nvarchar(13) NOT NULL,
								  
								  constraint pkIdIntPartidaOrdenPago
								  primary key(idIntPartidaOrdenPago),
								  
								  constraint fkIdIntOrdenPago
								  foreign key(idIntOrdenPago)
								  references tblOrdenPago(idIntOrdenPago),
								  
								  constraint fkIdIntPartidaContrato
								  foreign key(idIntPartidaContrato)
								  references tblPartidasContrato(idIntPartidaContrato),
								  
								  constraint fkIdIntPartidaRequisicion_op
								  foreign key(idIntPartidaRequisicion)
								  references  tblPartidasRequisicion(idIntPartidaRequisicion),
								  
								  constraint fkidIntPartidaEspecifica_op
								  foreign key(idIntPartidaEspecifica)
								  references tblPartidaEspecifica(idPartidaEspecifica),
								  
								  constraint idStrRFCproveedor_op
								  foreign key(idStrRFCproveedor)
								  references tblProveedores(idStrRFCproveedor)
								  
								  );		--ok local y azure				  
								  
								
insert into tblPartidasOrdenPago(idIntPartidaOrdenPago,
								  idIntOrdenPago,
								  strDescripcionPartidaFactura,
								  dblCantidadFactura,
								  strUnidadFactura,
								  strPresentaciónFactura,
								  dblPrecioUnitarioFactura,
								  dblImporteFactura,
								  dblTasafactura,
								  dblIVAfactura,
								  dblTotalFacura,
								  idIntPartidaContrato,
								  idIntPartidaRequisicion,
								  idIntPartidaEspecifica,
								  idStrRFCproveedor
								  )
values(1,
	   1,
	   'AGUA PURIFICADA EN GARRAFÓN DE 20 LITROS,',
	   10000.00,
	   'GARRAFÓN',
	   '20 LITROS',
	   25.00,
	   250000.00,
	   0.00,
	   0.00,
	   250000.00,
	   1,
	   1,
	   2211,
	   'B___________'
	   );  --ok local y azure

select * from tblPartidasOrdenPago; --ok local y azure

--Creación de la vista de patidas de la orden de pago y tablas referenciadas******

create view vwPartidasOP As
select    po.idIntPartidaOrdenPago,
		  po.idIntOrdenPago,
		  po.strDescripcionPartidaFactura,
		  po.dblCantidadFactura,
		  po.strUnidadFactura,
		  po.strPresentaciónFactura,
		  po.dblPrecioUnitarioFactura,
		  po.dblImporteFactura,
		  po.dblTasafactura,
		  po.dblIVAfactura,
		  po.dblTotalFacura,
		  po.idIntPartidaContrato,
		  c.idIntContrato,
		  po.idIntPartidaRequisicion,
		  po.idIntPartidaEspecifica,
		  pe.partidaEspecifica,
		  po.idStrRFCproveedor,
		  prov.strRazónSocialProveedor
from tblPartidasOrdenPago po
	join tblPartidaEspecifica pe on pe.idPartidaEspecifica = po.idIntPartidaEspecifica
	join tblPartidasContrato pc on pc.idIntPartidaContrato = po.idIntPartidaContrato
	join tblContratos c on c.idIntContrato = pc.idIntContrato
	join tblProveedores prov on prov.idStrRFCproveedor = po.idStrRFCproveedor;
	
select * from vwPartidasOP;  --ok local y azure




--**********************************************************************************
-- SQL Query 10
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Agregar adjudicaciones
-- 25 de junio de 2020
--***********************************************************************************
use dbAdquisiciones;

select * from tblRequisicion;

insert into tblRequisicion( idStrRequisicion,
							intNumeroRequisicion,
							intEjercicio,
							dtmFecha,
							idIntFuncionarioSolicitante,
							idIntFuncionarioVoBo,
							idIntFuncionarioAutoriza,
							idStrUnidadRespSolicitante,
							idStrUniRespVoBo,
							idStrUniRespAutoriza,
							dblSubtotalRequisicion,
							dblIVArequisicion,
							dblTotalRequisicion,
							dtmInicioAbastecimiento,
							dtmFinalAbastecimiento,
							idIntDireccionAbastecimiento,
							strOficioSuficiencia,
							strJustificacionRequisicion,
							strOficioEnvioRequisicion)
							

values('0001/2020',
		1,
		2020,
		'2020-01-01',
		5,
		3,
		2,
		'1.5.2.2',
		'1.5.2',
		'1.5',
		1045342.00,
		167254.72,
		1212596.72,
		'2020-01-01',
		'2020-02-29',
		1,
		'SECTEI/IEMS/DAF/SA/O-100/2020',
		'PAGO DE RENTA EN BASE A LA JUSTIPRECIACIÓN 11/03/19/001',
		'0');  --ok local y azure

select * from vwRequisicion;

--*********************************************************************
select * from tblPartidasRequisicion;

insert into tblPartidasRequisicion(
									idIntPartidaRequisicion,
								    strDescripcion,
								    idStrRequisicion,
								    idIntPartidaPresupuestal,
								    dblCantidadRequerida,
								    strUnidad,
								    strPresentación,
								    dblExistenciaActual,
								    dblCantidadPonderada,
								    dblPrecioUnitario,
								    dblImporte,
								    dblTasa,
								    dblIVA,
								    dblTotal
								  )
values(
2,
'ARRENDAMIENTO DEL INMUEBLE DE OFICINAS CENTRALES DEL 01/01/2020 AL 29/02/2020',
'001/2020',
3221,
2,
'ARRENDAMIENTO',
'MENSUAL',
0,
2,
522671.00,
1045342.00,
0.16,
167254.72,
1212596.72);  --ok local y azure

select * from vwRequisicion;

--*********************************************************************
use dbAdquisiciones;

select * from tblProveedores;

insert into tblProveedores(idStrRFCproveedor,
						   strRazónSocialProveedor, 
						   strCalleProveedor, 
						   strNumeroExtProveedor, 
						   strNumeroIntProveedor, 
						   strColoniaProveedor, 
						   strCPproveedor, 
						   strAlcaldiaMpoProveedor, 
						   strCiudadProveedor, 
						   strTelefonoProveedor, 
						   strCorreoProveedor, 
						   intPersonaFisicaMoral, 
						   strCURPproveeedor, 
						   strIdentPersonaFisica, 
						   strNumActaConstitutiva, 
						   dtmFechaActaConstitutiva, 
						   strNotarioActaConstitutiva, 
						   strNotariaActaConstitutiva, 
						   strFolioMercantil, 
						   strObjetoSocial, 
						   strRepresentantelegal, 
						   strIdentRepresentanteLegal, 
						   strNumPoderNotarial, 
						   dtmFechaPoderNotarial, 
						   strNotarioPoderNotarial, 
						   strNotariaPoderNotarial)
values(
		'P________',
		'P_________________',
		'',
		'', 
		'', 
		'',
		'', 
		'', 
		'', 
		'',
		'', 
		2, 
		'', 
		'', 
		'20,549', 
		'1993-11-23', 
		'CARLOS _________', 
		'11 DE LA CIUDAD DE MÉXICO',
		'032560',
		'',
		'SA____ ________ ',
		'INE __________',
		'20,549',
		'1993-11-23', 
		'CARL______________',
		'11 DE LA CIUDAD DE MÉXICO');  --ok local y azure

select * from tblProveedores p
	where p.idStrRFCproveedor like 'P____________';  --ok local y azure
	
--*********************************************************************
use dbAdquisiciones;

select * from tblContratos;

insert into tblContratos(
						  idIntContrato, 
						  intEjercicioContrato,
						  strNumeroContrato, 
						  dtmFechaContrato,
						  dtmInicioVigenciaContrato, 
						  dtmFinVigenciaContrato,
						  idStrEntidadContratante, 
						  idStrRFCproveedor,
						  idIntFundamentoLegal, 
						  idIntProcedimientoAdq,
						  strFolioProcAdjudicacion, 
						  dtmFechaFallo,
						  intPorcentajePenaConvencional, 
						  intTipoGarantia,
						  idIntGarantia, 
						  idIntFuncionarioFacultado,
						  idIntFuncionarioReviso, 
						  idIntFuncionarioElaboro,
						  idStrUnidadRespFuncFacultado, 
						  idStrUnidadRespFuncReviso,
						  idStrUnidadRespFuncElaboro,
						  strOficioEnvioContrato,
						  intInicialModificatorio
						)
values(
2,
2020,
'SECTEI/IEMS/001/2020',
'2020-01-01',
'2020-01-01',
'2020-02-29',
'36PDIE',
'P__________',
26,
7,
'', 
'2020-01-01',
0.00,
3,
NULL,
2,
3,
4,
'1.5',
'1.5.2',
'1.5.2.1',
0,
0);  --ok local y azure

select * from tblContratos;

select * from vwContratos;  --ok local y azure

--**********************************************************************






--**********************************************************************************
-- SQL Query 11
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Agregar tabla de ejercicio fiscal
-- 28 de diiembre de 2022
--***********************************************************************************
use dbAdquisiciones;

--Crear la tabla de ejercicio fiscales
create table tblEjercicioFiscal(intEjercicioFiscal int not null
								constraint pkIntEjercicioFiscal
								primary key(intEjercicioFiscal));  --ok local y azure

--Añadir los ejercicios fiscales 

insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2015);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2016);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2017);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2018);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2019);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2020);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2021);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2022);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2023);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2024);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2025);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2026);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2027);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2028);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2029);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2030);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2031);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2032);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2033);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2034);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2035);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2036);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2037);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2038);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2039);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2040);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2041);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2042);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2043);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2044);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2045);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2046);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2047);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2048);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2049);
insert into tblEjercicioFiscal(intEjercicioFiscal)
	values(2050);  --ok local y azure


select * from tblEjercicioFiscal;  --ok local y azure

--Agregar relaciones a tabla de ordenes de pago

use dbAdquisiciones;

alter table tblOrdenPago
		add constraint fkIntEjercicioFiscal_tblOrdenPago
		foreign key(intEjercicio)
		references tblEjercicioFiscal(intEjercicioFiscal); --ok local y azure

--Agregar relaciones a la tabla contratos

alter table tblContratos
		add constraint fkIntEjercicioFiscal_tblContratos
		foreign key(intEjercicioContrato)
		references tblEjercicioFiscal(intEjercicioFiscal); --ok local y azure

--Agregar relaciones a la tbla requisiciones

alter table tblRequisicion
		add constraint fkIntEjercicioFiscal_tblRequisicion
		foreign key(intEjercicio)
		references tblEjercicioFiscal(intEjercicioFiscal); --ok local y azure

--Crear la vista de jercicios fiscales


create view vwEjercicioFiscal As
select * from tblEjercicioFiscal;

select * from vwEjercicioFiscal; --ok local y azure




--***********************************************************************************
-- SQL Query 12
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Modificaciones a la tabla de contratos y tablas relacionadas
-- 25 de julio de 2023
--***********************************************************************************

--Crear una vista con todos los campos concatenados de la tblFundamentoLegal
use dbAdquisiciones;

select * from tblFundamentoLegal;

create view vwFundamentoLegalCompleto As

select idIntFundamentoLegal,
		strArticulo,
		strFracción,
		strLey,
		concat(idIntFundamentoLegal, '.- Art. ',
			   strArticulo, ', ',
			   strFracción, ' ',
			   strLey)strFundamentoLegalCompleto
		from tblFundamentoLegal;  --ok local y azure

select * from vwFundamentoLegalCompleto; --ok local y azure

--Adecuaciones a tblProcedimientoAdquisicion
select * from tblProcedimientoAdquisicion; --ok local y azure

alter table tblProcedimientoAdquisicion
drop column intNacionalInternacional; --ok local y azure

alter table tblProcedimientoAdquisicion
alter column strProcedimientoAdq nvarchar(120) null; --ok local y azure

update tblProcedimientoAdquisicion
set strProcedimientoAdq = 'LICITACIÓN PÚBLICA NACIONAL'
where idIntProcedimientoAdq = 1; --ok local y azure

update tblProcedimientoAdquisicion
set strProcedimientoAdq = 'LICITACIÓN PÚBLICA INTERNACIONAL'
where idIntProcedimientoAdq = 2; --ok local y azure

update tblProcedimientoAdquisicion
set strProcedimientoAdq = 'INVITACIÓN RESTRINGIDA A CUANDO MENOS TRES PROVEEDORES NACIONAL'
where idIntProcedimientoAdq = 3; --ok local y azure
			   
update tblProcedimientoAdquisicion
set strProcedimientoAdq = 'INVITACIÓN RESTRINGIDA A CUANDO MENOS TRES PROVEEDORES INTERNACIONAL'
where idIntProcedimientoAdq = 4; --ok local y azure

update tblProcedimientoAdquisicion
set strProcedimientoAdq = 'ADJUDICACIÓN DIRECTA NACIONAL'
where idIntProcedimientoAdq = 5; --ok local y azure

update tblProcedimientoAdquisicion
set strProcedimientoAdq = 'ADJUDICACIÓN DIRECTA INTERNACIONAL'
where idIntProcedimientoAdq = 6; --ok local y azure

update tblProcedimientoAdquisicion
set strProcedimientoAdq = 'ARRENDAMIENTO INMUBLE NACIONAL'
where idIntProcedimientoAdq = 7; --ok local y azure

update tblProcedimientoAdquisicion
set strProcedimientoAdq = 'ARRENDAMIENTO INMUBLE INTERNACIONAL'
where idIntProcedimientoAdq = 8; --ok local y azure

--Crear la vista de la tblProcediientoAdquisicion
create view vwProcedimientoAdqCompleto as
select idIntProcedimientoAdq,
       strProcedimientoAdq,
	   concat(idIntProcedimientoAdq, '-. ',
              strProcedimientoAdq)strProcedimientoAdqCompleto
	from tblProcedimientoAdquisicion;

select * from vwProcedimientoAdqCompleto; --ok local y azure

--Crear la vista para la tabla tblDirectorio

select * from tblDirectorio;

create view vwDirectorio as

select idStrUnidadResponsable, 
       strNombreUnidadResponable,
	   concat(idStrUnidadResponsable, '.-  ',
              strNombreUnidadResponable)strUnidadResponsable
	from tblDirectorio;  --ok local y azure

select * from vwDirectorio;

--Crear vista para la tablaproveedores rfc-proveedor
create view vwRFCproveedor as

select idStrRFCproveedor,
	   strRazónSocialProveedor,
	   concat(idStrRFCproveedor, '.- ',
		      strRazónSocialProveedor)strRfcProveedor
	from tblProveedores;

select * from vwRFCproveedor;  --ok local y azure

--Vista de la garantia de cumplimiento
create view vwFolioGarantia as

select idIntGarantia,
       strFolioGarantia,
	   concat(idIntGarantia, '.- ',
	   strFolioGarantia)strGarantiaFolio
	from tblGarantiaCumplimiento;

select * from vwFolioGarantia; --ok local y azure


--Crear una vista que arroja el último id +1 de tblContratos

create view vwUltimoIdContratoMasUno as
select (max(c.idIntContrato)+1) as intUltimoIdContratoMasUno
		from tblContratos as c; --ok local y azure

select * from tblContratos;

select * from vwUltimoIdContratoMasUno; --ok local y azure

--Crear la vista que arroje el útimo Id + 1 de la tabla de partidas de contratos

select * from tblPartidasContrato;

create view vwUltimoIdMasUnoPdaContratos as
select (max(pc.idIntPartidaContrato)+1) as intUltimoIdPdaContratoMasUno
	from tblPartidasContrato as pc; --ok local y azure

select * from vwUltimoIdMasUnoPdaContratos; --ok local y azure

--Crear la vista de la pda pptal especifica y su concepto

select * from tblPartidaEspecifica;

create view vwPdaPtalConcepto as

select pe.idPartidaEspecifica, pe.partidaEspecifica,
	concat(pe.idPartidaEspecifica, '.-  ',
		   pe.partidaEspecifica)strPdaPptalConcepto
		from tblPartidaEspecifica as pe;

select * from vwPdaPtalConcepto;  --ok local y azure


--Crear la vista que muestre el nombre completo del funcionario
use dbAdquisiciones;

select * from tblFuncionarios;

create view vwNombreCompletoFuncionario as

select idIntFuncionario,
	concat(idIntFuncionario, '.- ',
			strNombresFuncionario,'.- ',
			strApellidoPaternoFuncionario,'.- ',
			strApellidoMaternoFuncionario)strNombreCompleto
		from tblFuncionarios; --ok local y azure

select * from vwNombreCompletoFuncionario;  --ok local y azure

--Fin del Query 12

--***********************************************************************************
-- SQL Query 13
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Creación de tabla de Unidades Responsables
-- 15 de agoosto de 2025
--***********************************************************************************

--Catálogo de claves de las Unidades Responsables del gasto

use dbAdquisiciones;

create table tblUnidadResponsable(idStrUnidadResponsable nvarchar(6) not null,	
								  intClaveAreaGobierno int not null,
								  strAreaGobiernoDesacripcion nvarchar(50) not null,
								  intClaveSector int not null,
								  strClaveSectorDescripcion nvarchar(60) not null,
								  strClaveSubsector	nvarchar(2) not null,
								  strClaveSubsectorDescripcion nvarchar(35) not null,
								  strDescripcionUnidadResponsable nvarchar(124) not null,

								  constraint pkIdStrUnidadResponsable
								  primary key(idStrUnidadResponsable)
								  );  --ok local y azure

--Insertar datos de la Unidades responsables del gasto

insert into tblUnidadResponsable(idStrUnidadResponsable,	
								 intClaveAreaGobierno,
								 strAreaGobiernoDesacripcion,	
								 intClaveSector,
								 strClaveSectorDescripcion,	
								 strClaveSubsector,
								 strClaveSubsectorDescripcion,	
								 strDescripcionUnidadResponsable)
	values('01C001',1,'Poder Ejecutivo',1,'Jefatura de Gobierno','C0','Central','Jefatura de Gobierno'),
          ('01CD03',1,'Poder Ejecutivo',1,'Jefatura de Gobierno','CD','Alcaldías','Centro de Comando, Control, Cómputo, Comunicaciones y Contacto Ciudadano'),
          ('01CD06',1,'Poder Ejecutivo',1,'Jefatura de Gobierno','CD','Alcaldías','Agencia Digital de Innovación Pública de la CDMX'),
          ('01P0ES',5,'Otras Entidades Paraestatales y Organismos',1,'Jefatura de Gobierno','P0','Paraestatal Fondo','Fondo para el Desarrollo Económico y Social'),
          ('02C001',1,'Poder Ejecutivo',2,'Gobierno','C0','Central','Secretaría de Gobierno'),
          ('02CD01',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Álvaro Obregón'),
          ('02CD02',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Azcapotzalco'),
          ('02CD03',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Benito Juárez'),
          ('02CD04',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Coyoacán'),
          ('02CD05',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Cuajimalpa de Morelos'),
          ('02CD06',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Cuauhtémoc'),
          ('02CD07',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Gustavo A. Madero'),
          ('02CD08',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Iztacalco'),
          ('02CD09',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Iztapalapa'),
          ('02CD10',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía la Magdalena Contreras'),
          ('02CD11',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Miguel Hidalgo'),
          ('02CD12',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Milpa Alta'),
          ('02CD13',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Tláhuac'),
          ('02CD14',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Tlalpan'),
          ('02CD15',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Venustiano Carranza'),
          ('02CD16',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Alcaldía Xochimilco'),
          ('02CDBP',1,'Poder Ejecutivo',2,'Gobierno','CD','Alcaldías','Comisión de Búsqueda de Personas de la Ciudad de México'),
          ('02OD04',1,'Poder Ejecutivo',2,'Gobierno','OD','Central desconcentrados','Autoridad del Centro Histórico de la CDMX'),
          ('02OD06',1,'Poder Ejecutivo',2,'Gobierno','OD','Central desconcentrados','Instancia Ejecutora Del Sistema Integral de Derechos Humanos'),
          ('02PDAV',5,'Otras Entidades Paraestatales y Organismos',2,'Gobierno','PD','Paraestatal','Comisión Ejecutiva de Atención a Víctimas de la Ciudad de México'),
          ('02PDDP',5,'Otras Entidades Paraestatales y Organismos',2,'Gobierno','PD','Paraestatal','Mecanismo de Protección Integral de Personas Defensoras de Derechos Humanos y Periodistas'),
          ('03C001',1,'Poder Ejecutivo',3,'Desarrollo Urbano y Vivienda','C0','Central','Secretaría de Desarrollo Urbano y Vivienda'),
          ('03PDIV',5,'Otras Entidades Paraestatales y Organismos',3,'Desarrollo Urbano y Vivienda','PD','Paraestatal','Instituto de Vivienda'),
          ('04C001',1,'Poder Ejecutivo',4,'Desarrollo Económico','C0','Central','Secretaría de Desarrollo Económico'),
          ('04P0DE',5,'Otras Entidades Paraestatales y Organismos',4,'Desarrollo Económico','P0','Paraestatal Fondo','Fondo de Desarrollo Económico del Distrito Federal'),
          ('04P0DS',5,'Otras Entidades Paraestatales y Organismos',4,'Desarrollo Económico','P0','Paraestatal Fondo','Fondo para el Desarrollo Social'),
          ('05C001',1,'Poder Ejecutivo',5,'Turismo','C0','Central','Secretaría de Turismo'),
          ('05P0PT',5,'Otras Entidades Paraestatales y Organismos',5,'Turismo','P0','Paraestatal Fondo','Fondo Mixto de Promoción Turística'),
          ('06C001',1,'Poder Ejecutivo',6,'Medio Ambiente','C0','Central','Secretaría del Medio Ambiente'),
          ('06CD03',1,'Poder Ejecutivo',6,'Medio Ambiente','CD','Alcaldías','Sistema de Aguas'),
          ('06CD05',1,'Poder Ejecutivo',6,'Medio Ambiente','CD','Alcaldías','Agencia de Atención Animal'),
          ('06P0FA',5,'Otras Entidades Paraestatales y Organismos',6,'Medio Ambiente','P0','Paraestatal Fondo','Fondo Ambiental Público'),
          ('06PDPA',5,'Otras Entidades Paraestatales y Organismos',6,'Medio Ambiente','PD','Paraestatal','Procuraduría Ambiental y del Ordenamiento Territorial'),
          ('07C001',1,'Poder Ejecutivo',7,'Obras y Servicios','C0','Central','Secretaría de Obras y Servicios'),
          ('07CD01',1,'Poder Ejecutivo',7,'Obras y Servicios','CD','Alcaldías','Planta Productora de Mezclas Asfálticas'),
          ('07PDIF',5,'Otras Entidades Paraestatales y Organismos',7,'Obras y Servicios','PD','Paraestatal','Instituto Local de la Infraestructura Física Educativa'),
          ('07PDIS',5,'Otras Entidades Paraestatales y Organismos',7,'Obras y Servicios','PD','Paraestatal','Instituto para la Seguridad de Las Construcciones'),
          ('08C001',1,'Poder Ejecutivo',8,'Desarrollo Social','C0','Central','Secretaría de Inclusión y Bienestar Social'),
          ('08PDCP',5,'Otras Entidades Paraestatales y Organismos',8,'Desarrollo Social','PD','Paraestatal','Consejo Para Prevenir y Eliminar la Discriminación'),
          ('08PDDF',5,'Otras Entidades Paraestatales y Organismos',8,'Desarrollo Social','PD','Paraestatal','Sistema para el Desarrollo Integral de la Familia'),
          ('08PDII',5,'Otras Entidades Paraestatales y Organismos',8,'Desarrollo Social','PD','Paraestatal','Instituto de las Personas con Discapacidad'),
          ('08PDIJ',5,'Otras Entidades Paraestatales y Organismos',8,'Desarrollo Social','PD','Paraestatal','Instituto de la Juventud'),
          ('08PDPS',5,'Otras Entidades Paraestatales y Organismos',8,'Desarrollo Social','PD','Paraestatal','Procuraduría Social'),
          ('09C001',1,'Poder Ejecutivo',9,'Finanzas','C0','Central','Secretaría de Administración y Finanzas'),
          ('09PDLR',5,'Otras Entidades Paraestatales y Organismos',9,'Finanzas','PD','Paraestatal','Caja de previsión para trabajadores a lista de raya'),
          ('09PDPA',5,'Otras Entidades Paraestatales y Organismos',9,'Finanzas','PD','Paraestatal','Caja de previsión de la policía auxiliar'),
          ('09PDPP',5,'Otras Entidades Paraestatales y Organismos',9,'Finanzas','PD','Paraestatal','Caja de previsión de la policía preventiva'),
          ('09PECM',5,'Otras Entidades Paraestatales y Organismos',9,'Finanzas','PE','Paraestatal Empresas','Corporación Mexicana de Impresión, S.A. de C.V.'),
          ('09PESM',5,'Otras Entidades Paraestatales y Organismos',9,'Finanzas','PE','Paraestatal Empresas','Servicios metropolitanos, s.a. de C.V.'),
          ('09PFCH',5,'Otras Entidades Paraestatales y Organismos',9,'Finanzas','PF','Paraestatal Fideicomisos','Fideicomiso Centro Histórico'),
          ('09PFRC',5,'Otras Entidades Paraestatales y Organismos',9,'Finanzas','PF','Paraestatal Fideicomisos','Fideicomiso de Recuperación Crediticia'),
          ('10C001',1,'Poder Ejecutivo',10,'Transportes y Vialidad','C0','Central','Secretaría de Movilidad'),
          ('10P0AC',5,'Otras Entidades Paraestatales y Organismos',10,'Transportes y Vialidad','P0','Paraestatal Fondo','Fondo Público de Atención al Ciclista y al Peatón'),
          ('10P0TP',5,'Otras Entidades Paraestatales y Organismos',10,'Transportes y Vialidad','P0','Paraestatal Fondo','Fideicomiso para el Fondo de Promoción para el Financiamiento del Transporte Público'),
          ('10PDMB',5,'Otras Entidades Paraestatales y Organismos',10,'Transportes y Vialidad','PD','Paraestatal','Metrobús'),
          ('10PDME',5,'Otras Entidades Paraestatales y Organismos',10,'Transportes y Vialidad','PD','Paraestatal','Sistema de Transporte Colectivo'),
          ('10PDOR',5,'Otras Entidades Paraestatales y Organismos',10,'Transportes y Vialidad','PD','Paraestatal','Organismo Regulador de Transporte'),
          ('10PDRT',5,'Otras Entidades Paraestatales y Organismos',10,'Transportes y Vialidad','PD','Paraestatal','Red de Transporte de Pasajeros (RTP)'),
          ('10PDTE',5,'Otras Entidades Paraestatales y Organismos',10,'Transportes y Vialidad','PD','Paraestatal','Servicio de Transportes Eléctricos'),
          ('11C001',1,'Poder Ejecutivo',11,'Seguridad Ciudadana','C0','Central','Secretaría de Seguridad Ciudadana'),
          ('11CD01',1,'Poder Ejecutivo',11,'Seguridad Ciudadana','CD','Alcaldías','Universidad de la Policía'),
          ('11CD02',1,'Poder Ejecutivo',11,'Seguridad Ciudadana','CD','Alcaldías','Policía Auxiliar del Distrito Federal'),
          ('11CD03',1,'Poder Ejecutivo',11,'Seguridad Ciudadana','CD','Alcaldías','Policía Bancaria E Industrial'),
          ('13C001',1,'Poder Ejecutivo',13,'Contraloría General','C0','Central','Secretaría de la Contraloría General'),
          ('13PDEA',5,'Otras Entidades Paraestatales y Organismos',13,'Contraloría General','PD','Paraestatal','Escuela de Administración Pública'),
          ('13PDVA',5,'Otras Entidades Paraestatales y Organismos',13,'Contraloría General','PD','Paraestatal','Instituto de Verificación Administrativa'),
          ('15C000',1,'Poder Ejecutivo',15,'Subsidios','C0','Central','Fondo para las Acciones de Reconstrucción y para Otras Previsiones'),
          ('15C006',1,'Poder Ejecutivo',15,'Subsidios','C0','Central','Tesorería'),
          ('16C000',1,'Poder Ejecutivo',16,'Deuda Pública','C0','Central','Deuda Pública'),
          ('17L000',2,'Poder Legislativo',17,'Poder Legislativo','L0','Autónomos Asamblea/Congreso','Congreso de la Ciudad de México'),
          ('18L000',2,'Poder Legislativo',17,'Poder Legislativo','L0','Autónomos Asamblea/Congreso','Auditoría Superior'),
          ('19J000',3,'Poder Judicial',19,'Poder Judicial','J0','Autónomos Judicial','Tribunal Superior de Justicia'),
          ('20J000',3,'Poder Judicial',19,'Poder Judicial','J0','Autónomos Judicial','Consejo de la Judicatura'),
          ('21A000',4,'Órganos Autónomos',21,'Órganos Autónomos','A0','Órganos Autónomos','Tribunal de Justicia Administrativa'),
          ('22A000',4,'Órganos Autónomos',21,'Órganos Autónomos','A0','Órganos Autónomos','Junta Local de Conciliación y Arbitraje'),
          ('23A000',4,'Órganos Autónomos',21,'Órganos Autónomos','A0','Órganos Autónomos','Comisión de Derechos Humanos'),
          ('24A000',4,'Órganos Autónomos',21,'Órganos Autónomos','A0','Órganos Autónomos','Instituto Electoral'),
          ('25C001',1,'Poder Ejecutivo',25,'Consejería Jurídica','C0','Central','Consejería Jurídica y de Servicios Legales'),
          ('26C001',1,'Poder Ejecutivo',26,'Salud','C0','Central','Secretaría de Salud'),
          ('26CD01',1,'Poder Ejecutivo',26,'Salud','CD','Alcaldías','Agencia de Protección Sanitaria'),
          ('26PDIA',5,'Otras Entidades Paraestatales y Organismos',26,'Salud','PD','Paraestatal','Instituto para la Atención y Prevención de las Adicciones'),
          ('26PDSP',5,'Otras Entidades Paraestatales y Organismos',26,'Salud','PD','Paraestatal','Servicios de Salud Pública'),
          ('27A000',4,'Órganos Autónomos',21,'Órganos Autónomos','A0','Órganos Autónomos','Tribunal Electoral'),
          ('29A000',4,'Órganos Autónomos',21,'Órganos Autónomos','A0','Órganos Autónomos','Universidad Autónoma de la Ciudad de México'),
          ('31C000',1,'Poder Ejecutivo',31,'Cultura','C0','Central','Secretaría de Cultura'),
          ('31PDMP',4,'Órganos Autónomos',31,'Cultura','PD','Paraestatal','Servicio de Medios Públicos de la Ciudad de México'),
          ('31PFMA',5,'Otras Entidades Paraestatales y Organismos',31,'Cultura','PF','Paraestatal Fideicomisos','Fideicomiso Museo de Arte Popular Mexicano'),
          ('31PFME',5,'Otras Entidades Paraestatales y Organismos',31,'Cultura','PF','Paraestatal Fideicomisos','Fideicomiso Museo Del Estanquillo'),
          ('31PFPC',5,'Otras Entidades Paraestatales y Organismos',31,'Cultura','PF','Paraestatal Fideicomisos','Fideicomiso de Promoción y Desarrollo del Cine Mexicano'),
          ('32A000',4,'Órganos Autónomos',21,'Órganos Autónomos','A0','Órganos Autónomos','Instituto de Transparencia, Acceso a la Información Pública, Protección de Datos Personales y Rendición de Cuentas'),
          ('33C001',1,'Poder Ejecutivo',33,'Trabajo y Fomento Al Empleo','C0','Central','Secretaría de Trabajo y Fomento al Empleo'),
          ('33PDCL',1,'Poder Ejecutivo',33,'Trabajo y Fomento Al Empleo','PD','Paraestatal','Centro de Conciliación Laboral de la Ciudad de México'),
          ('33PDIT',5,'Otras Entidades Paraestatales y Organismos',33,'Trabajo y Fomento Al Empleo','PD','Paraestatal','Instituto de Capacitación para el Trabajo'),
          ('34C001',1,'Poder Ejecutivo',34,'Protección Civil','C0','Central','Secretaría de Gestión Integral de Riesgos y Protección Civil'),
          ('34PDHB',5,'Otras Entidades Paraestatales y Organismos',34,'Protección Civil','PD','Paraestatal','Heroico Cuerpo de Bomberos'),
          ('35C001',1,'Poder Ejecutivo',35,'Desarrollo Rural y Equidad Para Las Comunidades','C0','Central','Secretaría de Pueblos y Barrios Originarios y Comunidades Indígenas Residentes'),
          ('36C001',1,'Poder Ejecutivo',36,'Educación','C0','Central','Secretaría de Educación, Ciencia, Tecnología e Innovación'),
          ('36CD02',1,'Poder Ejecutivo',36,'Educación','CD','Alcaldías','Subsistema de Educación Comunitaria PILARES'),
          ('36PDID',5,'Otras Entidades Paraestatales y Organismos',36,'Educación','PD','Paraestatal','Instituto del Deporte'),
          ('36PDIE',5,'Otras Entidades Paraestatales y Organismos',36,'Educación','PD','Paraestatal','Instituto de Educación Media Superior'),
          ('36PDRC',5,'Otras Entidades Paraestatales y Organismos',36,'Educación','PD','Paraestatal','Universidad "Rosario Castellanos"'),
          ('36PDUS',5,'Otras Entidades Paraestatales y Organismos',36,'Educación','PD','Paraestatal','Universidad de la Salud'),
          ('36PFEG',5,'Otras Entidades Paraestatales y Organismos',36,'Educación','PF','Paraestatal Fideicomisos','Fideicomiso Bienestar Educativo'),
          ('38C001',1,'Poder Ejecutivo',38,'Mujeres','C0','Central','Secretaría de las Mujeres'),
          ('40A000',4,'Órganos Autónomos',40,'Fiscalía General de Justicia','A0','Órganos Autónomos','Fiscalía General de Justicia'),
          ('41PDIP',5,'Otras Entidades Paraestatales y Organismos',41,'Instituto de Planeación Democrática y Prospectiva','PD','Paraestatal','Instituto de Planeación Democrática y Prospectiva'),
          ('42A000',4,'Órganos Autónomos',42,'Consejo de Evaluación de la Ciudad de México','A0','Órganos Autónomos','Consejo de Evaluación de la Ciudad de México');
--ok local y azure

--Creacion d ela vista de Unidades Responsables del Gasto

create view vwTblUnidadResponsable as

select idStrUnidadResponsable,	
       intClaveAreaGobierno,
       strAreaGobiernoDesacripcion,	
       intClaveSector,
       strClaveSectorDescripcion,	
       strClaveSubsector,
       strClaveSubsectorDescripcion,	
       strDescripcionUnidadResponsable
	from tblUnidadResponsable;

select * from vwTblUnidadResponsable;  --ok local y azure

--Busca al Instituto de Educación Media Superior
select *
	from vwTblUnidadResponsable
		where idStrUnidadResponsable like '36PDIE'; --ok local y azure


							
--Fin del Query 13--------------------------------------------------------------------------------------------------

--***********************************************************************************
-- SQL Query 14
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Creación de tablas para la Estrucutura de Valor Público
-- 28 de agosto de 2025
--***********************************************************************************

use dbAdquisiciones;

create table tblValorPublico(idEstructuraValorPublico int not null,
							intEje int not null,
							strEjeDescripcion nvarchar(60) not null,
							intSubEje int not null,
							strSubEjeDescripcion nvarchar(75) not null,
							intSubSubEje int not null,
							strSubSubEjeDescripcion nvarchar(150) not null,

							constraint pkIdEstructuraValorPublico
							primary key(idEstructuraValorPublico)
							);  --ok local y azure

--Insertar los ejes, subejes y subsubejes del Plan de Desarrollo de la CDMX

 insert into tblValorPublico(idEstructuraValorPublico,
							intEje,
							strEjeDescripcion,
							intSubEje,
							strSubEjeDescripcion,
							intSubSubEje,
							strSubSubEjeDescripcion)
					  values(111,1,'Igualdad y Derechos',11,'Derecho a la educación',111,'Ampliar y fortalecer la educación inicial'),
                            (112,1,'Igualdad y Derechos',11,'Derecho a la educación',112,'Apoyar a la Secretaría de Educación Pública federal en la mejora integral de la educación básica en la Ciudad'),
                            (113,1,'Igualdad y Derechos',11,'Derecho a la educación',113,'Fortalecer y ampliar la cobertura de la educación media superior en las demarcaciones periféricas'),
                            (114,1,'Igualdad y Derechos',11,'Derecho a la educación',114,'Fortalecer y ampliar la cobertura de la educación superior pública'),
                            (115,1,'Igualdad y Derechos',11,'Derecho a la educación',115,'PILARES: puntos de Innovación, Libertades, Artes, Educación y Saberes'),
                            (121,1,'Igualdad y Derechos',12,'Derecho a la salud',121,'Salud universal'),
                            (122,1,'Igualdad y Derechos',12,'Derecho a la salud',122,'Integración hacia un sistema único de atención a la salud'),
                            (123,1,'Igualdad y Derechos',12,'Derecho a la salud',123,'Ampliación de servicios y atención de emergencias'),
                            (124,1,'Igualdad y Derechos',12,'Derecho a la salud',124,'Participación para una vida saludable'),
                            (125,1,'Igualdad y Derechos',12,'Derecho a la salud',125,'Profesionalización del servicio médico'),
                            (131,1,'Igualdad y Derechos',13,'Derecho a la cultura física y la práctica del deporte',131,'Promoción del deporte comunitario '),
                            (132,1,'Igualdad y Derechos',13,'Derecho a la cultura física y la práctica del deporte',132,'Fortalecimiento de infraestructura deportiva'),
                            (133,1,'Igualdad y Derechos',13,'Derecho a la cultura física y la práctica del deporte',133,'Condiciones óptimas para deportistas de alto rendimiento'),
                            (141,1,'Igualdad y Derechos',14,'Derecho a la vivienda',141,'Reconstrucción y rehabilitación de viviendas dañadas por el sismo de 2017'),
                            (142,1,'Igualdad y Derechos',14,'Derecho a la vivienda',142,'Programa de vivienda social'),
                            (143,1,'Igualdad y Derechos',14,'Derecho a la vivienda',143,'Apoyo a unidades habitacionales'),
                            (150,1,'Igualdad y Derechos',15,'Derechos de las mujeres',150,'Derechos de las mujeres'),
                            (160,1,'Igualdad y Derechos',16,'Derecho a la igualdad e inclusión',160,'Derecho a la igualdad e inclusión'),
                            (161,1,'Igualdad y Derechos',16,'Derecho a la igualdad e inclusión',161,'Niñas, Niños y Adolescentes'),
                            (162,1,'Igualdad y Derechos',16,'Derecho a la igualdad e inclusión',162,'Jóvenes'),
                            (163,1,'Igualdad y Derechos',16,'Derecho a la igualdad e inclusión',163,'Personas adultas mayores'),
                            (164,1,'Igualdad y Derechos',16,'Derecho a la igualdad e inclusión',164,'Personas con discapacidad'),
                            (165,1,'Igualdad y Derechos',16,'Derecho a la igualdad e inclusión',165,'Personas LGBTTIQA'),
                            (166,1,'Igualdad y Derechos',16,'Derecho a la igualdad e inclusión',166,'Personas en situación de calle'),
                            (167,1,'Igualdad y Derechos',16,'Derecho a la igualdad e inclusión',167,'Personas migrantes'),
                            (168,1,'Igualdad y Derechos',16,'Derecho a la igualdad e inclusión',168,'Víctimas'),
                            (170,1,'Igualdad y Derechos',17,'Pueblos originarios y poblaciones indígenas residentes',170,'Pueblos Originarios y Poblaciones Indígenas Residentes'),
                            (211,2,'Ciudad Sustentable',21,'Desarrollo económico sustentable e incluyente y generación de empleo',211,'Apoyo a la industria innovadora, sustentable y la economía circular'),
                            (212,2,'Ciudad Sustentable',21,'Desarrollo económico sustentable e incluyente y generación de empleo',212,'Apoyo a la micro y pequeña empresa'),
                            (213,2,'Ciudad Sustentable',21,'Desarrollo económico sustentable e incluyente y generación de empleo',213,'Fortalecer la economía social y el emprendimiento'),
                            (214,2,'Ciudad Sustentable',21,'Desarrollo económico sustentable e incluyente y generación de empleo',214,'Mejorar los canales de abasto, comercio y distribución'),
                            (215,2,'Ciudad Sustentable',21,'Desarrollo económico sustentable e incluyente y generación de empleo',215,'Fomento al turismo'),
                            (216,2,'Ciudad Sustentable',21,'Desarrollo económico sustentable e incluyente y generación de empleo',216,'Mejorar la protección social para el desempleo'),
                            (217,2,'Ciudad Sustentable',21,'Desarrollo económico sustentable e incluyente y generación de empleo',217,'Derechos humanos y empleo'),
                            (221,2,'Ciudad Sustentable',22,'Desarrollo urbano sustentable e incluyente',221,'Ordenamiento de desarrollo urbano'),
                            (222,2,'Ciudad Sustentable',22,'Desarrollo urbano sustentable e incluyente',222,'Ampliación de parques, espacios públicos y mejora de servicios urbanos'),
                            (223,2,'Ciudad Sustentable',22,'Desarrollo urbano sustentable e incluyente',223,'Atención de asentamientos humanos irregulares '),
                            (224,2,'Ciudad Sustentable',22,'Desarrollo urbano sustentable e incluyente',224,'Regularización de la propiedad en colonias ubicadas en el suelo urbano'),
                            (231,2,'Ciudad Sustentable',23,'Medio ambiente y recursos naturales',231,'Calidad del aire'),
                            (232,2,'Ciudad Sustentable',23,'Medio ambiente y recursos naturales',232,'Garantizar el derecho al agua y disminuir la sobreexplotación del acuífero. Mejora integral del drenaje y saneamiento '),
                            (233,2,'Ciudad Sustentable',23,'Medio ambiente y recursos naturales',233,'Programa Integral de Residuos Sólidos'),
                            (234,2,'Ciudad Sustentable',23,'Medio ambiente y recursos naturales',234,'Regenerar las condiciones ecológicas de la ciudad: Áreas de Valor Ambiental, Áreas Naturales Protegidas y Suelo de Conservación.'),
                            (311,3,'Más y Mejor Movilidad',31,'Integrar',311,'Integración del sistema de transporte público'),
                            (312,3,'Más y Mejor Movilidad',31,'Integrar',312,'Expansión de la cobertura de redes de transporte masivo'),
                            (313,3,'Más y Mejor Movilidad',31,'Integrar',313,'Reforma integral del transporte concesionado'),
                            (314,3,'Más y Mejor Movilidad',31,'Integrar',314,'Integración del uso de la bicicleta al Sistema de Movilidad'),
                            (321,3,'Más y Mejor Movilidad',32,'Mejorar',321,'Rescate y mejora del transporte público'),
                            (322,3,'Más y Mejor Movilidad',32,'Mejorar',322,'Gestión del tránsito y estacionamiento'),
                            (323,3,'Más y Mejor Movilidad',32,'Mejorar',323,'Regulación de los servicios privados de movilidad'),
                            (324,3,'Más y Mejor Movilidad',32,'Mejorar',324,'Impulso a la innovación y mejora tecnológica'),
                            (325,3,'Más y Mejor Movilidad',32,'Mejorar',325,'Transporte de carga'),
                            (326,3,'Más y Mejor Movilidad',32,'Mejorar',326,'Mejora en la atención ciudadana'),
                            (331,3,'Más y Mejor Movilidad',33,'Proteger',331,'Infraestructura segura y con accesibilidad universal para caminar y moverse en bicicleta'),
                            (332,3,'Más y Mejor Movilidad',33,'Proteger',332,'Política de seguridad vial orientada al cambio de conducta'),
                            (410,4,'Ciudad de México, capital cultural de America Latina',41,'Cultura Comunitaria',410,'Cultura comunitaria'),
                            (420,4,'Ciudad de México, capital cultural de America Latina',42,'Memoria y Patrimonio Cultural comunitario',420,'Memoria y patrimonio cultural comunitario'),
                            (430,4,'Ciudad de México, capital cultural de America Latina',43,'Educación y Formación Artística y Cultural',430,'Educación y formación artística y cultural'),
                            (440,4,'Ciudad de México, capital cultural de America Latina',44,'Festivales y Fiestas',440,'Festivales y fiestas'),
                            (450,4,'Ciudad de México, capital cultural de America Latina',45,'Promoción y Difusión de los Derechos Culturales',450,'Promoción y difusión de los Derechos Culturales'),
                            (460,4,'Ciudad de México, capital cultural de America Latina',46,'Pueblos Originarios',460,'Pueblos originarios'),
                            (470,4,'Ciudad de México, capital cultural de America Latina',47,'Vinculación Interinstitucional y Cooperación Cultural',470,'Vinculación interinstitucional y cooperación cultural'),
                            (511,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',511,'Actualización de la normatividad en materia de Seguridad Ciudadana y del Gabinete de Seguridad, Justicia y Gobierno'),
                            (512,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',512,'Fortalecimiento del Mando Único'),
                            (513,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',513,'Coordinación con el Gobierno Federal'),
                            (514,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',514,'Coordinación con Gabinete de Seguridad, Justicia y Gobierno'),
                            (515,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',515,'Erradicar la corrupción, fortalecer la transparencia y la rendición de cuentas'),
                            (516,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',516,'Fortalecimiento del trabajo de planeación e inteligencia'),
                            (517,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',517,'Operación policial basada en cuadrantes, controles de confianza y su evaluación permanente '),
                            (518,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',518,'Estrategia de seguridad para el transporte público'),
                            (519,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',519,'Formación, capacitación y carrera policial'),
                            (5110,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',5110,'Mejoramiento de las condiciones laborales, apoyo e incentivos a la policía de la Ciudad de México'),
                            (5111,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',5111,'Protección de los derechos humanos de la ciudadanía y protocolos de actuación policial'),
                            (5112,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',5112,'Fortalecimiento de la prevención '),
                            (5113,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',5113,'Estrategia Alto al Fuego en colonias, barrios y pueblos con mayor índice delictivo'),
                            (5114,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',5114,'Policía de proximidad y cercanía con la ciudadanía'),
                            (5115,5,'Cero Agresión y Más Seguridad',51,'Seguridad Ciudadana',5115,'Coordinación con el Consejo Ciudadano de Seguridad y Justicia'),
                            (521,5,'Cero Agresión y Más Seguridad',52,'Fortalecimiento de la procuración de justicia',521,'Erradicar prácticas de corrupción '),
                            (522,5,'Cero Agresión y Más Seguridad',52,'Fortalecimiento de la procuración de justicia',522,'Atención específica por tipo de delito'),
                            (523,5,'Cero Agresión y Más Seguridad',52,'Fortalecimiento de la procuración de justicia',523,'Enfoque de atención a víctimas'),
                            (524,5,'Cero Agresión y Más Seguridad',52,'Fortalecimiento de la procuración de justicia',524,'Profesionalización de servidores públicos'),
                            (525,5,'Cero Agresión y Más Seguridad',52,'Fortalecimiento de la procuración de justicia',525,'Cultura de denuncia'),
                            (526,5,'Cero Agresión y Más Seguridad',52,'Fortalecimiento de la procuración de justicia',526,'Rendición de cuentas y transparencia'),
                            (527,5,'Cero Agresión y Más Seguridad',52,'Fortalecimiento de la procuración de justicia',527,'Transición a Fiscalía'),
                            (531,5,'Cero Agresión y Más Seguridad',53,'Protección civil ',531,'Sistema de Gestión Integral de Riesgos'),
                            (532,5,'Cero Agresión y Más Seguridad',53,'Protección civil ',532,'Conocimiento del riesgo en la toma de decisiones '),
                            (533,5,'Cero Agresión y Más Seguridad',53,'Protección civil ',533,'Evitar nuevos riesgos'),
                            (534,5,'Cero Agresión y Más Seguridad',53,'Protección civil ',534,'Respuesta eficaz'),
                            (611,6,'Ciencia, Innovación y Transparencia',61,'Tecnología',611,'Gestión de capas de información'),
                            (612,6,'Ciencia, Innovación y Transparencia',61,'Tecnología',612,'Interoperabilidad y conectividad'),
                            (613,6,'Ciencia, Innovación y Transparencia',61,'Tecnología',613,'Reducción de costos de transacción'),
                            (614,6,'Ciencia, Innovación y Transparencia',61,'Tecnología',614,'Política de conectividad'),
                            (615,6,'Ciencia, Innovación y Transparencia',61,'Tecnología',615,'Gobernanza tecnológica'),
                            (616,6,'Ciencia, Innovación y Transparencia',61,'Tecnología',616,'Renovación tecnológica'),
                            (621,6,'Ciencia, Innovación y Transparencia',62,'Ciencia y divulgación',621,'Investigación, tecnología e innovación para satisfacer demandas de la Ciudad'),
                            (622,6,'Ciencia, Innovación y Transparencia',62,'Ciencia y divulgación',622,'Formación'),
                            (623,6,'Ciencia, Innovación y Transparencia',62,'Ciencia y divulgación',623,'Divulgación y vinculación científica'),
                            (624,6,'Ciencia, Innovación y Transparencia',62,'Ciencia y divulgación',624,'Promover condiciones óptimas para el desarrollo e innovación tecnológicos'),
                            (631,6,'Ciencia, Innovación y Transparencia',63,'Gobierno Abierto',631,'Democracia participativa'),
                            (632,6,'Ciencia, Innovación y Transparencia',63,'Gobierno Abierto',632,'Controles al ejercicio del Gobierno'),
                            (641,6,'Ciencia, Innovación y Transparencia',64,'Atención Ciudadana ',641,'Modelo de Atención Ciudadana'),
                            (642,6,'Ciencia, Innovación y Transparencia',64,'Atención Ciudadana ',642,'Conexión y acercamiento ciudadano'),
                            (651,6,'Ciencia, Innovación y Transparencia',65,'Seguridad, protección civil y coordinación interinstitucional',651,'Alerta inmediata'),
                            (652,6,'Ciencia, Innovación y Transparencia',65,'Seguridad, protección civil y coordinación interinstitucional',652,'Profesionalización de los servicios de atención de emergencia vía telefónica'),
                            (653,6,'Ciencia, Innovación y Transparencia',65,'Seguridad, protección civil y coordinación interinstitucional',653,'Promover la seguridad ciudadana en la central de abasto'),
                            (654,6,'Ciencia, Innovación y Transparencia',65,'Seguridad, protección civil y coordinación interinstitucional',654,'Mejorar la atención prehospitalaria');
	--ok local y azure
--Crear la vista de la tabla de la estructura del valor público

create view vwTblValorPublico as

select idEstructuraValorPublico,
		intEje,
		strEjeDescripcion,
		intSubEje,
		strSubEjeDescripcion,
		intSubSubEje,
		strSubSubEjeDescripcion
			from tblValorPublico;

select * from vwTblValorPublico;  --ok local y azure




--***********************************************************************************
-- SQL Query 15
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Creación de tablas para la clasificación funcional del gasto (Fin, función y subfunción)
-- 22 de agosto de 2025
--***********************************************************************************

use dbAdquisiciones;

create table tblClasificacionFuncionalGasto( idClasificacionFuncionalGasto int not null,
											 intFinalidad int not null,
											 strFinalidadDescripcion nvarchar(50) not null,
											 intFuncion int not null,
											 intClaveFuncion int not null,
											 strFuncionDescripcion nvarchar(100) not null,
											 intSubfuncion int not null,
											 strSubFuncionDescripcion nvarchar(75),

											 constraint pkIdClasificacionFuncionalGasto
											 primary key(idClasificacionFuncionalGasto)
											 );  --ok local y azure

--Insertar las claves de la clasificación funcional del gasto

insert into tblClasificacionFuncionalGasto(idClasificacionFuncionalGasto,
										   intFinalidad,
										   strFinalidadDescripcion,
										   intFuncion,
										   intClaveFuncion,
										   strFuncionDescripcion,
										   intSubfuncion,
										   strSubFuncionDescripcion)
	  values(111,1,'Gobierno',1,101,'Legislación',1,'Legislación'),
			(112,1,'Gobierno',1,101,'Legislación',2,'Fiscalización'),
			(121,1,'Gobierno',2,102,'Justicia',1,'Impartición de justicia'),
			(122,1,'Gobierno',2,102,'Justicia',2,'Procuración de justicia'),
			(123,1,'Gobierno',2,102,'Justicia',3,'Reclusión y readaptación social'),
			(124,1,'Gobierno',2,102,'Justicia',4,'Derechos humanos'),
			(131,1,'Gobierno',3,103,'Coordinación de la política de gobierno',1,'Gubernatura'),
			(132,1,'Gobierno',3,103,'Coordinación de la política de gobierno',2,'Política interior'),
			(133,1,'Gobierno',3,103,'Coordinación de la política de gobierno',3,'Preservación y cuidado del patrimonio público'),
			(134,1,'Gobierno',3,103,'Coordinación de la política de gobierno',4,'Función pública'),
			(135,1,'Gobierno',3,103,'Coordinación de la política de gobierno',5,'Asuntos jurídicos'),
			(136,1,'Gobierno',3,103,'Coordinación de la política de gobierno',6,'Organización de procesos electorales'),
			(137,1,'Gobierno',3,103,'Coordinación de la política de gobierno',7,'Población'),
			(138,1,'Gobierno',3,103,'Coordinación de la política de gobierno',8,'Territorio'),
			(139,1,'Gobierno',3,103,'Coordinación de la política de gobierno',9,'Otros'),
			(141,1,'Gobierno',4,104,'Relaciones exteriores',1,'Relaciones exteriores'),
			(151,1,'Gobierno',5,105,'Asuntos financieros y hacendarios',1,'Asuntos financieros'),
			(152,1,'Gobierno',5,105,'Asuntos financieros y hacendarios',2,'Asuntos hacendarios'),
			(161,1,'Gobierno',6,106,'Seguridad nacional',1,'Defensa'),
			(162,1,'Gobierno',6,106,'Seguridad nacional',2,'Marina'),
			(163,1,'Gobierno',6,106,'Seguridad nacional',3,'Inteligencia para la preservación de la seguridad nacional'),
			(171,1,'Gobierno',7,107,'Asuntos de orden público y seguridad interior',1,'Policía'),
			(172,1,'Gobierno',7,107,'Asuntos de orden público y seguridad interior',2,'Protección civil'),
			(173,1,'Gobierno',7,107,'Asuntos de orden público y seguridad interior',3,'Otros asuntos de orden público y seguridad'),
			(174,1,'Gobierno',7,107,'Asuntos de orden público y seguridad interior',4,'Sistema nacional de seguridad pública'),
			(181,1,'Gobierno',8,108,'Otros servicios generales',1,'Servicios registrales, administrativos y patrimoniales'),
			(182,1,'Gobierno',8,108,'Otros servicios generales',2,'Servicios estadísticos'),
			(183,1,'Gobierno',8,108,'Otros servicios generales',3,'Servicios de comunicación y medios'),
			(184,1,'Gobierno',8,108,'Otros servicios generales',4,'Acceso a la información pública gubernamental'),
			(185,1,'Gobierno',8,108,'Otros servicios generales',5,'Otros'),
			(211,2,'Desarrollo social',1,201,'Protección ambiental',1,'Ordenación de desechos'),
			(212,2,'Desarrollo social',1,201,'Protección ambiental',2,'Administración de agua'),
			(213,2,'Desarrollo social',1,201,'Protección ambiental',3,'Ordenación de aguas residuales, drenaje y alcantarillado'),
			(214,2,'Desarrollo social',1,201,'Protección ambiental',4,'Reducción de la contaminación'),
			(215,2,'Desarrollo social',1,201,'Protección ambiental',5,'Protección de la diversidad biológica y del paisaje'),
			(216,2,'Desarrollo social',1,201,'Protección ambiental',6,'Otros de protección ambiental'),
			(221,2,'Desarrollo social',2,202,'Vivienda y servicios a la comunidad',1,'Urbanización'),
			(222,2,'Desarrollo social',2,202,'Vivienda y servicios a la comunidad',2,'Desarrollo comunitario'),
			(223,2,'Desarrollo social',2,202,'Vivienda y servicios a la comunidad',3,'Abastecimiento de agua'),
			(224,2,'Desarrollo social',2,202,'Vivienda y servicios a la comunidad',4,'Alumbrado público'),
			(225,2,'Desarrollo social',2,202,'Vivienda y servicios a la comunidad',5,'Vivienda'),
			(226,2,'Desarrollo social',2,202,'Vivienda y servicios a la comunidad',6,'Servicios comunales'),
			(227,2,'Desarrollo social',2,202,'Vivienda y servicios a la comunidad',7,'Desarrollo regional'),
			(231,2,'Desarrollo social',3,203,'Salud',1,'Prestación de servicios de salud a la comunidad'),
			(232,2,'Desarrollo social',3,203,'Salud',2,'Prestación de servicios de salud a la persona'),
			(233,2,'Desarrollo social',3,203,'Salud',3,'Generación de recursos para la salud'),
			(234,2,'Desarrollo social',3,203,'Salud',4,'Rectoría del sistema de salud'),
			(235,2,'Desarrollo social',3,203,'Salud',5,'Protección social en salud'),
			(241,2,'Desarrollo social',4,204,'Recreación, cultura y otras manifestaciones sociales',1,'Deporte y recreación'),
			(242,2,'Desarrollo social',4,204,'Recreación, cultura y otras manifestaciones sociales',2,'Cultura'),
			(243,2,'Desarrollo social',4,204,'Recreación, cultura y otras manifestaciones sociales',3,'Radio, televisión y editoriales'),
			(244,2,'Desarrollo social',4,204,'Recreación, cultura y otras manifestaciones sociales',4,'Asuntos religiosos y otras manifestaciones sociales'),
			(251,2,'Desarrollo social',5,205,'Educación',1,'Educación básica'),
			(252,2,'Desarrollo social',5,205,'Educación',2,'Educación media superior'),
			(253,2,'Desarrollo social',5,205,'Educación',3,'Educación superior'),
			(254,2,'Desarrollo social',5,205,'Educación',4,'Posgrado'),
			(255,2,'Desarrollo social',5,205,'Educación',5,'Educación para adultos'),
			(256,2,'Desarrollo social',5,205,'Educación',6,'Otros servicios educativos y actividades inherentes'),
			(261,2,'Desarrollo social',6,206,'Protección social',1,'Enfermedad e incapacidad'),
			(262,2,'Desarrollo social',6,206,'Protección social',2,'Edad avanzada'),
			(263,2,'Desarrollo social',6,206,'Protección social',3,'Familia e hijos'),
			(264,2,'Desarrollo social',6,206,'Protección social',4,'Desempleo'),
			(265,2,'Desarrollo social',6,206,'Protección social',5,'Alimentación y nutrición'),
			(266,2,'Desarrollo social',6,206,'Protección social',6,'Apoyo social para la vivienda'),
			(267,2,'Desarrollo social',6,206,'Protección social',7,'Indígenas'),
			(268,2,'Desarrollo social',6,206,'Protección social',8,'Otros grupos vulnerables'),
			(269,2,'Desarrollo social',6,206,'Protección social',9,'Otros de seguridad social y asistencia social'),
			(271,2,'Desarrollo social',7,207,'Otros asuntos sociales',1,'Otros asuntos sociales'),
			(311,3,'Desarrollo económico',1,301,'Asuntos económicos, comerciales y laborales en general',1,'Asuntos económicos y comerciales en general'),
			(312,3,'Desarrollo económico',1,301,'Asuntos económicos, comerciales y laborales en general',2,'Asuntos laborales generales'),
			(321,3,'Desarrollo económico',2,302,'Agropecuaria, silvicultura, pesca y caza',1,'Agropecuaria'),
			(322,3,'Desarrollo económico',2,302,'Agropecuaria, silvicultura, pesca y caza',2,'Silvicultura'),
			(323,3,'Desarrollo económico',2,302,'Agropecuaria, silvicultura, pesca y caza',3,'Acuicultura, pesca y caza'),
			(324,3,'Desarrollo económico',2,302,'Agropecuaria, silvicultura, pesca y caza',4,'Agroindustrial'),
			(325,3,'Desarrollo económico',2,302,'Agropecuaria, silvicultura, pesca y caza',5,'Hidroagrícola'),
			(326,3,'Desarrollo económico',2,302,'Agropecuaria, silvicultura, pesca y caza',6,'Apoyo financiero a la banca y seguro agropecuario'),
			(331,3,'Desarrollo económico',3,303,'Combustibles y energía',1,'Carbón y otros combustibles minerales sólidos'),
			(332,3,'Desarrollo económico',3,303,'Combustibles y energía',2,'Petróleo y gas natural (hidrocarburos)'),
			(333,3,'Desarrollo económico',3,303,'Combustibles y energía',3,'Combustibles nucleares'),
			(334,3,'Desarrollo económico',3,303,'Combustibles y energía',4,'Otros combustibles'),
			(335,3,'Desarrollo económico',3,303,'Combustibles y energía',5,'Electricidad'),
			(336,3,'Desarrollo económico',3,303,'Combustibles y energía',6,'Energía no eléctrica'),
			(341,3,'Desarrollo económico',4,304,'Minería, manufacturas y construcción',1,'Extracción de recursos minerales excepto los combustibles minerales'),
			(342,3,'Desarrollo económico',4,304,'Minería, manufacturas y construcción',2,'Manufacturas'),
			(343,3,'Desarrollo económico',4,304,'Minería, manufacturas y construcción',3,'Construcción'),
			(351,3,'Desarrollo económico',5,305,'Transporte',1,'Transporte por carretera'),
			(352,3,'Desarrollo económico',5,305,'Transporte',2,'Transporte por agua y puertos'),
			(353,3,'Desarrollo económico',5,305,'Transporte',3,'Transporte por ferrocarril'),
			(354,3,'Desarrollo económico',5,305,'Transporte',4,'Transporte aéreo'),
			(355,3,'Desarrollo económico',5,305,'Transporte',5,'Transporte por oleoductos y gasoductos y otros sistemas de transporte'),
			(356,3,'Desarrollo económico',5,305,'Transporte',6,'Otros relacionados con transporte'),
			(361,3,'Desarrollo económico',6,306,'Comunicaciones',1,'Comunicaciones'),
			(371,3,'Desarrollo económico',7,307,'Turismo',1,'Turismo'),
			(372,3,'Desarrollo económico',7,307,'Turismo',2,'Hoteles y restaurantes'),
			(381,3,'Desarrollo económico',8,308,'Ciencia, tecnología e innovación',1,'Investigación científica'),
			(382,3,'Desarrollo económico',8,308,'Ciencia, tecnología e innovación',2,'Desarrollo tecnológico'),
			(383,3,'Desarrollo económico',8,308,'Ciencia, tecnología e innovación',3,'Servicios científicos y tecnológicos'),
			(384,3,'Desarrollo económico',8,308,'Ciencia, tecnología e innovación',4,'Innovación'),
			(391,3,'Desarrollo económico',9,309,'Otras industrias y otros asuntos económicos',1,'Comercio, distribución, almacenamiento y depósito'),
			(392,3,'Desarrollo económico',9,309,'Otras industrias y otros asuntos económicos',2,'Otras industrias'),
			(393,3,'Desarrollo económico',9,309,'Otras industrias y otros asuntos económicos',3,'Otros asuntos económicos'),
			(411,4,'Otras no clasificadas en funciones anteriores',1,401,'Transacciones de la deuda pública / costo financiero de la deuda',1,'Deuda pública interna'),
			(412,4,'Otras no clasificadas en funciones anteriores',1,401,'Transacciones de la deuda pública / costo financiero de la deuda',2,'Deuda pública externa'),
			(421,4,'Otras no clasificadas en funciones anteriores',2,402,'Transferencias, participaciones y aportaciones entre diferentes niveles y órdenes de gobierno',1,'Transferencias entre diferentes niveles y órdenes de gobierno'),
			(422,4,'Otras no clasificadas en funciones anteriores',2,402,'Transferencias, participaciones y aportaciones entre diferentes niveles y órdenes de gobierno',2,'Participaciones entre diferentes niveles y órdenes de gobierno'),
			(423,4,'Otras no clasificadas en funciones anteriores',2,402,'Transferencias, participaciones y aportaciones entre diferentes niveles y órdenes de gobierno',3,'Aportaciones entre diferentes niveles y órdenes de gobierno'),
			(431,4,'Otras no clasificadas en funciones anteriores',3,403,'Saneamiento del sistema financiero',1,'Saneamiento del sistema financiero'),
			(432,4,'Otras no clasificadas en funciones anteriores',3,403,'Saneamiento del sistema financiero',2,'Apoyos IPAB'),
			(433,4,'Otras no clasificadas en funciones anteriores',3,403,'Saneamiento del sistema financiero',3,'Banca de desarrollo'),
			(434,4,'Otras no clasificadas en funciones anteriores',3,403,'Saneamiento del sistema financiero',4,'Apoyos a los programas de reestructura en unidades de inversión (UDIS)'),
			(441,4,'Otras no clasificadas en funciones anteriores',4,404,'Adeudos de ejercicios fiscales anteriores',1,'Adeudos de ejercicios fiscales anteriores');
--ok local y azure

--Crear la vista de  la clasificación funcional

create view vwtblClasificacionFuncionalGasto as

select idClasificacionFuncionalGasto,
		intFinalidad,
		strFinalidadDescripcion,
		intFuncion,
		intClaveFuncion,
		strFuncionDescripcion,
		intSubfuncion,
		strSubFuncionDescripcion
			from tblClasificacionFuncionalGasto;

select * from vwtblClasificacionFuncionalGasto;  --ok local y azure

--Fin del query 15

--***********************************************************************************
-- SQL Query 16
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Creación de tablas para la clasificación funcional del gasto (Actividad institucional)
-- 23 de agosto de 2025
--***********************************************************************************

use dbAdquisiciones;

create table tblActividadInstitucional(idActividadInstitucional int not null,
									   strActividadInstitucional nvarchar(160) not null

									   constraint pkIdActividadInstitucional
									   primary key(idActividadInstitucional)
									   );  --ok local y azure

--Insertar las 132 actividades institucionales de la Administración pública de la CDMX

insert into tblActividadInstitucional (idActividadInstitucional,
									   strActividadInstitucional)
	values (1, 'Función pública y buen gobierno'),
           (2, 'Gestión integral de riesgos en materia de protección civil'),
           (5, 'Seguro contra accidentes personales de escolares'),
           (6, 'Sistema de protección integral de niñas, niños y adolescentes de la Ciudad de México'),
           (8, 'Acciones dirigidas a personas con discapacidad'),
           (9, 'Acciones dirigidas a personas privadas de su libertad y en procedimiento legal'),
           (10, 'Acciones en materia de prevención y atención de adicciones'),
           (11, 'Política fiscal y tributaria'),
           (13, 'Prevención de la violencia con participación ciudadana'),
           (17, 'Atención a grupos vulnerables'),
           (20, 'Atención médica integral'),
           (21, 'Capacitación y fortalecimiento para y en el trabajo'),
           (23, 'Combate a la discriminación y violencia hacia las mujeres'),
           (24, 'Construcción y supervisión de infraestructura pública'),
           (25, 'Control y acciones dirigidas para la reinserción social de población liberada y preliberada'),
           (26, 'Atención a emergencias y protección ciudadana'),
           (29, 'Servicio de la deuda'),
           (30, 'Crecimiento y desarrollo sostenible'),
           (31, 'Acciones para el mejoramiento de la vivienda'),
           (36, 'Emisión de dictámenes y avalúos'),
           (37, 'Evaluación y seguimiento de políticas, programas y proyectos'),
           (39, 'Financiamiento y créditos'),
           (41, 'Fortalecimiento a la educación'),
           (42, 'Fortalecimiento a la educación media superior'),
           (44, 'Gestión y conservación museística'),
           (45, 'Gobierno abierto, digital y gobernanza tecnológica'),
           (46, 'Impulso y fomento a la cultura física y el deporte'),
           (47, 'Innovación, ciencia y tecnología'),
           (52, 'Operación y mantenimiento del sistema de movilidad'),
           (55, 'Participación ciudadana'),
           (56, 'Planeación y control del gasto'),
           (61, 'Preservación, producción y difusión de material de audio y audiovisual'),
           (62, 'Prevención de la violencia y combate a la discriminación'),
           (63, 'Prevención de la violencia y el delito'),
           (64, 'Prevención y promoción de la salud'),
           (70, 'Producción y comercialización de mezcla asfáltica para la rehabilitación de las vías primarias y secundarias'),
           (71, 'Profesionalización de servidores públicos'),
           (73, 'Promoción y conservación del patrimonio material e inmaterial'),
           (77, 'Promoción y fomento de los derechos culturales'),
           (79, 'Promoción y fomento del turismo'),
           (81, 'Protección del medio ambiente y recursos naturales'),
           (83, 'Protección y defensa de los derechos humanos laborales y previsión social'),
           (84, 'Recolección, tratamiento y disposición final de desechos sólidos y peligrosos'),
           (85, 'Recreación y deporte'),
           (88, 'Regulación, control, protección y vigilancia de riesgos sanitarios'),
           (89, 'Regulación, protección y cuidado animal'),
           (92, 'Restauración del equilibrio ecológico, conservación de áreas naturales protegidas y fomento a la producción agroecológica'),
           (93, 'Seguimiento a la implementación del programa de derechos humanos'),
           (96, 'Verificación administrativa'),
           (102, 'Generación de desarrollo económico sustentable e incluyente'),
           (103, 'Profesionalización de mujeres'),
           (105, 'Acciones para el fortalecimiento del desarrollo social'),
           (111, 'Comercialización y abastecimiento de imprenta'),
           (113, 'Monitoreo atmosférico y emisiones de otros contaminantes'),
           (115, 'Operación de centros para el desarrollo infantil'),
           (117, 'Acciones para el desarrollo y bienestar de los jóvenes'),
           (118, 'Operación y administración de zoológicos'),
           (122, 'Atención a adultos mayores'),
           (126, 'Atención social emergente'),
           (128, 'Desarrollo urbano sostenible'),
           (132, 'Políticas para la atención integral de personas con discapacidad'),
           (137, 'Sistema anticorrupción y fiscalización'),
           (138, 'Participación ciudadana para la ejecución de recursos públicos'),
           (145, 'Estudios, revisiones y dictámenes relacionados con la seguridad estructural'),
           (147, 'Registro de establecimiento mercantiles'),
           (148, 'Apoyos para la mejora de los canales de abasto'),
           (158, 'Acciones encaminadas a una equidad para las comunidades indígenas residentes'),
           (164, 'Servicios legales, orientación técnica o jurídica a entes públicos y particulares'),
           (170, 'Administración del sistema de pensiones y jubilaciones'),
           (177, 'Conducción de la política de gobierno'),
           (178, 'Coordinación metropolitana y regional'),
           (179, 'Acciones para la protección integral de personas defensoras de los derechos humanos, de la libertad de expresión y el periodismo'),
           (181, 'Otros subsidios para el pago de contribuciones'),
           (195, 'Planeación, regulación y verificación de corredores de transporte y centros de transferencia modal'),
           (196, 'Proyectos para la modernización de la infraestructura para la movilidad no motorizada y peatonal'),
           (199, 'Puntos de innovación, libertad, arte, educación y saberes (pilares)'),
           (205, 'Becas a niñas y niños en situación de vulnerabilidad'),
           (207, 'Desayunos escolares y complemento alimenticio'),
           (209, 'Uniformes escolares gratuitos'),
           (213, 'Crecimiento y desarrollo sustentable'),
           (217, 'Regulación y vigilancia ambiental'),
           (218, 'Desarrollo cultural comunitario'),
           (219, 'Promotores culturales'),
           (220, 'Gestión de talleres de artes y oficios'),
           (221, 'Acciones para la vivienda en conjunto'),
           (226, 'Fortalecimiento de la cohesión social'),
           (229, 'Ponte pila, deporte comunitario'),
           (231, 'Apoyo para mantenimiento menor a escuelas públicas de educación básica'),
           (233, 'Recuperación crediticia'),
           (234, 'Sistemas de captación de lluvia'),
           (238, 'Acceso a educación superior'),
           (241, 'Búsqueda de personas desaparecidas y no identificadas'),
           (242, 'Formación de aspirantes'),
           (244, 'Apoyos y servicios sociales'),
           (245, 'Ampliación de infraestructura para el transporte público'),
           (246, 'Protección social para el desempleo'),
           (253, 'Promoción social e imagen institucional'),
           (261, 'Atención a víctimas'),
           (262, 'Atención y orientación ciudadana integral'),
           (263, 'Presupuesto participativo'),
           (264, 'Planeación integral del sistema de movilidad'),
           (270, 'Desarrollo de infraestructura peatonal y ciclista'),
           (271, 'Acciones de mejora para el servicio transporte público'),
           (272, 'Protección de la integridad y el patrimonio de las personas'),
           (274, 'Mantenimiento de infraestructura pública'),
           (288, 'Acciones recreativas y educativas en beneficio de niñas, niños y adolescentes'),
           (290, 'Devolución a contribuyentes'),
           (293, 'Promoción y vigilancia de la aplicación de las disposiciones jurídicas en materia ambiental, de ordenamiento territorial y de protección y bienestar animal'),
           (298, 'Eventos fortuitos administrativos'),
           (301, 'Acciones para la alimentación y nutrición'),
           (302, 'Mejoramiento barrial'),
           (303, 'Rescate de unidades habitacionales'),
           (305, 'Construcción y rehabilitación de la infraestructura de agua potable'),
           (306, 'Construcción y rehabilitación de la infraestructura de drenaje y tratamiento'),
           (307, 'Abastecimiento de agua potable'),
           (308, 'Funcionamiento optimo del sistema de drenaje y alcantarillado'),
           (309, 'Atención social y económica a pensionados, jubilados y personal activo'),
           (312, 'Servicios inmobiliarios y gestión de estacionamientos'),
           (313, 'Acciones para mejorar la eficiencia institucional'),
           (315, 'Prestación de servicios médicos generales'),
           (319, 'Sistema de Planeación Democrática y Perspectiva'),
           (320, 'Cuidados para el bienestar infantil'),
           (321, 'Servicios comunales en alcaldías'),
           (322, 'Atención a adolescentes sujetos al sistema integral de justicia'),
           (323, 'Acciones de protección social en alcaldías'),
           (324, 'Fortalecer el desarrollo humano de las mujeres para la erradicación de la discriminación, violencia y desigualdad'),
           (325, 'Atención a las personas con enfermedades crónico-degenerativas y discapacidad que demandan servicios'),
           (326, 'Promover la producción, comercialización y uso de productos agroalimentarios sostenibles'),
           (327, 'Promover los derechos humanos y la dignidad de las personas LGBTTTIQ+'),
           (328, 'Atención de necesidades primarias de la población en situación de vulnerabilidad'),
           (329, 'Adoptar medidas para la disponibilidad, accesibilidad de bienes y servicios sociales para disminuir la desigualdad de las familias'),
           (330, 'Atención integral a adultos mayores en situación de vulnerabilidad');
--ok local y azure

--Crear la vista de la actividad institucional

create view vwtblActividadInstitucional as

select idActividadInstitucional, strActividadInstitucional
	from tblActividadInstitucional;

select * from vwtblActividadInstitucional;  --ok local y azure

--***********************************************************************************
-- SQL Query 17
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Creación de tablas para la clasificación funcional del gasto (Programa presupuestario)
-- 23 de agosto de 2025
--***********************************************************************************

use dbAdquisiciones;

create table tblProgramaPresupuestario(idProgramaPresupuestario nvarchar(4) not null,
									   strProgramaPresupuestario nvarchar(200) not null,

									   constraint pkIdProgramaPresupuestario
									   primary key(idProgramaPresupuestario)
									   );  --ok local y azure

--Insertar los programas presupuestarios

insert into tblProgramaPresupuestario(idProgramaPresupuestario,
									   strProgramaPresupuestario)
values('B001','Producción y Comercialización de Mezclas Asfálticas'),
      ('D001','Servicio de la Deuda'),
      ('D002','Devolución de Ingresos Percibidos Indebidamente'),
      ('E003','Acciones de Obras y Servicios para la Recuperación, Promoción y Protección del Centro Histórico'),
      ('E005','Acciones para Mejorar la Gobernanza Digital'),
      ('E006','Acciones para Proyectos Ambientales.'),
      ('E017','Atención Médica a Personas Privadas de su Libertad y en Procedimiento Legal'),
      ('E022','Cuidado y Conservación de los Bosques, Áreas de Valor Ambiental y Suelo De Conservación.'),
      ('E026','Formación de Aspirantes a Policías'),
      ('E042','Operación y Mantenimiento del Transporte Público Masivo, Concesionado y Alterno'),
      ('E048','Producción de Contenido Cultural y Artístico'),
      ('E065','Servicio Integral de Operación y Atención a Emergencias'),
      ('E066','Servicios de Salud del Primer Nivel'),
      ('E067','Operación del Sistema para la Seguridad de Las Construcciones de la Ciudad De México'),
      ('E077','Servicios de Imprenta de la Ciudad De México'),
      ('E081','Servicios Integrales de Asistencia Social'),
      ('E084','Servicios Integrales Metropolitanos'),
      ('E086','Fortalecimiento a La Educación Media Superior'),
      ('E090','Acciones para el Bienestar Animal'),
      ('E093','Manejo Integral de Residuos Sólidos Urbanos'),
      ('E097','Acciones de Búsqueda, Localización e Identificación de Personas'),
      ('E100','Capacitación a La Población Ocupada y Desocupada de la Ciudad De México'),
      ('E107','Conservación y Operación de Zoológicos.'),
      ('E109','Apoyo Integral a Victimas'),
      ('E116','Programa Pilares'),
      ('E153','Programa para la Formación de Profesionales de La Salud'),
      ('E154','Acceso a la Justicia Ambiental, Urbana y de Protección y Bienestar Animal'),
      ('E157','Atención y Orientación Telefónica sobre Trámites y Servicios'),
      ('E158','Protección Integral de Personas Defensoras de Derechos Humanos y Periodistas'),
      ('E159','Educación y Divulgación Ambiental'),
      ('E160','Servicio de Agua Potable'),
      ('E161','Servidores de la Ciudad'),
      ('E162','Atención Integral para el Bienestar de los Adultos Mayores'),
      ('E163','Servicios sociales para el Bienestar de la Infancia y la Adolescencia'),
      ('E164','Servicios de Protección Infantil y Adolescente'),
      ('E165','Servicios Especiales para Personas con Discapacidad'),
      ('E166','Servicios Asistenciales a Personas Vulnerables'),
      ('E167','Servicios Integrales de Movilidad Pública y Privada'),
      ('E168','Sistema Penitenciario'),
      ('E169','Prevención del Delito y Seguridad Ciudadana'),
      ('E170','Profesionalización Policial'),
      ('E171','Prestación de Servicios Jurídicos en el Ámbito Publico'),
      ('E172','Atención Medica de Segundo Nivel'),
      ('E173','Atención Integral de la Salud para la Mujer'),
      ('E174','Prevención de Enfermedades y Promoción a la Salud para El Bienestar'),
      ('E175','Fortalecimiento de la Cultura y Las Artes'),
      ('E177','Operación de Museos'),
      ('E178','Supervisión, Promoción y Defensoría Jurídica de los Derechos Laborales'),
      ('E179','Desarrollo de Los Pueblos y Barrios Originarios y Comunidades Indígenas Residentes'),
      ('E180','Servicios de Educación Complementaria'),
      ('E181','Fortalecimiento para el Acceso a la Educación Superior y Posgrados'),
      ('E182','Programas y Eventos Deportivos'),
      ('E183','Atención y Prevención de la Violencia y Discriminación por Razones de Genero contra Mujeres, Adolescentes Y Niñas'),
      ('E184','Servicio de Drenaje, Alcantarillado y Saneamiento'),
      ('E191','Fortalecimiento de Acciones para el Bienestar Social'),
      ('E192','Gestión del Patrimonio Inmobiliario de la Ciudad de México'),
      ('E193','Actividades Culturales, Recreativas y Deportivas Para Jóvenes'),
      ('E194','Atención a Personas Sujetas al Sistema Integral de Justicia para Adolescentes'),
      ('E195','Prestaciones Sociales a Jubilados, Pensionados y Personal Activo'),
      ('E196','Servicios Integrales de Movilidad para Ciclistas y Peatones'),
      ('E197','Ponte Pila, Deporte Comunitario para el Bienestar'),
      ('E199','Conciliación Laboral'),
      ('F005','Desarrollo y Promoción de Productos y Proyectos Turísticos Sustentables'),
      ('F006','Financiamiento a Microcréditos para El Autoempleo, Atención a Las Medianas y Pequeñas Empresas Y Comercializacion De Productos Rurales'),
      ('F022','Desarrollo, Promoción y Posicionamiento de la Ciudad de México y su Marca CDMX'),
      ('F034','Fortalecimiento de Competencias en Energía Solar'),
      ('F036','Operación y Funcionamiento de los Canales de Abasto de la Ciudad de México'),
      ('G005','Regulación de Corredores de Transporte Público y Centros de Transferencia Modal'),
      ('G010','Recuperación Optima de los Créditos'),
      ('G013','Inspección y Vigilancia Medioambiental.'),
      ('G073','Regulación del Desarrollo Urbano'),
      ('G074','Regulación y Desarrollo del Sector Industrial, Comercial y De Servicio'),
      ('G076','Verificación Administrativa'),
      ('G077','Regulación Sanitaria en Establecimientos, Productos, Actividades, Servicios y Personas'),
      ('J001','Pago de Pensiones y Jubilaciones'),
      ('K008','Ampliación, Operación y Mantenimiento del Alumbrado Publico'),
      ('K012','Rehabilitación, Equipamiento y Construcción de Infraestructura Educativa'),
      ('K019','Construcción, Mantenimiento y Operación de La Infraestructura del Sistema Penitenciario'),
      ('K020','Construcción, Ampliación y Mejoramiento de Infraestructura Urbana'),
      ('K021','Construcción, Ampliación y Mejoramiento de Infraestructura y Edificios Públicos'),
      ('K022','Construcción, Ampliación y Mejoramiento de Infraestructura de Transporte Publico'),
      ('K024','Infraestructura de Agua Potable'),
      ('K025','Infraestructura de Drenaje, Alcantarillado y Saneamiento'),
      ('M001','Actividades de Apoyo Administrativo'),
      ('M002','Provisiones para Contingencias'),
      ('N001','Cumplimiento de los Programas de Protección Civil'),
      ('N005','Gestión Integral de Riesgos, Atención a Siniestros, Emergencias y Desastres'),
      ('O004','Integración de Servicios Tecnológicos e Informáticos'),
      ('O006','Fiscalización a La Gestión Pública.'),
      ('O007','Mejora de la Función Pública para el Buen Gobierno'),
      ('O008','Seguimiento a La Política de Legalidad'),
      ('O009','Profesionalización de Funcionarios Públicos e Investigación Aplicada a La Administración Pública'),
      ('O010','Consejería y Asuntos Legales'),
      ('P003','Planeación, Seguimiento y Evaluación A Políticas Públicas'),
      ('P005','Calidad del Aire'),
      ('P014','Diseño de la Política de Egresos'),
      ('P016','Diseño e Instrumentación de Acciones en Materia de Competitividad, Emprendimiento, Competencia Y Política Regulatoria'),
      ('P017','Acciones para la Transversalización del Enfoque de Derechos Humanos'),
      ('P020','Planeación y Seguimiento de la Política Gubernamental'),
      ('P022','Planeación de Políticas Públicas para Mejorar la Atención de las Adicciones'),
      ('P026','Diseño, Coordinación y Operación de la Política Fiscal y Hacendaria'),
      ('P027','Políticas para La Prevención y Combate a la Discriminación'),
      ('P031','Planeación, Seguimiento y Evaluación a Políticas Públicas para el Desarrollo de las Personas con Discapacidad'),
      ('P051','Política del Sistema de Planeación del Desarrollo y Ordenamiento Territorial'),
      ('P054','Estudios de Desarrollo Económico, Social y Ambiental'),
      ('P055','Coordinación General de Gobierno'),
      ('P056','Conducción de la Política Del Medio Ambiente'),
      ('R001','Seguimiento a Recuperación De Cartera'),
      ('S004','Apoyos para el Desarrollo Integral de Los Jóvenes'),
      ('S005','Atención Prioritaria a Personas Egresadas del Sistema de Justicia Penal'),
      ('S010','Coinversión para la Inclusión y El Bienestar Social'),
      ('S012','Colectivos Culturales Comunitarios Ciudad De México'),
      ('S022','Fomento al Trabajo Digno'),
      ('S023','Fomento, Constitución Y Fortalecimiento De Las Empresas Sociales y Solidarias de la Ciudad De México (FOCOFESS)'),
      ('S025','Los Jóvenes Unen al Barrio'),
      ('S027','Mejoramiento de la Vivienda'),
      ('S034','Programa Sistemas de Captación de Agua de Lluvia en Viviendas de la Ciudad De México'),
      ('S035','Programa Alimentos Escolares'),
      ('S036','Programa Altépetl'),
      ('S047','Programa Mejoramiento Barrial y Comunitario, Tequio Barrio'),
      ('S051','Promotores Culturales Ciudad de México'),
      ('S053','Rescate Innovador y Participativo en Unidades Habitacionales'),
      ('S054','Seguro de Desempleo'),
      ('S056','Apoyo a Mujeres en Situación de Violencia de Genero'),
      ('S057','Talleres de Artes y Oficios Comunitarios'),
      ('S061','Vivienda en Conjunto'),
      ('S066','Centros para el Desarrollo Infantil'),
      ('S210','Programa Uniformes y Útiles Escolares'),
      ('S220','Atención Social Inmediata a Poblaciones Prioritarias (ASIPP)'),
      ('S221','Comedores para el Bienestar'),
      ('S223','Otorgamiento de Ayudas Sociales para Pueblos, Barrios y Comunidades Indígenas Residentes'),
      ('S224','Beca Pilares Bienestar'),
      ('S225','La Escuela Es Nuestra-Mejor Escuela'),
      ('S226','Beca Leona Vicario'),
      ('S227','Bienestar para Niñas y Niños, Mi Beca para Empezar'),
      ('U009','Otros Subsidios'),
      ('U014','Financiamiento y Promoción de Proyectos Culturales y Artísticos'),
      ('U019','Si al Desarme, Si a la Paz'),
      ('U022','Acciones para Mejorar el Servicio de Transporte Público, así como la Infraestructura Asociada'),
      ('U032','Apoyo a Personas que Perdieron algún Familiar en el Sismo del 19 de septiembre de 2017'),
      ('U036','Apoyo a la Producción y Servicios Fílmicos y Cinematográficos'),
      ('U037','Fomento al Autoempleo y Sociedades Cooperativas'),
      ('U038','Apoyos para Promover la Igualdad y No Discriminación'),
      ('U039','Convenios para la Modernización de Sistemas de Movilidad y Transporte'),
      ('U040','Apoyos para la Formación Policial'),
      ('U041','Convenios para la Mejora de la Educación, Ciencia, Tecnología e Innovación'),
      ('U042','Apoyos y Estímulos Deportivos para el Bienestar'),
      ('U043','Va Segur@'),
      ('U044','Asistencia, Atención e Inclusión para Niñas, Niños, Adolescentes y Jóvenes Familiares de las Personas Sensiblemente Afectadas en la Línea 12 Del Sistema De Transporte Colectivo (STC Metro)'),
      ('U045','Subsidios Ambientales'),
      ('U046','Ayudas por Afectaciones de Obra Pública'),
      ('U047','Acciones del Concejo Ciudadano para la Seguridad y Justicia');  --ok local y azure

--Crear la vista de Programas Presupuestarios

create view vwtblProgramaPresupuestario as

select idProgramaPresupuestario, strProgramaPresupuestario
	from tblProgramaPresupuestario;

select * from vwtblProgramaPresupuestario;  --ok local y azure

--***********************************************************************************
-- SQL Query 18
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Creación de tablas para Fuente de financiamiento
-- 19 de septiembre de 2025
--***********************************************************************************

use dbAdquisiciones;

create table tblFuenteFinanciamiento(idStrFuenteFinanciamiento nvarchar(6) not null,
									 bitEtiquetado bit not null,
-- 0 No etiquetado
-- 1 Etiquetado
									 intFuenteFinanciamiento int not null,
									 strFuenteFinanciamientoDesripcion nvarchar(40) not null,
--FUFI	Fuente de financiemiento
--11	Recursos Fiscales
--12	Financiamientos internos
--13	Financiamientos externos del Gobierno Federal
--14	Ingresos propios
--15	Recursos Federales
--16	Recursos Estatales
--17	Otros recursos de libre disposición
--25	Recursos Federales
--26	Recursos Estatales
--27	Otros Recursos de Transferencias Federales Etiquetadas

									 strClaveFuenteGenerica nvarchar(1) not null,
									 strFuenteGenericaDescripcion nvarchar(120) not null,
--1, A, B, E,I,J,O,P,Q,V estas son las claves de fuentes genericas pero no encontrè la desripciòn
									 strClaveFuenteEspecifica nvarchar(1) not null,
									 strFuenteEspecificaDescripcion nvarchar(250) not null,
									 intYearDocumento int not null,
									 intClaveOrigenRecurso int not null,
									 strOrigenRecursoDescripcion nvarchar(80) not null,
--Dígito que identifica el origen del recurso. 
--0 Original de la URG. 
--1 Original reasignado por excepción. 
--2 Original transferido para  fin específico. 
--3 Líquida de recursos adicionales principal. 
--4 Líquida de ineterés de recursos adicionales de principal. 
--5 Líquida de remanentes de principal. 
--6 Líquida de remanentes de interés de recursos adicionales de principal
									 constraint pkIdStrFuenteFinanciamiento
									 primary key(idStrFuenteFinanciamiento)
									 );

--Insertar las fuentes de financiemiento del ejercicio 2025 para la CDMX
use dbAdquisiciones;

insert into tblFuenteFinanciamiento(idStrFuenteFinanciamiento,
									bitEtiquetado,
									intFuenteFinanciamiento,
									strFuenteFinanciamientoDesripcion,
									strClaveFuenteGenerica,
									strFuenteGenericaDescripcion,
									strClaveFuenteEspecifica,
									strFuenteEspecificaDescripcion,
									intYearDocumento,
									intClaveOrigenRecurso,
									strOrigenRecursoDescripcion
									)
values
('111150',0,11,'Recursos Fiscales','1','1 Descripción','1','No etiquetado recursos fiscales-Fiscales-Fiscales-2025-Original de la URG',5,0,'Original de la URG'),
('111250',0,11,'Recursos Fiscales','1','1 Descripción','2','No etiquetado recursos fiscales-Fiscales-Ingresos de aplicación automática-2025-Original de la URG',5,0,'Original de la URG'),
('111750',0,11,'Recursos Fiscales','1','1 Descripción','7','No etiquetado recursos fiscales-Fiscales-Estacionamiento de vehículos en la vía pública (Parquimetros)-2025-Original de la URG',5,0,'Original de la URG'),
('121150',0,12,'Financiamientos internos','1','1 Descripción','1','No etiquetado financiamientos internos-Financiamiento-Financiamiento-2025-Original de la URG',5,0,'Original de la URG'),
('141250',0,14,'Ingresos propios','1','1 Descripción','2','No etiquetado ingresos propios-Ingresos propios-Ingresos propios de entidades paraestatales/organismos-2025-Original de la URG',5,0,'Original de la URG'),
('141450',0,14,'Ingresos propios','1','1 Descripción','4','No etiquetado ingresos propios-Ingresos propios-Fideicomiso para el programa de mejoramiento del STC metro-2025-Original de la URG',5,0,'Original de la URG'),
('151150',0,15,'Recursos Federales','1','1 Descripción','1','No etiquetado recursos federales-Fiscales-Cinco al millar -2025-Original de la URG',5,0,'Original de la URG'),
('111E50',0,11,'Recursos Fiscales','1','1 Descripción','E','No etiquetado recursos fiscales-Fiscales-Recurso estatal convenio de coordinación IMSS Bienestar-2025-Original de la URG',5,0,'Original de la URG'),
('111R50',0,11,'Recursos Fiscales','1','1 Descripción','R','No etiquetado recursos fiscales-Fiscales-Apoyo económico único a personas ex trabajadoras del organismo público descentralizado autotransportes urbanos de pasajeros R100-2025-Original de la URG',5,0,'Original de la URG'),
('11A350',0,11,'Recursos Fiscales','A','A Descripción','3','No etiquetado recursos fiscales-Gobernación-Coparticipación acciones de búsqueda de personas CDMX-2025-Original de la URG',5,0,'Original de la URG'),
('11E550',0,11,'Recursos Fiscales','E','E Descripción','5','No etiquetado recursos fiscales-Educación pública-Instituto de capacitación para el trabajo de la Ciudad de México-2025-Original de la URG',5,0,'Original de la URG'),
('11J250',0,11,'Recursos Fiscales','J','J Descripción','2','No etiquetado recursos fiscales-Seguridad pública-Fondo de apoyo a las instituciones de seguridad pública de los municipios-2025-Original de la URG',5,0,'Original de la URG'),
('11P550',0,11,'Recursos Fiscales','P','P Descripción','5','No etiquetado recursos fiscales-Aportaciones federales para entidades federativas y municipios-Fondo de aportaciones para la seguridad pública de los estados y del distrito federal (FASP)-2025-Original de la URG',5,0,'Original de la URG'),
('11QN50',0,11,'Recursos Fiscales','Q','Q Descripción','N','No etiquetado recursos fiscales-Cultura-Operación de acciones culturales multilingües y comunitarias (PACMYC)-2025-Original de la URG',5,0,'Original de la URG'),
('15J250',0,15,'Recursos Federales','J','J Descripción','2','No etiquetado recursos federales-Seguridad pública-Fondo de apoyo a las instituciones de seguridad pública de los municipios-2025-Original de la URG',5,0,'Original de la URG'),
('15O150',0,15,'Recursos Federales','O','O Descripción','1','No etiquetado recursos federales-Participaciones a entidades federativas y municipios-Participaciones en ingresos federales -2025-Original de la URG',5,0,'Original de la URG'),
('15O250',0,15,'Recursos Federales','O','O Descripción','2','No etiquetado recursos federales-Participaciones a entidades federativas y municipios-Fondo general de participaciones-2025-Original de la URG',5,0,'Original de la URG'),
('15O350',0,15,'Recursos Federales','O','O Descripción','3','No etiquetado recursos federales-Participaciones a entidades federativas y municipios-Fondo de fomento municipal-2025-Original de la URG',5,0,'Original de la URG'),
('15O450',0,15,'Recursos Federales','O','O Descripción','4','No etiquetado recursos federales-Participaciones a entidades federativas y municipios-Participaciones en el impuesto especial sobre producción y servicios-2025-Original de la URG',5,0,'Original de la URG'),
('15O550',0,15,'Recursos Federales','O','O Descripción','5','No etiquetado recursos federales-Participaciones a entidades federativas y municipios-Fondo de fiscalización y recaudación-2025-Original de la URG',5,0,'Original de la URG'),
('15O650',0,15,'Recursos Federales','O','O Descripción','6','No etiquetado recursos federales-Participaciones a entidades federativas y municipios-Participaciones a la venta final de gasolina y diesel-2025-Original de la URG',5,0,'Original de la URG'),
('15OA50',0,15,'Recursos Federales','O','O Descripción','A','No etiquetado recursos federales-Participaciones a entidades federativas y municipios-Ase convenio de coordinación IMSS Bienestar-2025-Original de la URG',5,0,'Original de la URG'),
('15OB50',0,15,'Recursos Federales','O','O Descripción','B','No etiquetado recursos federales-Participaciones a entidades federativas y municipios-Participaciones en el impuesto sobre automóviles nuevos-2025-Original de la URG',5,0,'Original de la URG'),
('15OC50',0,15,'Recursos Federales','O','O Descripción','C','No etiquetado recursos federales-Participaciones a entidades federativas y municipios-Fondo de compensación del impuesto de automóviles nuevos (ISAN) -2025-Original de la URG',5,0,'Original de la URG'),
('15OE50',0,15,'Recursos Federales','O','O Descripción','E','No etiquetado recursos federales-Participaciones a entidades federativas y municipios-Recurso estatal convenio de coordinación IMSS-2025-Original de la URG',5,0,'Original de la URG'),
('15OG50',0,15,'Recursos Federales','O','O Descripción','G','No etiquetado recursos federales-Participaciones a entidades federativas y municipios-Incentivo por la recaudación del ISR de bienes inmuebles-2025-Original de la URG',5,0,'Original de la URG'),
('15OI50',0,15,'Recursos Federales','O','O Descripción','I','No etiquetado recursos federales-Participaciones a entidades federativas y municipios-Incentivos derivados de la coordinación fiscal-2025-Original de la URG',5,0,'Original de la URG'),
('15V550',0,15,'Recursos Federales','V','V Descripción','5','No etiquetado recursos federales-Desarrollo agrario, territorial y urbano-Modernización de los registros públicos de la propiedad y catastros, PEMC-2025-Original de la URG',5,0,'Original de la URG'),
('25B350',1,25,'Recursos Federales','B','B Descripción','3','Etiquetado recursos federales-Programa sanidad e inocuidad agroalimentaria-Programa sanidad e inocuidad agroalimentaria-2025-Original de la URG',5,0,'Original de la URG'),
('25E350',1,25,'Recursos Federales','E','E Descripción','3','Etiquetado recursos federales-Educación pública-Restauración, rehabilitación y adecuación del Museo Vivo del Muralismo-2025-Original de la URG',5,0,'Original de la URG'),
('25E850',1,25,'Recursos Federales','E','E Descripción','8','Etiquetado recursos federales-Educación pública-Recurso SEP/Universidad Autónoma de la Ciudad de México-2025-Original de la URG',5,0,'Original de la URG'),
('25I350',1,25,'Recursos Federales','I','I Descripción','3','Etiquetado recursos federales-Medio ambiente y recursos naturales-Subsidio administración del agua  y agua potable-2025-Original de la URG',5,0,'Original de la URG'),
('25I750',1,25,'Recursos Federales','I','I Descripción','7','Etiquetado recursos federales-Medio ambiente y recursos naturales-Subsidios hidroagrícolas-2025-Original de la URG',5,0,'Original de la URG'),
('25P150',1,25,'Recursos Federales','P','P Descripción','1','Etiquetado recursos federales-Aportaciones federales para entidades federativas y municipios-Fondo de aportaciones para el fortalecimiento de los municipios y las demarcaciones territoriales del distrito federal (FORTAMUN)-2025-Original de la URG',5,0,'Original de la URG'),
('25P250',1,25,'Recursos Federales','P','P Descripción','2','Etiquetado recursos federales-Aportaciones federales para entidades federativas y municipios-Fondo de aportaciones para el fortalecimiento de las entidades federativas (FAFEF)-2025-Original de la URG',5,0,'Original de la URG'),
('25P350',1,25,'Recursos Federales','P','P Descripción','3','Etiquetado recursos federales-Aportaciones federales para entidades federativas y municipios-Fondo de Aportaciones Múltiples (FAM)-2025-Original de la URG',5,0,'Original de la URG'),
('25P450',1,25,'Recursos Federales','P','P Descripción','4','Etiquetado recursos federales-Aportaciones federales para entidades federativas y municipios-Fondo de aportaciones para los servicios de salud (FASSA)-2025-Original de la URG',5,0,'Original de la URG'),
('25P550',1,25,'Recursos Federales','P','P Descripción','5','Etiquetado recursos federales-Aportaciones federales para entidades federativas y municipios-Fondo de aportaciones para la seguridad pública de los estados y del distrito federal (FASP)-2025-Original de la URG',5,0,'Original de la URG'),
('25P650',1,25,'Recursos Federales','P','P Descripción','6','Etiquetado recursos federales-Aportaciones federales para entidades federativas y municipios-Fondo de aportaciones para la infraestructura social (FAIS)-2025-Original de la URG',5,0,'Original de la URG');

--ok local y azure

--Creación de la vista de la tabla de fuente de financiemiento
use dbAdquisiciones;

create view vwtblFuenteFinanciamiento as
select ff.idStrFuenteFinanciamiento,
	   ff.bitEtiquetado,
	   ff.intFuenteFinanciamiento,
	   ff.strFuenteFinanciamientoDesripcion,
	   ff.strClaveFuenteGenerica,
	   ff.strFuenteGenericaDescripcion,
	   ff.strClaveFuenteEspecifica,
	   ff.strFuenteEspecificaDescripcion,
	   ff.intYearDocumento,
	   ff.intClaveOrigenRecurso,
	   ff.strOrigenRecursoDescripcion
	from tblFuenteFinanciamiento ff;

select * from vwtblFuenteFinanciamiento; --ok local y azure

--***********************************************************************************
-- SQL Query 18
-- Erick Genaro Piña Arrieta Barbosa
-- Proyecto de modelado de base de datos para el control de adquisiciones
-- Modificacionde la tabla proveedores, se convierte en un esquema
-- tblProveedores.rfc, tbl.proveedores.direccion, tblProveedores.actaConstitutiva
-- 10 de octubre de 2025
--***********************************************************************************
--Creamos una nueva tabla temporal a partir de tblProveedores

select * into tmpProveedores from tblProveedores;

select * from tmpProveedores;

--Hay que primero eliminar las columnas de la tblProveedores, menos rfc y razón social

alter table tblProveedores 
	drop column strCalleProveedor,
				strNumeroExtProveedor,
				strNumeroIntProveedor,
				strColoniaProveedor,
				strCPproveedor,
				strAlcaldiaMpoProveedor,
				strCiudadProveedor,
				strTelefonoProveedor,
				strCorreoProveedor,
				intPersonaFisicaMoral,
				strCURPproveeedor,
				strIdentPersonaFisica,
				strNumActaConstitutiva,
				dtmFechaActaConstitutiva,
				strNotarioActaConstitutiva,
				strNotariaActaConstitutiva,
				strFolioMercantil,
				strObjetoSocial,
				strRepresentantelegal,
				strIdentRepresentanteLegal,
				strNumPoderNotarial,
				dtmFechaPoderNotarial,
				strNotarioPoderNotarial,
				strNotariaPoderNotarial;

select * from tblProveedores;

--Modificar las vistas y demá objetos que se crearona partir de tblProveedores

select * from vwProveedores; 

alter view vwProveedores as
	select idStrRFCproveedor, strRazónSocialProveedor
		from tblProveedores;
--Incorporar a los 4,797 proveedores registrados del Tianguis Digital CDMX (Datos abiertos) https://datos.cdmx.gob.mx/

insert into tblProveedores(idStrRFCproveedor,
					        strRazónSocialProveedor)
	values('&GM060804SN9','MC & GE MULTISISTEMAS DE CONTROL Y GENERACION ELECTRICA SA DE CV'),
          ('AAAG480227','MARIA GUADALUPE DEL SOCORRO AYALA ALVAREZ'),
          ('AABR510221','ROBERTO APATIGA BASILIO'),
          ('AAC0512085GA','ASA AUDITORES CONSULTORES Y ASESORES SC'),
          ('AAC110921D37','ABACOMEX ABASTECEDORA COMERCIAL MEXIQUENSE S.A. DE C.V.'),
          ('AAC140409FE7','ALCOM ALTERNATIVA COMERCIAL S DE RL DE CV'),
          ('AAC2110087G8','ARYCO ARQUITECTURA Y CONSTRUCCIONES SA DE CV'),
          ('AACA810605','JOSE ANTONIO ARANDA CALZADA'),
          ('AAFC780429','CESAR ALVAREZ FLORES'),
          ('AAFM791102','MIGUEL KABIR AZAR FERRAEZ'),
          ('AAFP751202','PATRICIA APARICIO FIGUEROA'),
          ('AAGC900901','CINTHIA GUADALUPE ALVAREZ GOMEZ'),
          ('AAGL600607','LETICIA ALFARO GALLEGOS'),
          ('AAGM710330','MONICA ALTAMIRANO GARCIA'),
          ('AAGM770521','MANUEL ALEJANDRO ALVAREZ GONZALEZ'),
          ('AAHR680808','ROSALIA ALVARADO HINOJOSA'),
          ('AAHV771105','VICTOR MANUEL ALVARADO HINOJOSA'),
          ('AAJ130320E24','ABASTECEDORA AGRARIA Y DEL JARDIN SA DE CV'),
          ('AAJ171129HW2','ALL ASESORIA JURIDICA INTEGRAL, SC'),
          ('AAL2203029U8','ASESORES ADMINISTRATIVOS LUAR SC'),
          ('AAL231109AE8','COOPERATIVA DE ALIMENTOS ALCATRACES SC DE RL DE CV'),
          ('AAM171020GM6','ASERRIN, ASERRAN LOS MADEROS DE SAN JUAN SC DE RL DE CV'),
          ('AAM1912091X6','ANWALT AM, S.A. DE C.V.'),
          ('AAM240116G46','AGUA & MAGDA PETLACALCO XXI S.P.R. DE R.L.'),
          ('AAM2404256R2','ABARROTES Y ARTICULOS PARA MASCOTAS LA DOCE SC DE RL DE CV'),
          ('AAM961204CI1','ASSA ABLOY MEXICO, SA DE CV'),
          ('AAMB790818','BEATRIZ ALDANA MURILLO'),
          ('AAMI741114','IVONNE ALMARAZ MARTINEZ'),
          ('AAN910409I35','INTEGRA ARRENDA S.A. DE C.V. SOFOM E.N.R.'),
          ('AAPM770425','MANUELA AYALA PEREZ'),
          ('AAPO890506','OSVALDO AMADOR PEREZ'),
          ('AAPR930119','JOSE RAMON AYALA PAEZ'),
          ('AAPS840212','SARA ALBARRAN PULIDO'),
          ('AAR060308TT4','ABASTECEDORA ARAGONESA, S.A. DE C.V.'),
          ('AAR160707217','ARCO ALFONSO REYES CONSTRUCCIONES SA DE CV'),
          ('AARF600707','FERNANDO AVALOS REYNOSO'),
          ('AARM931205','MONTSERRAT ARANDIA RIVERA'),
          ('AARR590504','ROBERTO RICARDO ADAN RODRIGUEZ'),
          ('AARV701005','VERONICA ALVARADO RODRIGUEZ'),
          ('AAS0901152XA','ASISTRA, ASESORES EN SISTEMAS DE TRANSITO SA DE CV'),
          ('AAS170928IZA','ACDIESEL Y ASOCIADOS, S. DE R.L. DE C.V.'),
          ('AAS2102109V9','ALMANAZ ASESORIA SA DE CV'),
          ('AAS9901117N7','AV ASESORES, S.A. DE C.V.'),
          ('AAS990720RD4','ARBIOL Y ASOCIADOS S.C.'),
          ('AASF631203','FELIPE DE JESUS ALANIS SALAS'),
          ('AASM701006','MANUEL ALVAREZ SERVIN'),
          ('AAT150123LP7','ASOCIACION DE AGRICULTORES Y TRANSPORTISTAS DE LOS PUEBLOS DE TLALPAN SA DE CV'),
          ('AATM981113','MANOLO ALCANTARA TOLEDO'),
          ('AAVE700717','EDMUNDO AMADOR VITE'),
          ('AAYS640410','SAUL ALVARADO YANEZ'),
          ('ABA040721TS9','ABALAT SA DE CV'),
          ('ABC000511NB7','AMERICAN BEST CONVERSION SA DE CV'),
          ('ABE240327GZ1','A-Z BUSINESS ENTREPRENEURSHIP GROUP, MEXICO SA DE CV'),
          ('ABF181205UQ2','ADMINISTRADORA BFC, S.A. DE C.V.'),
          ('ABI021022UI6','AMPLI BIO SA DE CV'),
          ('ABM1412236L5','ARRENDADORA DE BIENES Y MUEBLES E INMUEBLES S DE RL DE CV'),
          ('ABO1605202L5','ABOUTEK S.A. DE C.V.'),
          ('ABS070727DE6','ALMANZA BUSINESS AND SERVICES S.A DE C.V'),
          ('ABS190308RZA','AIM BIENES Y SERVICIOS S.A.P.I. DE C.V.'),
          ('ABU090616JLA','SOLUCIONES INTEGRALES PREBEO S DE RL DE CV'),
          ('ACA0402033E9','ABASTECEDORA DE COLCHONES Y ACCESORIOS SA DE CV'),
          ('ACA141217U71','AUTOTANQUES CANCER SA DE CV'),
          ('ACA190531IA8','ACASMO SA DE CV'),
          ('ACD190426HZ8','ALESTRA SERVICIOS MOVILES, S.A. DE C.V.'),
          ('ACD2308152J1','APALE  COMERCIALIZADORA Y DISTRIBUIDORA DE PRODUCTOS S DE RL DE CV'),
          ('ACE180918M40','ALYARY CONSORCIO ESTRUCTURAL S.A DE C.V'),
          ('ACF190610EV0','ABARROTES, CARNES FRIAS Y CAFETERIA SC DE RL DE CV'),
          ('ACI130128QK7','ASESORES Y CONSULTORES EN INGENIERIA BIOMEDICA SA DE CV'),
          ('ACI990301DE0','AGNI CONSTRUCCION INTEGRAL S.A. DE C.V.'),
          ('ACK2305233X7','ARTE Y CULTURA KARMA SC DE RL DE CV'),
          ('ACL190717HD1','ALPHA CARE LIMITED SA DE CV'),
          ('ACN220218980','ASESORIA CAPACITADA EN NEGOCIOS RX SA DE CV'),
          ('ACO000712QK7','ABASTECEDOR CORPORATIVO S.A. DE C.V.'),
          ('ACO0707045L1','APEDAT COMERCIAL SA DE CV'),
          ('ACO080407868','AMX CONTENIDO, S.A. DE C.V.'),
          ('ACO110114JD1','ASJAZA CONSTRUCCIONES S.A. DE C.V.'),
          ('ACO110817PM7','A&M COMMUNICATIONS SA DE CV'),
          ('ACO120110NR0','ARCHAN CONSTRUCCIONES S.A. DE C.V.'),
          ('ACO140804E54','AMR CONSULTING S DE RL DE CV'),
          ('ACO150612873','ANSOF COMERCIALIZADORES S.A. DE C.V.'),
          ('ACO150709DM6','ACIPROF CONTADORES, S.A. DE C.V.'),
          ('ACO180713QT9','AYRTON COMERCIALIZADORA SA DE CV'),
          ('ACO191209NW0','ATEITIS COMMERCE S.A. DE C.V.'),
          ('ACO210623639','AZIENDA COMUN S DE RL DE CV'),
          ('ACO220208HT5','AMPER COORDINA SA DE CV'),
          ('ACO2204279I2','ADMAIORA CONSULTING SA DE CV'),
          ('ACO970109P89','ACCOUNTANTS CONSULTANTS SC'),
          ('ACO9911161T2','ACUATERRA CONSTRUCCIONES S.A. DE C.V.'),
          ('ACP150819QD5','ARQUITECTURA EN CONTRATACIONES PUBLICAS SC'),
          ('ACR900208863','ACRILFRASA SA DE CV'),
          ('ACS070629EH6','AGRUPACION DE COMERCIO STEF, S.A. DE C.V.'),
          ('ACS1104285E6','AIJE COMERCIALIZADORA Y SERVICIOS, SA DE CV'),
          ('ACS1210154AA','AGUA CLARA DE SANTA FE SAPI DE CV'),
          ('ACS190319SM4','AGLAR CONSORCIO Y SOLUCIONES SA DE CV'),
          ('ACT100804633','ALTERNA CONSULTORES EN TIC S.A. DE C.V.'),
          ('ACT150219FK1','ALTERNATIVA CREATIVA 360, S.A. DE C.V.'),
          ('ACY170207VDA','ACYGP SA DE CV'),
          ('ACZ191018PP5','AUTOMOVILES CGE DE ZACATECAS, SA DE CV'),
          ('ADA030509RM5','APOYO AL DESARROLLO DE ARCHIVOS Y BIBLIOTECAS DE MEXICO, A.C.'),
          ('ADA1603024G8','ARTE, DISENO Y ARQUITECTURA VACAROM, S.A. DE C.V.'),
          ('ADC001011ADA','ASIENTOS D CHELYN SA DE CV'),
          ('ADC160331TG9','ARKOSTECTUM DISENO Y CONSTRUCCION, S.A. DE C.V.'),
          ('ADC190620JP0','ANDREY DISENOS Y CONFECCION SC DE RL DE CV'),
          ('ADC240227UR9','ARTE Y DIBUJOS CAPULTITLA SC DE RL DE CV'),
          ('ADE0202206H5','DE ARQ. DISENO DE  ESPACIOS SA DE CV'),
          ('ADE170214EE4','ASESORIA EN DEPORTES Y ESPARCIMIENTO SA DE CV'),
          ('ADE200923C68','ASFALT-PRO DESARROLLOS Y EDIFICACIONES S.A DE C.V'),
          ('ADE230808CH2','ABARROTES DENI SC DE RL DE CV'),
          ('ADG131002UZ5','TXAT LATAM, S.A.P.I. DE C.V.'),
          ('ADI050519TR7','ARGUZ DIGITALIZACION SA DE CV'),
          ('ADI0809035M0','AGENCIA DIGITAL, SA DE CV'),
          ('ADI991022KX2','ABASTOS Y DISTRIBUCIONES INSTITUCIONALES, S.A. DE C.V.'),
          ('ADJ100310738','ADJA, S.A. DE C.V.'),
          ('ADM090311R75','ACE DURAFLO DE MEXICO SA DE CV'),
          ('ADM220701JD6','AVM DISTRIBUIDORES MEDICOS, S.A.S. DE C.V.'),
          ('ADO080314CC9','ALSA DOSIMETRIA S. DE R.L. DE C.V.'),
          ('ADS100812R6A','ADVANCED DATA SERVICES SA DE CV'),
          ('AEAA980515','ANGELES JOCELYN ASCENCIO ANGEL'),
          ('AEC1703015D9','ARQUITECTURA ESPACIO Y CIUDAD, S.A. DE C.V.'),
          ('AECJ850528','JESUS SALVADOR ANGELES DE LA CRUZ'),
          ('AECR860331','RICARDO ENRIQUE ARREDONDO CANO'),
          ('AED1403287F8','ARGOLA EDIFICACIONES SA DE CV'),
          ('AEDD860508','DANTE ALBERTO ACEVEDO DIAZ'),
          ('AEE070302142','ADIESTRAMIENTO EMPRESARIAL ESPECIALIZADO A.C.'),
          ('AEE160527631','ASCENDO ELEVADORES Y ESCALERAS SA DE CV'),
          ('AEFG810819','GRISELDA AZPEITIA FAUSTINO'),
          ('AEGA730228','MARIA ANGELICA ARMENTA GARCIA'),
          ('AEGO740713','OMAR ISRAEL AREVALO GONZALEZ'),
          ('AEH841221234','APARATOS ELECTROMECANICOS VON HAUCKE S.A DE C.V'),
          ('AEI101215J51','ASERPEC ECOSOLUCIONES INTEGRALES, S.A. DE C.V.'),
          ('AEM070704RH3','AUDITORIA ESTRATEGICA DE MEDIOS SA DE CV'),
          ('AEM921203RI9','AGRUPACION EMPRESARIAL SA DE CV'),
          ('AEM981209A72','ALTA EMPRESA S.A. DE C.V.'),
          ('AEN1601284A0','AMC ENLACES SA DE CV'),
          ('AEP120109AH9','AUTOPARTES ELECTRICAS PRIDA & JIMENEZ SA DE CV'),
          ('AEP131015RG3','AGA EDIFICACIONES DE PROYECTOS INTEGRALES S DE RL DE CV'),
          ('AEP140708Q93','ARBOL ESTRATEGIAS DE PODER S.A. DE C.V.'),
          ('AEPA841210','ALBERTO ARELLANO PEREZ'),
          ('AEPN720423','NANCY ACEVEDO PINEDA'),
          ('AEQB730714','BEATRIZ GUADALUPE ACEVEDO QUEZADA'),
          ('AERO800103','OLIVER DAVID AJZENMAN RAMIREZ'),
          ('AERV771015','VICTOR MANUEL ARTEAGA ROQUE'),
          ('AES0204292H6','ABC ESTUDIO, S. A. DE C. V.'),
          ('AES210528HU9','ALQUILER Y EVENTOS SAMETZ SC DE RL DE CV'),
          ('AESP700508','PRUDENCIO ARMANDO ARBESU SAENZ DE MIERA'),
          ('AET200515JZ8','A&A EQUIPAMIENTO TACTICO, S.A. DE C.V.'),
          ('AFC120303RGA','APERTUM FIRM CONSULTORES S.C.'),
          ('AFC210422593','AE FNX CONSULTORES SA DE CV'),
          ('AFE1012229J6','AJ FUSION ESTRATEGICA EN COMERCIALIZACION Y ENTRETENIMIENTO SA DE CV'),
          ('AFH2307139N1','ALQUILADORA FAMILIA A H SC DE RL DE CV'),
          ('AFJ230802V48','ARTE FLOR Y JARDIN SC DE RL DE CV'),
          ('AFS220608NY1','ADMINISTRACION FINANCIERA SAM SA DE CV SOFOM ENR'),
          ('AFV150721563','AGENCIA FUNERARIA Y VELATORIOS GARCIA SA DE CV'),
          ('AGH691212170','ALTIERI GAONA Y HOOPER SC'),
          ('AGM201125KJA','ALFA GM S.A. DE C.V.'),
          ('AGP0401224R5','ARTES GRAFICAS EN PERIODICO SA DE CV'),
          ('AGR150702P33','ARLOESI GROUP, SA DE CV'),
          ('AGU020129T5A','CORP TOTAMEX S.A. DE C.V.'),
          ('AHA190321582','ADEM HMO ANNAKPOK SERVICIOS SA DE CV'),
          ('AHE1608031B8','AYMA HERRAMIENTAS S.A DE C.V.'),
          ('AHO0003081E3','ACCESOS HOLOGRAFICOS, SA DE CV'),
          ('AIAJ770801','JOSUE OSVALDO ARCINIEGA ALVAREZ'),
          ('AIC100210P51','ACCURACY IT CONSULTING, S.A. DE C.V.'),
          ('AIC111115I30','AGENCIA INMOBILIARIA Y DE CONSTRUCCION M&D SA DE CV'),
          ('AID0410218P9','ALIMENTOS CON IDEA SA DE CV'),
          ('AID1905141M3','AR INGENIERIA EN DRAGADOS, S.A. DE C.V.'),
          ('AIGC590527','CESAR ALBERTO AVILES GALVAN'),
          ('AIL1909239L8','ALPHA ILI SA DE CV'),
          ('AIM000119699','AXEL INSTRUMENTS DE MEXICO S.A. DE C.V.'),
          ('AIM1105267V3','ARQUITECTURA INGENIERIA MECANICA GRIJALVA SA DE CV'),
          ('AIN090305RW9','ADAMA INTERNACIONAL SA DE CV'),
          ('AIN121128SL5','ASESORES INTEGRALES DE NEGOCIOS GLOBALES BRABO S.A. DE C.V.'),
          ('AIN150406TJ0','ACCENDO INDUSTRY SA DE CV'),
          ('AIN201124HD3','ANMA INGENIERIA SA DE CV'),
          ('AIN961212AW1','AD INTERNATIONAL SA DE CV'),
          ('AIPA991118','ALEXIS ADRIAN AVILES PLAZA'),
          ('AIR070305LY3','APLICACIONES INNOVADORAS EN RECURSOS ENERGETICOS SA DE CV'),
          ('AIR101004AU7','AIRFACTORY S DE RL DE CV'),
          ('AIRL851015','LEVIN OMAR AVINA RANGEL'),
          ('AIS091015H50','ABASTECEDORA DE INSUMOS PARA LA SALUD SA DE CV'),
          ('AIS110118Q88','ARQUITECTURA, INGENIERIA, SUPERVISION Y ASESORIA AISA SC'),
          ('AIS960828LB4','ASESORIA INGENIERIA SUMINISTRO Y SERVICIO, SA DE CV'),
          ('AISC890218','JOSE CARLOS AVILA SOSA'),
          ('AISG620803','GUSTAVO AVILES SUAREZ'),
          ('AIT110826GQ9','ASESORIA INFORMATICA DE TI EN MEXICO SAPI DE C.V.'),
          ('AIT2302213F4','ARTEAGA IMPRESIONES Y TODO EMPAQUE SA DE CV'),
          ('AITV700311','VICTOR ARIZMENDI TRUJILLO'),
          ('AIV1709295F2','ALTA INGENIERIA VIRREM SA DE CV'),
          ('AJC150922Q95','ARCA JOM CONSTRUCCIONES SA DE CV'),
          ('AJC240202LQ5','ARTESANIAS JESUS CARPINTERO SC DE RL DE CV'),
          ('AJI091125HG0','ABASTECEDORA JIRESA, S.A. DE C.V.'),
          ('AJM2310256KA','ABARROTES JUANITO EL MARRANITO SC DE RL DE CV'),
          ('AJO200826758','ARTESANAL JOVEL SC DE RL DE CV'),
          ('AJO230808LM9','AJOLOSHOP SC DE RL DE CV'),
          ('AKA080904US4','ALMACENADORA KAVE SA DE CV'),
          ('AKR1811128W8','ALMEGA KREATIVO, S DE R L DE C V'),
          ('ALA160406LG1','AUDICIONES LATINAS S A P I DE CV'),
          ('ALA200107JTA','AJ LABELS S.A. DE C.V.'),
          ('ALA230630E78','ADRI LASHES SC DE RL DE CV'),
          ('ALA860227ID6','ACCESORIOS PARA LABORATORIOS S.A. DE C.V.'),
          ('ALC180417BC5','ALCOHTOX S.A. DE C.V.'),
          ('ALE110506L56','ALERCORP S. DE R.L. DE C.V.'),
          ('ALE231109US7','ALLENAY SC DE RL DE CV'),
          ('ALI161018BX7','ADMAGA LIMPIEZA SA DE CV'),
          ('ALI1702243I6','ALIVIA S.A DE C.V'),
          ('ALL141128TY0','ARMOR LIFE LAB, S.A. DE C.V.'),
          ('ALM2308071A6','ABARROTES LLUVIA, MAR, ISLA Y ARENA SC DE RL DE CV'),
          ('ALS130731R68','EQUIPO Y DISTRIBUCION DE MAQUINARIA MIKA S.A. DE C.V'),
          ('ALW230918410','ALWAYS-PRECIOUS SC DE RL DE CV'),
          ('AMA070221P16','AMAREF SA DE CV'),
          ('AMA120305FM5','ALTA MECANICA AUTOMOTRIZ DE VANGUARDIA ROAL, S. A. DE C. V.'),
          ('AMA221221PF4','ARQUITECTURA MADERO SA DE CV'),
          ('AMA460703AU4','ACADEMIA MEXICANA DE ARTES Y CIENCIAS CINEMATOGRAFICAS, A.C.'),
          ('AMB990820C34','AMBIEN SA DE CV'),
          ('AMD000515SPA','ARTICULOS Y MATERIALES DUBO, S.A. DE C.V.'),
          ('AME0306023K0','ASSOLUCIONES DE MEXICO S.A. DE C.V.'),
          ('AME031124KG6','AGD MEDICAL S. A. DE C. V.'),
          ('AME051208JD9','ATYDE MEXICO S.A. DE C.V.'),
          ('AME1003257X4','ABC MEDIOS, S.A. DE C.V.'),
          ('AME120116DPA','ANGO MEDICAL SA DE CV'),
          ('AME140509RL5','AMERICASOLAR SA DE CV'),
          ('AME170908MU3','ABAZIRO MEXICO SC DE RL DE CV'),
          ('AME180118SQ3','AWALAB DE MEXICO S.A. DE C.V.'),
          ('AME2007032Q7','ATK MEDICAL SA DE CV'),
          ('AME220824K20','LA ACANTITA DE MEXICO S DE RL DE CV'),
          ('AME950215SE9','ALQUILADORA MEXICO SA DE CV'),
          ('AME980225BY3','AUDITOR DE MEDIOS, S.A. DE C.V.'),
          ('AME980723L77','ASTROLLANTAS MEXICO SA DE CV'),
          ('AMG030818P25','AUTOBUSES METROPOLITANOS GR SA DE CV'),
          ('AMH1304042U1','AMBIENTE Y MEDICIONES HIDRAULICAS SA DE CV'),
          ('AMI080815KY8','AMIDALA SA DE CV'),
          ('AMI231109EQ0','ALITAS MIKE SC DE RL DE CV'),
          ('AMI9003247N6','ASESORIA MULTIPLE INTEGRADA S.A. DE C.V.'),
          ('AML8907178U6','ARTICULOS MEDICOS Y DE LABORATORIO SA DE CV'),
          ('AMO170220ARA','ARO MOBEL SA DE CV'),
          ('AMS210914TW7','ALSER MEXICO SERVICIOS INTEGRALES DE FUMIGACION Y MANTENIMIENTO SA DE CV'),
          ('AMS971028532','ASOCIACION MEXICANA DE SECRETARIOS DE DESARROLLO ECONOMICO AC'),
          ('AMT560307LY4','AUTOBUSES MEXICO-TOLUCA-ZINACANTEPEC Y RAMALES SA DE CV'),
          ('AMU240221GZ4','ANTOJITOS LOS MUNECOS SC DE RL DE CV'),
          ('ANG1806078D9','ALDEBARAN N&G S DE RL DE CV'),
          ('ANG190710TQ1','COOPERATIVA ANGERIVA SC DE RL DE CV'),
          ('ANG191010D41','COOPERATIVA ANGTOM SC DE RL DE CV'),
          ('ANO100329HX2','ANAEL DEL NOROESTE S.A. DE C.V.'),
          ('ANP191106BB0','AGENCIA DE NOTICIAS Y PUBLICIDAD POR INTERNET QUERETARO 360 SAS'),
          ('ANS100217CK2','AV NETWORK SERVICE, S.A. DE C,V.'),
          ('ANS121012N58','ASESORES DE NEGOCIOS SYB, S.A. DE C.V.'),
          ('ANT110420SY2','AURUS NIVEL TOTAL, S. DE R. L. DE C.V.'),
          ('ANU930617MQ5','ASOCIACION NACIONAL DE UNIVERSIDADES E INSTITUCIONES DE EDUCACION SUPERIOR DE LA REPUBLICA MEXICANA, A.C'),
          ('AOBE860707','ENRIQUE FROYLAN ALONSO BALTAZAR'),
          ('AOC131111AI5','ARRENDAMIENTO Y OBRAS DE CONSTRUCCION RILO SA DE CV'),
          ('AOC160517GJ8','A1 OPERADORA COMERCIAL DE SERVICIOS Y PUBLICIDAD S.A. DE C.V.'),
          ('AOEA690319','ARTEMIO ADOLFO ACOSTA ESCOBAR'),
          ('AOGD860628','DULCE MARIA ALONSO GUZMAN'),
          ('AOHL040430','LISSET AMERICA ACOSTA HERNANDEZ'),
          ('AOIC710727','MARIA DEL CARMEN ACOSTA ILAGOR'),
          ('AOJY780823','YESIKA GUADALUPE AOYAMA JIMENEZ'),
          ('AOP1609013Y1','AD OPUS, S.A. DE C.V.'),
          ('AOR100223QK0','AGROMOR ORNAMENTALES S.P.R. DE R.L.'),
          ('AOYF780311','FILIBERTO AGORDO YEDRA'),
          ('APC231016LE1','ARQUILAB DE PRODUCTOS COMERCIALES S DE RL DE CV'),
          ('APC831201376','ALFA PROVEEDORES Y CONTRATISTAS, SA DE CV'),
          ('APD200814S83','AD PLATAFORMA DIGITAL DE TURISMO S A P I DE CV'),
          ('API160902RI3','ASEO PRIVADO INSTITUCIONAL S.A. DE C.V.'),
          ('API2406249B4','ABARROTES PIPPEN SC DE RL DE CV'),
          ('API851021AJ8','APICAL S.A. DE C.V.'),
          ('APM160502NA7','ARSENAL PROTECTION MEXICO S. DE R.L. DE C.V.'),
          ('APN1302222W2','ADMINISTRADORA DE PROPIEDADES Y NEGOCIOS SA DE CV'),
          ('APO2207216B9','ALIANZA DE PROYECTOS Y OBRAS ZXY S DE RL DE CV'),
          ('APO231103E16','ALEXAS POSTRES SC DE RL DE CV'),
          ('APR160922843','ANOTHER PRODUCTION COMPANY S DE RL DE CV'),
          ('APS150511JA0','AM PROMOTION STORE SA DE CV'),
          ('APS201215JT8','ACTUACION PROFESIONAL EN SERVICIOS BETA S.A. DE .CV.'),
          ('APS2308232M3','ALONDRA PRODUCCIONES SV SC DE RL DE CV'),
          ('APT130626TS3','ASOCIACION DE PRODUCTORES Y TRANSPORTISTAS DEL CAMPO DE MAGDALENA AC'),
          ('APT1709073D6','ASESORIA Y PROYECTOS 3 CAUTIO S.A. DE C.V.'),
          ('APT210222R63','AGRO PRODUCTORES Y TRANSPORTISTAS DE AGUA DE PETLACALCO Y TOPILEJO SPR DE RI'),
          ('APV040521RP0','ASEGURADORA PATRIMONIAL VIDA S.A. DE C.V.'),
          ('APW090411DB3','ALTA PREVENCION WT MEXICO, S.A. DE C.V.'),
          ('AQM980720UU4','ASOCIACION QUIMICA MECANICA ELECTRICO INSTRUMENTOS SA DE CV'),
          ('AQU160322D53','ACCION QUIMICA SA DE CV'),
          ('AQU1711135L4','AQUASEO, S.A. DE C.V.'),
          ('ARA230505SQ1','ABASTECEDORA RAZVAN SA DE CV'),
          ('ARA800729N99','ASESORES EN RADIACIONES S.A.'),
          ('ARC120626K39','ARCAFA, SA DE CV'),
          ('ARC190212637','AGROEMPRENDEDORES RURALES DE LA CDMX SC DE RL DE CV'),
          ('ARE190326HS7','ADMINISTRACION DE RECURSOS PARA LAS EMERGENCIAS S.A. DE C.V.'),
          ('ARH060304NH1','AMARO REYNA Y HERRERO CONSULTORES, S.C.'),
          ('ARI100513K13','ALVAREZ RANGEL INSTALACIONES SA DE CV'),
          ('ARI1803088M7','ARISHAKA S DE RL DE CV'),
          ('ARI1806138A6','ARIMECI S.A. DE C.V.'),
          ('ARI181026UZ7','ARISTELECOM SA DE CV'),
          ('ARI2307125W9','AURICULOTERAPIA RINKASHIKIKA SC DE RL DE CV'),
          ('ARK190822556','ARKEOMETRO SA DE CV'),
          ('ARL191022T80','ADMINISTRACION DE RECURSOS LAGOON SA DE CV'),
          ('ARO220729RL1','AMOXCALLI ROSITA SC DE RL DE CV'),
          ('ARQ970312AP1','ARQUINE SA DE CV'),
          ('ARS1502105X5','AMBULANCES AND RESCUE SERVICES S DE RL DE CV'),
          ('ASA200728PI7','APORTANDO SOLUCIONES DE ARCHIVO Y GESTION DOCUMENTAL SC'),
          ('ASA230704V56','ARTESANIAS SAKU SC DE RL DE CV'),
          ('ASB170825EZ0','AS&BLI S DE RL'),
          ('ASC110523H22','AL-TEC SOLUCIONES PARA CROMATOGRAFIA, S.A. DE C.V.'),
          ('ASC180921IR7','ASFALTOS Y SERVICIOS CONSTRUCTIVOS S.A. DE C.V.'),
          ('ASE011019HP8','AFECTIVIDAD Y SEXUALIDAD AC'),
          ('ASE211211V86','AKTRADE SERVICIOS SA DE CV'),
          ('ASE930924SS7','EDENRED MEXICO S.A. DE C.V.'),
          ('ASE950901TIA','ASECA SA DE CV'),
          ('ASG950531ID1','SOFIMEX INSTITUCION DE GARANTIAS, S.A.'),
          ('ASH091019T76','ARRENDADORA SHEL HA, S.A. DE C.V.'),
          ('ASI0010235L2','AURA SERVICIOS INTEGRALES Y COMUNICACIONES S.A. DE C.V.'),
          ('ASI010530AT0','ASIAMI, S.A. DE C.V.'),
          ('ASI030129LD0','ABASTO Y SERVICIOS INTEGRADOS, S.A. DE C.V.'),
          ('ASI040113B86','ASESORIA Y SERVICIO INTEGRAL BIOMEDICO,S.A DE C.V.'),
          ('ASI0501142C2','ABASI SERVICIOS INTEGRALES, S.A. DE C.V.'),
          ('ASI170705BC3','A&E SMART INNOVATION, S.A. DE C.V.'),
          ('ASI1908165C1','ASESORIA EN SUSTENTABILIDAD, INGENIERIA Y ADMINISTRACION, SA. DE C.V.'),
          ('ASI8310075Z2','ACERO Y SERVICIO INDUSTRIAL, S. A. DE C. V.'),
          ('ASM070207HP3','CONDUENT SOLUTIONS MEXICO S. DE R.L. DE C.V.'),
          ('ASM200626RVA','ALV STORE MX SA DE CV'),
          ('ASM210521K14','ASTRA SHIPPING MARKET S.A DE C.V'),
          ('ASN1708216B3','ACCOUNTING SERVICES NOGAB S.C.'),
          ('ASO1311127U8','ACTUARIAL SOLUTIONS, S.C.'),
          ('ASO140430K26','ACUBICA SOLUCIONES SA DE CV'),
          ('ASO1406273Q5','ASHA SOLUTION, S.A. DE C.V.'),
          ('ASO1507303P5','AJEDREZ-EVENTOS Y SOLUCIONES S.A. DE C.V.'),
          ('ASO210203BCA','AUTOMOTRIZ SOUL SA DE CV'),
          ('ASO831213FG7','ACIDOS Y SOLVENTES, S.A. DE C.V.'),
          ('ASP190502QB6','ASPIREFUL S.A. DE C.V.'),
          ('ASP220621KC5','ARMOT SEGURIDAD PRIVADA Y SERVICIOS INSTITUCIONALES, S.A. DE C.V.'),
          ('AST110908SZ3','ACTUARIUS SERVICIOS TOTALES S.C.'),
          ('AST160620IA0','ASESORIA Y SERVICIOS EN TRITURACION RECICLAJE, ASFALTO Y CONCRETO, S.A. DE C.V.'),
          ('AST190327J64','ABF, SERVICIOS TECNICOS SC'),
          ('AST240306687','ANTOJITOS STIVY SC DE RL DE CV'),
          ('AST900830922','ASTECI SA DE CV'),
          ('ASU200604LV3','AUZOA SUMINISTROS SA DE CV'),
          ('ASV191001H2A','ASVFONZ S.A. DE C.V.'),
          ('ATA201006DF6','ANKA TECHNOLOGY & SERVICES SA DE CV'),
          ('ATC120720JK7','ADVANCED TECHNICAL CONCEPTS, S.A. DE C.V.'),
          ('ATC170502UJ2','AUTOMATIZACIONES DE TECNOLOGIA Y CONTROL S. DE R.L. DE C.V.'),
          ('ATC210304HF7','ASCENSORES TECNOLOGIA CASTILLO SAS DE C.V'),
          ('ATC210604G51','ABARROTES LAS 3 CHINITAS SC DE RL DE CV'),
          ('ATE141121H41','ATICA TELECOM S DE RL DE CV'),
          ('ATE1606112E3','ALUR TEK S DE RL DE CV'),
          ('ATE8803043P7','ABASTECEDOR TERAPEUTICO, S.A. DE C.V.'),
          ('ATE970113FK4','ACUMEN TELECOMUNICACIONES S.A. DE C.V.'),
          ('ATF101112BS3','ALTA TECNOLOGIA EN FILTRACION DE AIRE SA DE CV'),
          ('ATI110906IG6','AMARELLO TECNOLOGIAS DE INFORMACION S.A. DE C.V.'),
          ('ATI240216LP3','LAS ARTESANAS TIBETANAS SC DE RL DE CV'),
          ('ATK230714DJ7','ARTE Y TEXTILES KUSAM SC DE RL DE CV'),
          ('ATM230718LI4','DE LA ABUELA A TU MESA SC DE RL DE CV'),
          ('ATN080130JH5','AUTOMOTRIZ Y TODO EN NEUMATICOS, S.A. DE C.V.'),
          ('ATR020709BP7','AMERICAN TRUST REGISTER, S.C.'),
          ('ATR190617F45','THE ART OF TRAVEL SAS DE CV'),
          ('ATR2403259P9','ALIMENTOS TIPICOS REGIONALES DE VERO SC DE RL DE CV'),
          ('ATS180228LX6','ARKAD TECHNOLOGY SOLUTIONS SA DE CV'),
          ('ATS9103222B1','ADOLFO TREJO SERVICIOS ESPECIALES, S.A. DE C.V.'),
          ('ATT200807IT2','ARRENDADORA EL TRIDENTE DE TRITON SA DE CV'),
          ('ATV111115BV5','ALIANZA TORRE Y VEGA SA DE CV'),
          ('AUCG850616','GLORIA ISABEL AGUILAR CASTANEDA'),
          ('AUDR811112','ROSA ANGUIANO DUARTE'),
          ('AUFF720822','FERCIA ADELAIDA ANGULO FERNANDEZ'),
          ('AUGJ821207','JORGE ANTONIO ACUA GONZALEZ'),
          ('AUGR620308','REYNALDO ANGULO GARCIA'),
          ('AUMG010909','GLORIA ISABEL ACUNA MENDEZ'),
          ('AUML740612','LUIS IVAN AGUILAR MENDOZA'),
          ('AUMR790106','REYNA ESTHER AGUILAR MARTINEZ'),
          ('AUMR920623','ROSARIO ASUNCION MARTINEZ'),
          ('AUMV540202','VICTOR RAFAEL AGUILAR MOLINA'),
          ('AUN081126CD8','ASFALTOS UNIVERSALES S.A DE C.V'),
          ('AUN960327J48','A1, S.A. DE C.V.'),
          ('AUN990119MYA','ABC UNIFORMES S.A DE C.V'),
          ('AUR091204KG9','AUROVIRTUAL SA DE CV'),
          ('AUR820625QE0','ARQUITECNIA URBANA, S.A. DE C.V.'),
          ('AURM550627','MARGARITA MARIA AGUILAR RIVERO'),
          ('AURM650425','MARCO ANTONIO AGUILAR RUIZ'),
          ('AUSE770127','EDGAR JONATHAN ALQUICIRA SAN GERMAN'),
          ('AUSM781117','MARIBEL AGUILAR SEBASTIAN'),
          ('AUT011231H46','AUTFLO SA DE CV'),
          ('AUT661101NZ5','AUTOMUNDO S.A. DE C.V'),
          ('AUT9605166C2','AUTOKIMIA, S.A. DE C.V.'),
          ('AUT991215UZ2','AUTOANGAR S.A. DE C.V.'),
          ('AVA230630CKA','ARCA DEL VALLE SA DE CV'),
          ('AVJ210920L10','AGENCIA DE VIAJES JERACE, S.A. DE C.V.'),
          ('AVO131018RA2','AVOLAT SA DE CV'),
          ('AWH130109KV9','APP WHERE S.A. DE C.V.'),
          ('AXM031027L55','AXMILAB, S.A. DE C.V.'),
          ('AXS0801184Y9','ARQUITECTURA XTREMA 7 SA DE CV'),
          ('AXT940727FP8','AXTEL SAB DE CV'),
          ('AZC1902225F3','ASSAD ZAVALA CONSTRUCCIONES S.A. DE C.V.'),
          ('AZO230619U12','APPLE ZONE SC DE RL DE CV'),
          ('BAC920106U98','BIODIST, S.A. DE C.V.'),
          ('BAEC750523','CELIA ALEJANDRA BARRETO ESTRADA'),
          ('BAFM780703','MARCELA BARRANCO FIERRO'),
          ('BAGE751121','EDUARDO BAUTISTA GUTIERREZ'),
          ('BAGG520527','GUSTAVO ARMANDO BLANCO GONZALEZ'),
          ('BAI900920KX1','BAHER ASESORES INTEGRALES SA DE CV'),
          ('BAJC840316','CARLOS IVAN BAUTISTA JIMENEZ'),
          ('BAL960819M20','BLINDAJES ALEMANES SA DE CV'),
          ('BALL910112','LUIS ALFREDO BLANCAS LEON'),
          ('BALR750608','REBECA ERIKA BARONA LARRANAGA'),
          ('BAMA930815','ANA RUTH BARRERA MARROQUIN'),
          ('BAMB660818','BEATRIZ BARRIOS MINGUELA'),
          ('BAMN820827','NAIM BAJOS MARTINEZ'),
          ('BAO101215BX6','BA ARCHITECTURE OFFICE S A P I DE CV'),
          ('BAOS850522','SARA ESTHER BANOS OCHOA'),
          ('BAP000512BP0','BIOMETRIA APLICADA SA DE CV'),
          ('BAP230928LU8','BOUTIQUE ATRAPASUENOS PEKKE''S SC DE RL DE CV'),
          ('BAPX801228','XIMENA CINTHIA BRAVO PEREZ'),
          ('BAQ181026CV3','BAQUERIZO SA DE CV'),
          ('BAR070209DS6','BIOMEDICS & REHABILITACION S.A. DE C.V.'),
          ('BAR190621EY8','COOPERATIVA LOS BARTOLOS SC DE RL DE CV'),
          ('BAR2011277I4','BUTE ARBORICULTURA S DE RL DE CV'),
          ('BAR940701GG1','DEL BARRIO Y CIA., SC'),
          ('BARC010416','CARLOS EDUARDO BALEON RODRIGUEZ'),
          ('BAS120808A4A','BUFETE ASALI SC'),
          ('BAS141216EC9','BI APLICACIONES Y SOLUCIONES S A P I DE CV'),
          ('BAS210506KY9','BASASEACH SA DE CV'),
          ('BAS210706UV3','BIENES & SERVICIOS MULTIAVANZADOS SA DE CV'),
          ('BASR880428','ROBERTO CARLOS BLANCO SENTIES'),
          ('BAT200220LB7','BATRAK, S.A. DE C.V.'),
          ('BAT970825LM8','BUFETE AMBIENTAL TECNICO SA DE CV'),
          ('BATL000831','LESLI BARRERA TAPIA'),
          ('BAU170428QF1','BAUQUALITAT, S.A. DE C.V.'),
          ('BAVB791125','BENJAMIN BANOS VAZQUEZ'),
          ('BAVJ950111','JANET ISAI BARRERA VEGA'),
          ('BAY1303138CA','BAYACORA, S.A. DE C.V.'),
          ('BBD240308Q27','BOUTIQUE BELLOS DETALLES SC DE RL DE CV'),
          ('BBE180607T85','BTL BETTERLAND S DE RL DE CV'),
          ('BBM220202JH1','BLACK BEAR MOBILITY CONSULTING SAS'),
          ('BCA9307293P1','BOMBAS CENTRIFUGAS ALEMANAS SA DE CV'),
          ('BCA970605BM7','BUFETE DE CONSULTORIA APLICADA SC'),
          ('BCD140818FMA','BINOMIO CONSULTORIA DISRUPTIVA SA DE CV'),
          ('BCD7504116F8','BUFETE DE CONSTRUCCIONES DELTA, S.A. DE C.V.'),
          ('BCF231109N44','BANQUETES COMIDA FELIZ SC DE RL DE CV'),
          ('BCN230613GE9','BEAUTY CREATIONS NAILS SC DE RL DE CV'),
          ('BCO100514U82','BAALAM CONSTRUCTORA S.A. DE C.V.'),
          ('BCO101122JN6','BLEGAM CORP SA DE CV'),
          ('BCP980522SU6','BENJAMIN CORTES PRODUCTOS CONTRA INCENDIO S.A DE C.V.'),
          ('BCS021118HR2','BAME CONSTRUCCION Y SUPERVISION DE OBRAS SA DE CV'),
          ('BCS200127LG7','BUFETE CORPORATIVO SMITH Y ASOCIADOS DE MEXICO S.A. DE C.V.'),
          ('BCS200324RE1','BETMON CASTY SERVICIOS INTEGRALES SAS DE CV'),
          ('BCT23110961A','BIZIAANDA EL CAFE TAL. COMO TE GUSTA SC DE RL DE CV'),
          ('BDE240222AUA','BRENFO DEVELOPMENT SA DE CV'),
          ('BDI160427CR8','SEEGENE MEXICO SAPI DE CV'),
          ('BDI161222Q43','B DRIVE IT, S.A. DE C.V.'),
          ('BDI230616TE5','BLANCHEZ DISTRIBUIDOR SA DE CV'),
          ('BDR230130CGA','BYA DRAFT SA DE CV'),
          ('BDS2404125Q8','BOUTIQUE Y DECORACIONES SOLEDAD SC DE RL DE CV'),
          ('BEAB821219','BENJAMIN BECERRA ABSALON'),
          ('BEB150324939','B&E EMPLOYEE BENEFITS S DE RL DE CV'),
          ('BEE091202P13','BEMI ESPACIOS DE ESTACIONAMIENTO SA DE CV'),
          ('BEE2211233S2','BARBERIA Y ESTILISMO ESCUADRON 201 SC DE RL DE CV'),
          ('BEF191114290','BEFIRSTBUSS SA DE CV'),
          ('BEFG731031','GUILLERMINA BELTRAN FLORES'),
          ('BEG141128JD5','BUFETE EMPRESARIAL GTI, S.A. DE C.V.'),
          ('BEGL800226','LISETTE ALEJANDRA BELTRAN GONZALEZ'),
          ('BEIN880103','NATHALIE DOLORES BENHUMEA ISLAS'),
          ('BEL200323CS4','BELL-KROM S.A DE C.V.'),
          ('BEM221229KS6','BARBEROS Y ESTILISTAS DE MEXICO ESTUDIO DE BELLEZA SC DE RL DE CV'),
          ('BEN150323QE4','BUFETE ENERGETICO S A P I DE CV'),
          ('BERA760712','AIDE BERMEJO RODRIGUEZ'),
          ('BERF880901','FERMIN BEDOLLA ROJAS'),
          ('BES0906299F8','BNI ESTACIONAMIENTOS S.A DE C.V'),
          ('BES210707L72','BANQUETERA Y EVENTOS SOLIS SA DE CV'),
          ('BEX120903F35','BE EXPERTISE S.A. DE C.V.'),
          ('BFA210802T9A','BCB FARMA SA DE CV'),
          ('BGA210721IM9','BULDING GAME, S.A. DE C.V.'),
          ('BGO120724M87','BANQUETES GOOCABEE SA DE CV'),
          ('BGR770629871','LA B GRANDE, S.A. DE C.V.'),
          ('BHL130614LQ4','BIOSYSTEMS HLS, SA DE CV'),
          ('BIA881209UA6','BUSTINZAR E INGENIEROS ASOCIADOS EN MOTOCICLISMO S.A. DE C.V.'),
          ('BIB0502108A1','BIBLIONEP SA DE CV'),
          ('BIB121211ND9','BUFETE DE INGENIERIA BAUEN S.A. DE C.V.'),
          ('BIB1703017K9','BIBLIORION S.A. DE C.V.'),
          ('BIC1010137G6','BICENTEL SA DE CV'),
          ('BIC160218KP6','BICLOREX SA DE CV'),
          ('BIC1906102G9','BIOCARSA S.A. DE C.V.'),
          ('BID150907TY0','BAAST IDEAS SA DE CV'),
          ('BIN190129BP6','BALC INGENIERIA S.A. DE C.V.'),
          ('BIN191105FH9','BLUE INTERPUB S.A. DE C.V.'),
          ('BIN200213516','BIOMOTEK INTERNACIONAL SA DE CV'),
          ('BIN200701E91','BKB INFRAESTRUCTURA, S.A.S. DE C.V.'),
          ('BIO991022NE6','BIOGEMINIS SA DE CV'),
          ('BIS9609241U0','BBA INGENIERIA Y SERVICIO INDUSTRIAL S.A. DE C.V.'),
          ('BIVA800725','ADRIANA BRIBIESCA VAZQUEZ'),
          ('BJE1308202Z2','BACHEO JET S. A. DE C. V.'),
          ('BLC041202CY4','BARRIGUETE LOPEZ CRUZ Y CIA., S.C.'),
          ('BLI231221ME6','BLIDO SA DE CV'),
          ('BLU870710IK7','BODEGA DE LLANTAS UNIVERSIDAD, S.A. DE C.V.'),
          ('BMA080306AGA','B2B MAIL & COURIER SERVICES S DE RL DE CV'),
          ('BMC1006093J8','BAJA MAR DE CORTES SA DE CV'),
          ('BMC1904047U9','BEST MEXICAN CONSTRUCTOR SA DE CV'),
          ('BME130411JC2','BITISHA MEXICO S.A. DE C.V.'),
          ('BME160805JHA','BIO MERIK, S.A.P.I. DE C.V.'),
          ('BMG191127GF7','BRINCOLINES MG SC DE RL DE CV'),
          ('BMI170302AN8','BELKER MEDICAL INTERNATIONAL  S.A. DE C.V.'),
          ('BMS181015152','BURO MEXICANO DE SOLUCION TECNICA, S.C.'),
          ('BNA230719QG6','BROTHER NAIL ARTISTS SC DE RL DE CV'),
          ('BOAM730111','MIGUEL EMILIANO BOSQUES ALARCON'),
          ('BOAR511125','RICARDO BORBOLLA ACOSTA'),
          ('BOGD930618','DAVID BOLIGAN GARCIA'),
          ('BOLY880207','YAZMIN ADRIANA BOLANOS LOPEZ'),
          ('BOM100525RQ5','BOMBTEC S.A. DE C.V.'),
          ('BOP170315US1','BAYCA OBRAS Y PROYECTOS, S.A. DE C.V.'),
          ('BORL830730','LUIS EFREN BOCANEGRA ROMERO'),
          ('BOS041208B71','BAJA OFFICE SUPPLIES SA DE CV'),
          ('BOS210820HPA','BOSTOMER SA DE CV'),
          ('BOSG651220','GABRIELA BOCHELEN SUAREZ'),
          ('BPM100609A96','BREAK POINT MKT SA DE CV'),
          ('BPM230428986','BAAM PROYECTOS Y MANTENIMIENTO TECNOLOGICO SA DE CV'),
          ('BPR021017CF8','BILLIARD PROJECT S.A. DE C.V.'),
          ('BPR180312PDA','BACAB PRODUCCIONES, S.A. DE C.V.'),
          ('BPS1812281EA','BLOND PRESTADORA DE SERVICIOS SC'),
          ('BRA1806018T3','BRANSER S.A. DE C.V.'),
          ('BRA190225K65','BIOMEDICA RAROCH SA DE CV'),
          ('BRC180215C28','BORJA RENDON CONSULTORES, S.C.'),
          ('BSC200120BYA','BERKLIN SERVICIO CON CALIDAD S.A. DE C.V'),
          ('BSE030903ER5','BIOTECNOLOGIA Y SERVICIOS S.A. DE C.V.'),
          ('BSE161122EC6','BIMEDITECH SOLUCIONES EN EQUIPAMIENTO MEDICO SA DE CV'),
          ('BSE1901119R3','BRANES SOLUCIONES EMPRESARIALES SA DE CV'),
          ('BSG020207CW4','BUSINESS SOLUTIONS GROUP SA DE CV'),
          ('BSH180921UG7','BEYKA SHELDON S.A. DE C.V'),
          ('BSI070223LK4','BASVEC SERVICIOS INTEGRALES SA DE CV'),
          ('BSL221124GJ8','BIOMEDICO SLANEY SA DE CV'),
          ('BSO120214N35','BJFIT SOLUTIONS S DE RL DE CV'),
          ('BSO121023LI7','BASSER SOLUTIONS S.A DE C.V.'),
          ('BSO150615NG4','BRIK SOLUTIONS SA DE CV'),
          ('BSO170420E40','BIDG SOLUCIONES, S.A. DE C.V.'),
          ('BSO180928FR0','BDLR SOLUCIONES SA DE CV'),
          ('BSO1906041D9','BORMAN SOLUCIONES SA DE CV'),
          ('BSO240130LF7','BROPARTNERS SOLUTIONS SAS DE CV'),
          ('BSS080114HT6','BIOCONSULTORES SOLUCIONES SUSTENTABLES SC'),
          ('BSU930628DJ5','EL BC SUPPLY SA DE CV'),
          ('BSV170926MQ4','BIENESTAR SEGURO VELSUA SC DE RL DE CV'),
          ('BTA190430ITA','BISEL TALLER DE ARQUITECTURA SA DE CV'),
          ('BTA231109KT0','BARBACOA EL TAQUITO SC DE RL DE CV'),
          ('BTE110420MC8','BRAN TECHNOLOGY S DE RL DE CV'),
          ('BTE110429T3A','BEETS TECHNOLOGIES S DE RL DE CV'),
          ('BTG2004166Q8','BANANA TECHNOLOGIES GROUP S DE RL DE CV'),
          ('BTI030929DE6','BRUSON SKY TRACK SA DE CV'),
          ('BTM930714LV5','ALSTOM FERROVIARIA MEXICO S.A. DE C.V.'),
          ('BTS140220622','BLATT TRADE AND SERVICES SA DE CV'),
          ('BTS201117656','BUNKER 369 S.A. DE C.V.'),
          ('BUBL850306','LUIS FELIPE BUTRON BAHENA'),
          ('BUD1111164A2','BUDGETO, S.A. DE C.V.'),
          ('BUGA900312','ABRAHAM CRISTOBAL BUENDIA GRANADOS'),
          ('BUPA750615','ANA MARIA BUENO PANG'),
          ('BUR140220RW5','BURCH, S.A. DE C.V.'),
          ('BUS010420QK1','BUSERDI, S.A. DE C.V.'),
          ('BVA070813DY3','BENGALA VALET SA DE CV'),
          ('BVA220425FJ7','BUENDIA Y VARIEDAD SA DE CV'),
          ('BVB811118CX0','BOMBAS VERTICALES BNJ, S.A. DE C.V.'),
          ('BVM951002LX0','BANCO VE POR MAS, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO VE POR MAS'),
          ('BWT211006IG0','B&B WORLD TRADING SA DE CV'),
          ('C&S050406N22','CHEMICAL & SCHUTZ HIGH PERFORMANCE LUBRICANTS S.A. DE C.V.'),
          ('CAA13082649A','CROIX AIN ALIANZA INTELIGENTE DE NEGOCIOS S.C.'),
          ('CAA171114CH8','CONSULTORIA ADMINISTRATIVA ASDAL S.A. DE C.V.'),
          ('CAA231114VEA','COOPERATIVA CENTRO DE ABASTOS EN APOYO A TU ECONOMIA MARES XOCHIMILCO SC DE RL DE CV'),
          ('CAAA611122','ANA MERCEDES CASTANEDA AREVALO'),
          ('CAAM780203','MARCELA CHAVEZ ARIAS'),
          ('CAAP911225','PAMELA DANNAE CASASOLA DEL AGUILA'),
          ('CAAS730206','SCHEDY NESTOR ARTURO CRAVIOTO ALTAMIRANO'),
          ('CAB001107M64','CONSTRUCTORA ABGSA, S.A. DE C.V.'),
          ('CAB160225MB2','CONSTRUCCIONES ABULIF S.A. DE C.V.'),
          ('CAB170110IZ9','COMERCIALIZADORA ABEGA SA DE CV'),
          ('CAB181129TV2','CONECTANDO ABASTECEDORA SA DE CV'),
          ('CAB190906CT0','CARNES ASADAS, BEBIDAS Y ARTES SC DE RL DE CV'),
          ('CAB211013SG9','COMERCIALIZADORA ABASUME, S.A. DE C.V.'),
          ('CAB230827UA3','COMERCIALIZADORA DE ALIMENTOS Y BEBIDAS MEDINA SAS DE CV'),
          ('CAC130902651','AKTIE BUILDING SA DE CV'),
          ('CAC1402058H4','COMERCIALIZADORA LA ACCION S.A. DE C.V.'),
          ('CAC2210209W2','COMERCIALIZACION DE ABARROTES, LA CASTANEDA DEL MONTE SC DE RL DE CV'),
          ('CAC230405FF7','CONSTRUCTOR & CONSULTOR INDUSTRIAL, INGENIERIA Y MANTENIMIENTO CCINMA SA DE CV'),
          ('CAC230614FQ3','CONTADURIA ASESORES CERTIFICADOS SC'),
          ('CAC230622NV5','CONSTRUCTORA & COMERCIALIZADORA XOC SA DE CV'),
          ('CAC240424SV5','COLECTIVO ABISPON CULTURA, DEPORTE Y SALUD SC DE RL DE CV'),
          ('CAC9612099Y8','CONTROL DE ACCESOS, SA. DE C.V.'),
          ('CACE861006','EMMANUEL ANTONIO CASTANEDA CASTILLO'),
          ('CACJ690424','JESUS CAMACHO CAMPOS'),
          ('CACR690325','ROSALBA CASTORENA CASTRO'),
          ('CACX840121','ALBERTO JAVIER CHAVEZ CUEVAS'),
          ('CAD141031QMA','COMERCIALIZADORA Y ABASTECEDORA DITH SA DE CV'),
          ('CAD1503258F7','DE CERO EN ADELANTE, S.A. DE C.V.'),
          ('CAD160224KDA','CENTRO DE ABASTECEDORA DELSI SA DE CV'),
          ('CAD231026AV3','COMUNIDAD ACTIVA DON AGUSTIN SC DE RL DE CV'),
          ('CAD901017276','CADGRAFICS S.A. DE C.V.'),
          ('CADF990612','FLAVIO CESAR CASANOVA DOMINGUEZ'),
          ('CADR590529','RUBEN ALEJANDRO CHAVEZ DIAZ'),
          ('CAE2112104J4','COMERCIALIZADORA DE ASFALTOS Y EMULSIONES HERNIE SA DE CV'),
          ('CAE980617PMA','CLINICA DE AUDIOLOGIA EDISON S.A. DE C.V.'),
          ('CAEY930808','YASHIR CAMARENA ESPINOZA'),
          ('CAF170220LJ5','COACH AFFAIRE S.C.'),
          ('CAG1910257B0','CREACIONES AGUSTINA SC DE RL DE CV'),
          ('CAGC600724','MARIA CRISTINA CASTILLO GONZALEZ'),
          ('CAGD900807','DIANA NAYELY CASTANEDA GONZALEZ'),
          ('CAGH900227','HECTOR CASTILLO GARCIA'),
          ('CAGI570213','IRMA CARRILLO GARCIA'),
          ('CAGJ670502','JOSUE RUBEN CASTILLO GUTIERREZ'),
          ('CAGN890106','NACXITL CALVA GONZALEZ'),
          ('CAGX000407','ALEJANDRA CARAPIA GONZALEZ'),
          ('CAGY850815','YASSERT ARAFAT CABRERA GONZALEZ'),
          ('CAH130508D57','COMERCIALIZADORA Y ABASTECEDORA HOSPITALARIA, S.A. DE C.V.'),
          ('CAHI750708','IVAN CAMIRUAGA HERNANDEZ'),
          ('CAHJ840118','JOHANNA JACQUELINE CABALLERO HOYOS'),
          ('CAHY930428','YESICA VALERIA CHAVARRIA HERNANDEZ'),
          ('CAI110203DN4','COCINA Y ASEO INSTITUCIONAL, S.A. DE C.V.'),
          ('CAI170227CG2','COLECTIVA ANIL, INNOVACION Y ORGANIZACION SC DE RL DE CV'),
          ('CAI1812125L1','CONSULTORIA Y ANALISIS EN INGENIERIA Y ECONOMIA, S.A.S. DE C.V.'),
          ('CAI990602CFA','CIRCULO ARQUITECTURA INTEGRAL S.A. DE C.V.'),
          ('CAJJ850601','JONAS CALDERON JIMENEZ'),
          ('CAJL760819','LUIS RICARDO CHAVEZ JAIMES'),
          ('CAK2110273I5','CALEGH ACCOUNTING KNOWLEDGE, SA DE CV'),
          ('CAL080912AB5','C&L POOL CONSULTING SC'),
          ('CAL090219S17','CENTRO AUTOMOTRIZ LLANTERO DE SAN CARLOS, S.A. DE C.V.'),
          ('CAL220325EW9','CONSULTORES Y ASOCIADOS LEIXOES SA DE CV'),
          ('CAL230426SS9','CALXALI SC DE RL DE CV'),
          ('CALJ730704','JUAN ALEJANDRO CAMACHO LIZARRAGA'),
          ('CALO710803','OSWALDO CALZADO DE LEON'),
          ('CAM0508103S7','COMERCIAL ALFA DE MORELOS, S.A. DE C.V.'),
          ('CAM110324FH5','CONSORCIO AMESA S.A. DE C.V.'),
          ('CAM110411B66','COOPSA AMBIENTAL, S.A. DE C.V.'),
          ('CAM1207186I9','CONSORCIO AD MERX S DE RL DE CV'),
          ('CAM1403284Y6','CONSTRUCTORA Y ARRENDADORA MOVATI S DE RL DE CV'),
          ('CAM160719JX1','CONSTRUCTORA Y ABASTECEDORA DE MATERIALES JENDA S. A. DE C. V.'),
          ('CAM230403V8A','COMERCIALIZADORA AMESVA SA DE CV'),
          ('CAMA721215','ARTURO JOSUE CASTILLO MORALES'),
          ('CAMA900722','ANGELICA CASTILLO MORENO'),
          ('CAMC830920','CHRISTIAN CARBAJAL MENDOZA'),
          ('CAME581213','EUTILIO CARMONA MARTINEZ'),
          ('CAMJ730717','JUAN CARLOS CABRERA MORALES'),
          ('CAMM830815','MARCOS FRANCISCO CASTILLO MORALES'),
          ('CAMV981004','VALERY LIZETH CASTILLO MARTINEZ'),
          ('CAN210323DC6','CANCRUSH S.A DE C.V.'),
          ('CANJ930811','JESUS TOMAS CASTILLO NERI'),
          ('CANM820910','MAGDALENA CASTILLO CASTILLO NERI'),
          ('CAO070122P44','CONSTRUCCION Y ASESORIA EN OBRAS Y SERVICIOS, S.A. DE C.V.'),
          ('CAOL840329','JOSE LUIS CASTILLO ORTEGA'),
          ('CAP100407ER1','CENTRO DE ANALISIS DE PROGRAMAS Y EVALUACION DE PROYECTOS, S.C.'),
          ('CAP110222Q77','CONSEJO DE ASESORAMIENTO, PROFESIONALIZACION, APRENDIZAJE Y CAPACITACION INTEGRAL S.C.'),
          ('CAP130214FB5','CONTENIDOS ARTISTICOS PRODUCCION Y DIFUSION, A.C.'),
          ('CAP160714FL8','CAPTURACARBONO, S.A. DE C.V'),
          ('CAP170507QB0','CONSTRUCCIONES & PROYECTOS ZERO7 S.A. DE C.V.'),
          ('CAP1903122V0','CONSTRUCCIONES Y ARQUITECTURA PALAMEX S.A DE C.V.'),
          ('CAP921222CH0','CONCRETOS ASFALTICOS PIRAMIDE SA DE CV'),
          ('CAPH790401','HUGO ENRIQUE CHAVARRIA PEREZ'),
          ('CAR050418677','COMERCIALIZADORA ARVIEN, S.A. DE C.V.'),
          ('CAR070129JN6','CONSORCIO ARKKA, S.A. DE C.V.'),
          ('CAR090626FM8','COMPANIA CONSTRUCTORA ARASU S.A. DE C.V.'),
          ('CAR140716EAA','CARBONUSA SA DE CV'),
          ('CAR161010R17','CHARDANY COMPANY S.A. DE C.V.'),
          ('CAR220708NL9','COMERCIALIZADORA ARYSTAN SA DE CV'),
          ('CAR230424LE1','CONSTRUCTORA ARQUIMPL SA DE CV'),
          ('CARE671004','ENRIQUE CARRETA RIOS'),
          ('CARJ890220','JACQUELINE CASTILLA REYES'),
          ('CARS770617','SAMUEL ANTONIO CAAMAL RIVERA'),
          ('CARV781230','VICTOR EUGENIO CHAVEZ DE LA ROCHA'),
          ('CAS000720T18','CORPORATIVO ASESOR Y SERVICIOS SA DE CV'),
          ('CAS100618J29','CRANTZ & STERN SA DE CV'),
          ('CAS100920BR1','CONSTRUCCIONES ARCO SOLUCIONES SA DE CV'),
          ('CAS1211066S3','CONSULTING ALL SERVICE IN TELECOM AND MEDICE S. DE R.L. DE C.V.'),
          ('CAS190121EH8','CAMGON ASISTENCIA SA DE CV'),
          ('CAS190301FV6','COMERCIALIZACION Y ADMINISTRACION SALCEDO-MERLOS S.A DE C.V.'),
          ('CAS2009214Z4','CONSULTORIA AMBIENTAL SAYDE SAS DE CV'),
          ('CAS8412199N5','CONSTRUCTORA Y ARRENDADORA SAN SEBASTIAN SA DE CV'),
          ('CAS891027KK6','INDUSTRIAS CHICHENITZA S.A. DE C.V.'),
          ('CASF611009','FRANCISCO JAVIER CANUL SANTOYO'),
          ('CASG621227','GABRIELA MARCELA CAMPOS SOSA'),
          ('CASM650317','MARCO ANTONIO CASTILLO SANCHEZ'),
          ('CASS650205','SONIA CANDAS SOTRES'),
          ('CAT201125BE9','CONSULTORA EN ANALISIS Y TECNOLOGIA DARKA, S.A. DE C.V.'),
          ('CAU171124KR0','CORPORACION AMBIENTAL URBANA S.A DE C.V.'),
          ('CAU190611J20','CONCEPCION AYALA UNIFORMES QUIRURGICOS SC DE RL DE CV'),
          ('CAU980825C56','CONSORCIO AUDIOVISA, S.A. DE C.V.'),
          ('CAV210506Q56','CORPORATIVO ACADEMICO VITAE, S.A.'),
          ('CAVM840905','MIGUEL ANGEL CASTILLO VARGAS'),
          ('CAZ230110BC5','COMERCIALIZADORA AZAELBAR SA DE CV'),
          ('CBA080115RI6','CONSTRUCTORA BALAC SA DE CV'),
          ('CBA111111375','CONSTRUCTORA BALBEK S.A. DE C.V.'),
          ('CBB230704NV0','CENTRO DE BELLEZA Y BOUTIQUE BOMBON SC DE RL DE CV'),
          ('CBE051028DV0','CAFE BERSA S. DE R.L. DE C.V.'),
          ('CBE080328NI7','COMERCIALIZADORA BELBO S.A. DE C.V.'),
          ('CBE151207UB3','COMERCIALIZADORA BERSAGLIO S.A. DE C.V.'),
          ('CBI161213PH2','CONSULTORIA DEL BAJIO INC SA DE CV'),
          ('CBL200417593','CASA BLINDADA SA DE CV'),
          ('CBM051026JT2','CURVAS Y BORDES DE MEXICO, S.A DE C.V.'),
          ('CBM2306157BA','CONSORCIO 24BM SA DE CV'),
          ('CBO131113NI2','SOCIEDAD COMERCIAL BORKIM SA DE CV'),
          ('CBO191213TU0','CAFE BOSQUES DE ORQUIDEAS SC DE RL DE CV'),
          ('CBS0703015TA','COMERCIALIZADORA BANQUETES Y SERVICIOS RICO S.A. DE C.V.'),
          ('CBS1302181Q2','CHULZOA BIENES Y SERVICIOS SA DE CV'),
          ('CBS171005I81','CREACION BIENES Y SERVICIOS WK, S.A. DE C.V.'),
          ('CBS190524MK8','COMERCIALIZADORA DE BIENES Y SERVICIOS RHIUNETH S.A DE C.V.'),
          ('CBS2006186C8','CONSULTORIA, BIENES Y SERVICIOS INTEGRALES ERC SA DE CV'),
          ('CBS230829H17','COYOTE BTC SANTA CRUZ SC DE RL DE CV'),
          ('CBU160606TM2','CALAVERA BURO S.C.'),
          ('CBU211001CH3','CONSTRUCTORA  BUILDDREAMS SA DE CV'),
          ('CC&060724E27','CONGRESOS, CONVENCIONES & EVENTOS S.A. DE C.V.'),
          ('CCA070830HX5','CENTRO CULINARIO AMBROSIA SA DE CV'),
          ('CCA090226IG6','CORPORATIVO CLEAN & WIPE SA DE CV'),
          ('CCA160523QGA','CFE CALIFICADOS S.A. DE C.V.'),
          ('CCA171027DJ1','COMERCIALIZADORA CASSAURO SA DE CV'),
          ('CCA181009H34','COCON COCINA Y ASEO SA DE CV'),
          ('CCA190617P20','CO-ARCH CONSTRUYENDO CON ARQUITECTOS SA DE CV'),
          ('CCA191218N20','CORPORATIVO CAMFRE SA DE CV'),
          ('CCA200218HZ9','CAMACHO Y CABALLERO ASOCIADOS S.A. DE C.V.'),
          ('CCA830113QZ4','COLOR CASSETTES SA DE CV'),
          ('CCA940622I43','CUENTA CON TU CASA SA DE CV'),
          ('CCC070208KC6','CONSORCIO CONSTRUCTOR Y COMERCIALIZADOR MORELENSE S.A. DE C.V.'),
          ('CCC130425AL9','CARNES, CORTES Y COMPADRES S. DE R.L. DE C.V.'),
          ('CCD180608LV0','CORPORATIVO 117 TECPAAT S.A. DE C.V.'),
          ('CCE110809N78','CENTRO COMUNITARIO DE EMPLEO PARA LA MUJER CAMPESINA DE PARRES S.C. DE R.L. DE C.V.'),
          ('CCE150819ID7','CONSTRUCTRORA CEVDIE SA DE CV'),
          ('CCE160125R63','COMERCIALIZADORA Y CONSULTORIA CEAZ 16-01-25 S.A. DE C.V.'),
          ('CCE240528A23','COOPE CHILANGA EMPRESA SOCIAL SC DE RL DE CV'),
          ('CCF13040316A','COMERCIALIZADORA Y CONSTRUCTORA FERNANDEZ S.A. DE C.V.'),
          ('CCI060509U94','CIPCO CENTRO INTERAMERICANO PARA LA PRODUCTIVIDAD  Y LA COMPETITIVIDAD SC'),
          ('CCI121204QI8','CIDER CENTRO INTEGRAL DE DECORACION Y RECUBRIMIENTO SA DE CV'),
          ('CCI150813N88','COLOURKLUB CENTRO DE IMPRESION SA DE CV'),
          ('CCI171121IR5','CORPORATIVO CONTABLE INVERSA SA DE CV'),
          ('CCI2004068U0','CIASA, CONSTRUCCION, INFORMATICA Y ARQUITECTURA S. A. DE C. V.'),
          ('CCI211117PL4','CINCUA COMERCIALIZADORA E INSUMOS SA DE CV'),
          ('CCL2311154N6','CHALOP CLEANING SC DE RL DE CV'),
          ('CCM080625276','CAMIONES CHINOS DE MEXICO S.A. DE C.V.'),
          ('CCM170814TI6','CANCAN CLUB MEDICOS VETERINARIOS S.A DE C.V.'),
          ('CCM170922LC9','CENTRO DE CAPACITACION MCG SC'),
          ('CCM201204S3A','CHAPULTEPEC 5000 SA DE CV'),
          ('CCO040520SW0','CAALSA CONSTRUCCIONES, S.A. DE C.V.'),
          ('CCO070322672','CONARQ CONSTRUCTORES SA DE CV'),
          ('CCO070507KT2','CONSTRUCTORA COSECID SA DE CV'),
          ('CCO100601PN8','CONSTRUCTORA CONDEHI, S.A. DE C.V.'),
          ('CCO1110062T1','CORPORATIVO CONELTEC SA DE CV'),
          ('CCO150714UM9','CALZADOS CONGRIO S.A DE C.V.'),
          ('CCO151005PX3','CONSTRUCTORA COARIN SA DE CV'),
          ('CCO1602269K0','CONSTRUCCION Y CONSERVACION DE OBRAS, CARRETERAS Y SERVICIOS DE INFRAESTRUCTURA Y ADMINISTRACION, S.A. DE C.V.'),
          ('CCO180508KF0','CUERVO CONTRATISTAS S.A. DE C.V.'),
          ('CCO1808019M7','CASARE CONSTRUCTORA SA DE CV'),
          ('CCO181029BV2','SOCIEDAD 4 CONEJOS SA DE CV'),
          ('CCO190722MA9','CONTA&GESS CONSULTORES S.A. DE C.V.'),
          ('CCO200205E95','CAINMA CONSTRUCTORA SA DE CV'),
          ('CCO2111058X8','CELDRICK CORP SAS DE CV'),
          ('CCO2305241Q4','CECILY CONSTRUCCIONES SA DE CV'),
          ('CCO7409189M1','CEMEX CONCRETOS, S. A. DE C. V.'),
          ('CCO980309PI0','CONTACTO CONSTRUCCIONES, S.A. DE C.V.'),
          ('CCO980827RA0','CONSTRUCTORA CODU SA DE CV'),
          ('CCP170614129','CODIGO 21: CONSULTORIA POLITICA SA DE CV'),
          ('CCR140305I15','COMERCIALIZADORA CREARTE S.A DE C.V'),
          ('CCR180227JI1','CONSTRUCCIONES Y COMERCIALIZACION REALJOMA S DE R.L. DE C.V.'),
          ('CCS230127AA5','CORSA CONSULTORES SELTOS SA DE CV'),
          ('CCS2302136LA','COSAME COBAYENDE SALUD Y MEDICINA SA DE CV'),
          ('CCS230531KF4','CONSTRUCCIONES Y CAMINOS 6 H SA DE CV'),
          ('CCT030909B30','CONSORCIO COMERCIAL TREMUN S.A. DE C.V.'),
          ('CCT230921NT2','CONSTRUCCIONES CEPTC 33 SA DE CV'),
          ('CCT8905199MA','CALI CONSTRUCCIONES Y TELECOMUNICACIONES SA DE CV'),
          ('CCT960308BL9','COMERCIALIZADORA Y CONSTRUCTORA TUCAN S.A. DE C.V.'),
          ('CCU120612KU2','COMERCIALIZADORA CHUBIKY SA DE CV'),
          ('CCU210825K79','COMERCIALIZADORA CUASIMEX SAS'),
          ('CCV0908249Y0','CONSTRUCTORA Y COMERCIALIZADORA VICFRA SA DE CV'),
          ('CCV110609KG7','CONSTRUCTORA Y COMERCIALIZADORA VACTRUP, S.A. DE C.V.'),
          ('CCY140307N88','COMERCIALIZADORA Y CONSTRUCTORA YIRHEM SA DE CV'),
          ('CCZ090414G80','CONSTRUCCIONES Y CAMINOS ZULAK SA DE CV'),
          ('CDA0004102C8','CENTRO DE DIAGNOSTICO ANGELES S.A DE C.V'),
          ('CDA120419QH5','COMERCIALIZADORA Y DISTRIBUIDORA AN-CEL SA DE CV'),
          ('CDA130307L7A','CONSORCIO DOS-A ARQUITECTONICO, S.A. DE C.V.'),
          ('CDA141215VB7','COMERCIALIZADORA DAFIMA, S.A. DE C.V.'),
          ('CDA150818H2A','CASTRO DIESEL AUTOMOTRIZ S.A DE C.V'),
          ('CDA220405FWA','COMERCIALIZADORA DAYLOR SA DE CV'),
          ('CDB131213MP2','COMERCIALIZADORA Y DISTRIBUIDORA BALAFE S.A. DE C.V.'),
          ('CDC071210FA1','COMERCIALIZADORA Y DISTRIBUIDORA CHEAPEST SA DE CV'),
          ('CDC1005141P9','CONSUMIBLES DC, S.A. DE C.V.'),
          ('CDC110926R60','COMERCIALIZADORA Y DISTRIBUIDORA DE CAMIONES EUROPEOS S.A. DE C.V.'),
          ('CDC2008198B4','COMERCIO Y DISTRIBUCION CATEX SA DE CV'),
          ('CDC990809121','CDCI, S.A. DE C.V.'),
          ('CDE030606J58','COMERCIALIZADORA Y DISTRIBUIDORA DE EQUIPOS Y FARMACOS SA DE CV'),
          ('CDE031028N81','COMERCIALIZADORA Y DISTRIBUIDORA EMPRESARIAL ROAD, S.A. DE C.V.'),
          ('CDE040218486','CORPORATIVO DESCI, S.A. DE C.V.'),
          ('CDE050114NK5','CENTRO DE DISTRIBUCION ELECTRICO ORIENTE SA DE CV'),
          ('CDE170928ED7','COMERCIALIZADORA DEMIENT SA DE CV'),
          ('CDE200803UH9','CREACIONES D'' ESTEYA SC DE RL DE CV'),
          ('CDE2310189H1','CONFECCIONES DENISSE SC DE RL DE CV'),
          ('CDI070111F89','LA CRONICA DIARIA, S.A. DE C.V.'),
          ('CDI071116K3A','CAST DISENO, INGENIERIA Y OBRAS S.A. DE C.V.'),
          ('CDI091016G58','COMERCIALIZADORA DICLINSA S.A. DE C.V.'),
          ('CDI1611169P7','CONSTRUCCIONES Y ARQUITECTURA LOS LAGOS SA DE CV'),
          ('CDI200602LG6','COMERCIALIZADORA Y DISTRIBUIDORA INDUSTRIAL MEXICANA UNIVERSAL PRESTIGIO, S.A. DE C.V.'),
          ('CDI210127HB9','CONSTRUCTORA DIHR SA DE CV'),
          ('CDI210222TD2','CIC DISTRIBUCION SA DE CV'),
          ('CDI2110275F3','CYRSA DISTRIBUCIONES SA DE CV'),
          ('CDI220223AP2','CONNOR DIAGNOSTICS SA DE CV'),
          ('CDI940503CV7','COLLAGE DISTRIBUCIONES S.A. DE C.V.'),
          ('CDJ1609062M1','CONFECCIONES Y DISTRIBUCION JD, S.A. DE C.V.'),
          ('CDL030403T3A','COMERCIALIZADORA Y DISTRIBUIDORA LOGOS S.A. DE C.V.'),
          ('CDM000119RYA','CONSULTORIA Y DESARROLLO MUNICIPAL S.A. DE C.V.'),
          ('CDM190213A13','CONSTRUCTORA Y DISTRIBUIDORA MSHD, S.A. DE C.V.'),
          ('CDM200714QH4','COPI DISENO, MANTENIMIENTO, DISTRIBUCION Y CONSTRUCCION SA DE CV'),
          ('CDM210113962','CONSTRUCTORA Y DESARROLLADORA MEGANA SAS DE CV'),
          ('CDM2307123M6','CREACIONES Y DISENOS MATEO SC DE RL DE CV'),
          ('CDM9602154Q1','COMERCIALIZADORA Y DISTRIBUIDORA MIERES S.A. DE C.V.'),
          ('CDO160301U25','COMERCIALIZADORA DOPAJ, S.A. DE C.V.'),
          ('CDP120725NL7','COMERCIALIZADORA Y DESARROLLADORA PLAY PARK, S.A. DE C.V.'),
          ('CDP211122LD3','COMERCIALIZADORA Y DESARROLLADORA DE PROYECTOS ARQUITECTONICOS Y DE INGENIERIA SANTOS SA DE CV'),
          ('CDR111011HJ7','COMERCIO Y DISTRIBUCION REDCOM SA DE CV'),
          ('CDR1309177I7','COMERCIALIZADORA DRUCK S DE RL DE CV'),
          ('CDR181213RM2','COMERCIALIZADORA DRL SA DE CV'),
          ('CDS160304VE3','COMERCIALIZADORA Y DISTRIBUIDORA DE SERVICIOS YOLLMI,S.A. DE C.V.'),
          ('CDS990216KY4','COMERCIALIZADORA Y DISTRIBUIDORA SAGITARIO SA DE CV'),
          ('CDT2301191F9','CONSTRUCOMER DIAZ DE LA TORRE SA DE CV'),
          ('CDU190823RFA','CORPORATIVO DUOMED S.A. DE C.V.'),
          ('CDU220201RR8','COMERCIALIZADORA DUPNITSA SA DE CV'),
          ('CEA071126U54','CONSORCIO EMPRESARIAL ASOGU S.A. DE C.V.'),
          ('CEA230612UW4','CENTRO EDUCATIVO ALVARO OBREGON JEAEN PIAGET SC DE RL DE CV'),
          ('CEAG930228','GABRIEL CERON ARELLANO'),
          ('CEC200213ET8','CENTRAL ECG S.A. DE C.V.'),
          ('CEC230417SH3','COMERCIALIZADORA ENIGMA CREMERIA Y ABARROTES SC DE RL DE CV'),
          ('CED0204156L0','CENTRO DE ESTUDIOS PARA EL DESARROLLO INTEGRAL COMUNITARIO AC'),
          ('CED070627464','CONSTRUCCIONES Y EDIFICACIONES DECOH,S.A. DE C.V.'),
          ('CED0811134J3','CAZONCI EDITORES S.A. DE C.V.'),
          ('CED150327I18','CAREMICAR EDIFICACIONES S.A. DE C.V.'),
          ('CED800516U86','DOMUS INSTITUTO DE AUTISMO AC'),
          ('CEE1003069F7','COMERCIALIZADORA DE EXPORTACION E IMPORTACION Y SERVICIOS SECAR''S SA DE CV'),
          ('CEE2105102M4','COMERCIALIZADORA Y EXPORTADORA ESCA DE MEXICO S DE RL DE CV'),
          ('CEEI620408','IGNACIO CERON ESTRADA'),
          ('CEFV570514','VICTOR MANUEL CEDILLO FLORES'),
          ('CEG0510031L2','CLINICA DE ESPECIALIDADES GUARNEROS SA DE CV'),
          ('CEGJ821115','JESUS BONIFACIO CELESTINO GONZALEZ'),
          ('CEHO750218','OMARA YADIRA CECILIANO HUARACHA'),
          ('CEHP630611','PATRICIA CERVANTES HERNANDEZ'),
          ('CEI010410HZ3','CONSTRUCCION Y ESTUDIOS DE INGENIERIA CIVIL SA DE CV'),
          ('CEI1109279N3','CONSTRUCTORA EINA S.A. DE C.V.'),
          ('CEI130509KX2','CONSTRUCTORA EIDRI S.A. DE C.V.'),
          ('CEI1305174X9','COMERCIALIZADORA E INNOVACIONES ESTO Y MAS SA DE CV'),
          ('CEI171121J46','CERTEZSA EVOLUTIVA E INTEGRAL SA DE CV'),
          ('CEI190712AF0','CENTRO EDUCATIVO INFANTIL COMUNITARIO GUMLIS SC DE RL DE CV'),
          ('CEI1908015G5','COMERCIALIZADORA ENLACES INTERNACIONALES MAGALLANES SA DE CV'),
          ('CEI1910093R7','CONSTRUCTORA ELECTROMECANICA LOS INTEGRADORES SA DE CV'),
          ('CEI230706UI3','CENTRO DE ESTIMULACION INFANTIL HUITZITZILIN SC DE RL DE CV'),
          ('CEI230706UZ0','CENTRO EDUCATIVO INTEGRAL ZIPIPENY SC DE RL DE CV'),
          ('CEJA930619','ANDREA CERVANTES JIMENEZ'),
          ('CEL211019JT8','COMERCIALIZADORA ELECTROPURA S. DE R.L. DE C.V.'),
          ('CEL880523ER1','CELSOL S A P I DE CV'),
          ('CEM060308M70','COMERCIAL DE EQUIPOS Y MATERIALES PARA LA INDUSTRIA SA DE CV'),
          ('CEM090305AM7','COMSA INFRAESTRUCTURAS, S.A. DE C.V.'),
          ('CEM121214L65','CONSORCIO EMAUS SA DE CV'),
          ('CEM190226LWA','CLINICA DE ESPECIALIDADES MEDICAS BEVI SA DE CV'),
          ('CEM230414SU8','CORPORACION ENIGMA M&F SA DE CV'),
          ('CEMJ770125','JUAN CARLOS CERVANTES MORENO'),
          ('CEMJ930222','JOCELINE LIZETH CRESPO MUNOZ'),
          ('CEN020207PF4','CENACCE, S.C.'),
          ('CEN180629KY4','2CREW ENTERTAINMENT S.A. DE C.V.'),
          ('CENA920810','ALEJANDRO CELAYA NUNEZ'),
          ('CEP150930AV3','CONSTRUCCIONES ESTUDIOS PROYECTOS Y ARRENDADORA OROZCO Y MARTINEZ S.A. DE C.V.'),
          ('CEPJ761203','JULIO CERON PENA'),
          ('CER150106S31','CENCER ENERGIA RENOVABLE SA DE CV'),
          ('CER170629KBA','COMERCIALIZADORA ERGIRA, SOCIEDAD ANONIMA DE CAPITAL VARIABLE'),
          ('CERR520827','JOSE RAMON FRANCISCO CEDENO RODRIGUEZ'),
          ('CES031203IG0','COMERCIALIZADORA DE EQUIPOS, SISTEMAS Y SERVICIOS, S.A. DE C.V.'),
          ('CES110720170','CONSTRUCTORA Y EDIFICADORA SADE SA DE CV'),
          ('CES130705VC3','CLOUD ENTERPRISE SERVICES S. DE R.L. DE C.V.'),
          ('CES191021DI8','COMERCIALIZADORA EME Y SLAVA SA DE CV'),
          ('CES230714BM3','COLIBRI ES SABOR SC DE RL DE CV'),
          ('CES2309289V0','COCINA ESTELITA SC DE RL DE CV'),
          ('CET191021B58','CENTRO EDUCATIVO TIFERET SC DE RL DE CV'),
          ('CET2302012I9','CENTRO EUROPEO DE LA TECNOLOGIA SA DE CV'),
          ('CEVJ650909','MARIA DE JESUS CERVANTES VAZQUEZ'),
          ('CEVJ930812','JOSE CEDILLO VERA'),
          ('CFB221124UB1','COMERCIALIZADORA DE FARMACOS BARUCHI SA DE CV'),
          ('CFE1607233H6','COMERCIALIZADORA FEROPISA SA DE CV'),
          ('CFE180521D11','CONSTRUCTORA FEC-LAR SA DE CV'),
          ('CFE231122HA4','CREACIONES FERCA SA DE CV'),
          ('CFF010806BX1','INDUSTRIAS FMD SA DE CV'),
          ('CFI2101041Y9','COMER FICSON SA DE CV'),
          ('CFI860626NK7','COLECCIONES FINAS, S.A. DE C.V.'),
          ('CFL180116399','COMERCIALIZADORA FLIGHTLESS SA DE CV'),
          ('CFN150720FT6','CORPORATIVO FERRETERA DEL NORTE, S.A. DE C.V.'),
          ('CFO160310H22','COMERCIALIZADORA FOREMAN SA DE CV'),
          ('CFR050301LX2','CORPORACION FRANAGUS SA DE CV'),
          ('CFR060922KL6','CONSTRUCTORA FRABEEM, S. A. DE C. V.'),
          ('CFR180314F64','COMERCIALIZADORA FRAMGANG SA DE CV'),
          ('CFR2207149G6','COMERCIALIZADORA FORJA DE ROBLE SA DE CV'),
          ('CFT121008850','CORPORATIVO LA FRONTERA DE TJ. SA DE CV'),
          ('CFT2107155S9','CLOUD FOREIGN TRADE SA DE CV'),
          ('CGA1210277GA','CONSORCIO GARLUCH, S.A. DE C.V.'),
          ('CGA160216UI5','COMERCIALIZADORA GARYTEN S.A. DE C.V.'),
          ('CGA2203093G4','COMERCIALIZADORA GARJU SA DE CV'),
          ('CGB1302189B3','C&S GLOBAL BUSINESS CONSULTING S.C.'),
          ('CGC2106235B3','COLEMAN GRAY COMERCIALIZADORA SA DE CV'),
          ('CGE100219GT0','CORPORATIVO GEMI SA DE CV'),
          ('CGE220706QQ1','CCASSA GERENCIA SA DE CV'),
          ('CGG221101VB3','CONSULTORIA G Y G PATRIMONIAL SAS'),
          ('CGI0101161A9','CAZAR GRUPO DE INGENIEROS CIVILES, S.A DE C.V.'),
          ('CGI180509789','CONCEPT G&C INTERNATIONAL SA DE CV'),
          ('CGJ110819SX2','COMERCIALIZADORA GJVM S.A. DE .CV.'),
          ('CGM071011QB3','CORPORATIVO GIORMAR DE MEXICO, S.A. DE C.V.'),
          ('CGO000719A96','CORPORATIVO GOIBE, S.A. DE C.V.'),
          ('CGP201217VA7','CORPORATIVO GILMAR PETRA SA DE CV'),
          ('CGP970522EE4','CONSORCIO GASOLINERO PLUS, S.A. DE C.V.'),
          ('CGR180713BU1','CONSTRUCTORA GROPIUSCDMX, S.A. DE C.V.'),
          ('CGS101025FH5','COMERCIALIZADORA GBM SOLUCIONES, S.A. DE C.V.'),
          ('CGU240305NAA','COMERCIALIZADORA GAMY URBAN SC DE RL DE CV'),
          ('CHE1505276IA','COMERCIALIZADORA HEILSA SA DE CV'),
          ('CHE160713GH5','CAMIONES HERMT SA DE CV'),
          ('CHE200723QH6','CIMER HEALTH SA DE CV'),
          ('CHG130208N47','COMERCIALIZADORA HGG, S.A. DE C.V.'),
          ('CHI170907IG7','CONSTRUCCIONES HIDROSAN, S. A. DE C. V.'),
          ('CHI990710I32','HISA FARMACEUTICA, S.A. DE C.V.'),
          ('CHL100330MS0','COMERCIALIZACION HAWA LAREDO S.A. DE C.V.'),
          ('CHM220401A41','COMPREHENSIVE HEALTH MEDICAL ASSOCIATION SA DE CV'),
          ('CHM231103966','CAFETERIA HUITZILLI MEZTLI SC DE RL DE CV'),
          ('CHO0801174Z5','CENTRO HOSPITALARIO MAC S.A. DE C.V.'),
          ('CHR191108364','CONSULTOR HERMANOS RODRIGUEZ SC DE RL DE CV'),
          ('CHV210405PJ2','COMERCIALIZADORA HERMANOS DEL VALLE SA DE CV'),
          ('CIA000807DPA','CIA CONSULTORIA EN INFORMATICA ADMINISTRATIVA SA DE CV'),
          ('CIA031007EI7','CONSORCIO INDUSTRIAL ALO - MAR, S.A. DE C.V.'),
          ('CIA060215R67','CONSULTORES PARA LA INVESTIGACION APLICADA Y EL DESARROLLO S.A. DE C.V.'),
          ('CIA070123FD0','CARICATURAS INTERNET ANIMACIONES Y REVISTAS SA DE CV'),
          ('CIA0704245K5','CONSULTORIA INTEGRAL ATL, S.A. DE C.V.'),
          ('CIA200504674','CARVAJAL Y MACHADO, S.C.'),
          ('CIA230712NE5','COMERCIALIZADORA DE INSUMOS ARANZZA SA DE CV'),
          ('CIB010402NI0','CONSTRUCCION E INGENIERIA BEGA S.A. DE C.V.'),
          ('CIB090713CI8','CONSULTORES IBIZ SA DE CV'),
          ('CIC1105036YA','CCB INGENIERIA Y CONSTRUCCION, S.A. DE C.V.'),
          ('CIC160303KK3','CORPORATIVO DE INFRAESTRUCTURA CAEL SA DE CV'),
          ('CIC8308165A4','CICOVISA, S.A. DE C.V.'),
          ('CIC841011JM2','CONSORCIO DE INGENIEROS CONSTRUCTORES Y CONSULTORES, S.A. DE C.V.'),
          ('CIC921106IW2','COMERCIAL E INDUSTRIAL CANCAL S.A. DE C.V.'),
          ('CIC9511221SA','CONSTRUCCIONES ICI, S. A. DE C. V.'),
          ('CIC970922LKA','CONSORCIO INTERAMERICANO DE COMUNICACION, S.A. DE C.V.'),
          ('CID010523SE5','CONSULTORES EN INNOVACION, DESARROLLO Y ESTRATEGIA APLICADA S.C.'),
          ('CID020912P91','CIRCULO DE IDEAS SA DE CV'),
          ('CID220808345','CAFE INTERNET DELMAR SC DE RL DE CV'),
          ('CID2310107C4','CENTRO DE INNOVACION PARA EL DESARROLLO SUSTENTABLE AGROACUICOLA DE LA CDMX SC DE RL DE CV'),
          ('CIE1510222L4','COMERCIALIZADORA INDUSTRIAL ESPECIALIZADA CORTES GUERRERO SA DE CV'),
          ('CIE190801U50','CIET&CO S.A. DE C.V.'),
          ('CIE211210ND3','COMERCIALIZACION, IMPORTACION Y EXPORTACION DE DESPERDICIOS INDUSTRIALES,VEHICULOS,MAQUINARIA Y EQUIPO USADO ROVATO S.A. DE C.V.'),
          ('CIE930727HK4','CONSORCIO INDUSTRIAL EDIFICA S.A. DE C.V.'),
          ('CIF1403125I4','CPS INGENIEROS FILIAL MEXICO S DE RL DE CV'),
          ('CIG120127IA7','CONSTRUCTORA E INMOBILIARIA GP25'),
          ('CIG1612132C5','CONSORCIO INDUSTRIAL GONECH SA DE CV'),
          ('CIG180713UB2','CUSTOM IDEAS - AGENCY S.A. DE C.V.'),
          ('CIG220804QM4','CENTRO INTEGRAL GYM SPA CALMECAC SC DE RL DE CV'),
          ('CIG800225SM4','CENTRO DE INVESTIGACION EN CIENCIAS DE INFORMACION GEOESPACIAL, A.C.'),
          ('CIH990908TK2','CONSTRUCTORA E INGENIERIA HERAYAX S.A. DE C.V.'),
          ('CIHK890810','KAREM CIRIGO HERRERA'),
          ('CII031204QP4','CENTRO INTERNACIONAL DE INTELIGENCIA, S.A. DE C.V'),
          ('CII140128R36','CORPORATIVO INTEGRAL IN AVANTI S.A. DE C.V.'),
          ('CII160809361','CORPORBELMOR IMPORTADORA INTERNACIONAL S.A. DE C.V.'),
          ('CII9109104J9','CONSTRUCCIONES E INGENIERIA INFAGON S.A. DE C.V.'),
          ('CIJ220815PD8','CORPORATIVO INTERFACE J&R SA DE CV'),
          ('CIK150505PG0','COMERCIALIZADORAIKAN S.A. DE C.V.'),
          ('CIL170626DV5','CONSTRUCCIONES E INMOBILIARIA LE RUE ASPHALTE SA DE CV'),
          ('CIL1903215F8','CORPORATIVO INTEGRAL LUEMA S.A. DE C.V.'),
          ('CIM060614F14','CONJUNTO INDUSTRIAL MONTERREY, S.A. DE C.V.'),
          ('CIM140113ED2','CREA IMODA SC DE RL DE CV'),
          ('CIM910820130','COMUNICACION E INFORMACION DE LA MUJER, A.C.'),
          ('CIM940714SP6','CARBONES INDUSTRIALES MEXICANOS SA DE CV'),
          ('CIN140717QD0','CONCEPTO INFRAESTRUCTURA SA DE CV'),
          ('CIN170726Q87','CASSIOPEIA INDUSTRIES S.A DE C.V'),
          ('CIN171110UW3','CRIVIA INTERNACIONAL, SOCIEDAD POR ACCIONES SIMPLIFICADA DE CAPITAL VARIABLE'),
          ('CIN1712182G9','CIVERCOM INFRAESTRUCTURA SA DE CV'),
          ('CIN200207HN2','COMERCIO INTEGRAL NITARI SA DE CV'),
          ('CIN2111053H0','CONTINENTAL INTERLOMAS SA DE CV'),
          ('CIN841218TE0','CANDE INGENIEROS S.A. DE C.V.'),
          ('CIN9307086M4','CORPORATIVO INTELTEX, S.A. DE C.V.'),
          ('CIO2201147J6','COMERCIALIZADORA INMOCOSTA OCA SA DE CV'),
          ('CIP000822170','COMPUTACION INTEGRACION Y PERIFERICOS SA DE CV'),
          ('CIPS750530','SILVANA CIORON PEREZ'),
          ('CIR860619EC9','CENTRO DE INSTRUMENTACION Y REGISTRO SISMICO, A.C.'),
          ('CIRJ990816','JESSICA CHINAS RIVERA'),
          ('CIS0002109X7','CONFECCIONES ISAAC, S.A. DE C.V.'),
          ('CIS0807175J4','CAR INFORMATION SYSTEM, S.A. DE C.V.'),
          ('CIS110915MU5','COMERCIALIZADORA DE INSUMOS Y SERVICIOS DEL VALLE DE MEXICO SA DE CV'),
          ('CIS160930RG9','CONSTRUCCION E INFRAESTRUCTURA SEGMAR S DE RL DE CV'),
          ('CIS180808AV4','CISMUR SA DE CV'),
          ('CIS200505IG9','COMERCIALIZADORA INTEGRAL EN SEGURIDAD INDUSTRIAL E INCENDIOS SA DE CV'),
          ('CIS220121AU6','CISDOMI SC'),
          ('CIS980211T49','CONSTRUCTORA E INMOBILIARIA SADA SA DE CV'),
          ('CIT000128UL3','COMERCIALIZADORA INTERNACIONAL EN TEXCOCO SA DE CV'),
          ('CIT180608IW2','CITY-GOB, S.A. DE C.V.'),
          ('CIT200121CV4','CITEGRA SAS DE CV'),
          ('CIT2302232R4','CORPORATIVO EN INNOVACION Y TECNOLOGIA OSIRIS SA DE CV'),
          ('CIT2311095E8','CAFETERIA CON INTERNET TLAZYLOTZYN SC DE RL DE CV'),
          ('CIT9501058R3','CORPORACION ITAPAT,S.A. DE C.V.'),
          ('CITA710617','ALEJANDRO CISNEROS TORRES'),
          ('CIU9905071G7','CONSORCIO IUYET SA DE CV'),
          ('CIV1810292NA','CIVAX SA DE CV'),
          ('CIV1905148U3','CONSTRUCCIONES E INGENIERIA VAL-TUR, S.A. DE C.V.'),
          ('CIY210812PG5','COMERCIO INTERNACIONAL YUKINO SA DE CV'),
          ('CIZ120828957','COMERCIALIZADORA INTERNACIONAL ZARHUE S.A DE C.V'),
          ('CJA070530TH7','CONSTRUCTORES DE JALTOCAN S.A DE C.V.'),
          ('CJA130529M10','COMERCIALIZADORA JAER, S.A. DE C.V.'),
          ('CJA201019JH9','COMERCIALIZADORA JACSAM, S.A. DE C.V.'),
          ('CJA210903B59','CONSORCIO JEND-ARD ABASTECEDORA Y CONSTRUCTORA, S.A. DE C.V.'),
          ('CJC0111306B4','CONSTRUCCIONES JM Y CM SA DE CV'),
          ('CJD110214H29','COMERCIALIZADORA JAVA 2011 SA DE CV'),
          ('CJI990122DG3','CONSTRUCTORA JIMTRE S.A. DE C.V.'),
          ('CJO150930CL7','COMERCIALIZADORA JOBRY S.A. DE C.V.'),
          ('CJR9603086X7','COMERCIALIZADORA JOSE RODRIGO SA DE CV'),
          ('CJU170504HP6','COMERCIALIZADORA JUARMEX SA DE CV'),
          ('CKA151120UQ2','COMERCIALIZADORA KAPHI S.A DE C.V.'),
          ('CKA160711GS7','COMERCIALIZADORA KABU SA DE CV'),
          ('CKA180208CN0','COMERCIALIZADORA KASADY, S.A. DE C.V.'),
          ('CKA180308E28','COMERCIALIZADORA KARISHA S DE RL DE CV');

--2o bloque de 1,000 proveedores
insert into tblProveedores(idStrRFCproveedor,
					        strRazónSocialProveedor)
	values('CKD030428TG1','COMERCIALIZADORA KD, S.A. DE C.V.'),
          ('CKE181015GS3','CONSTRUCCIONES KEDPA, S.A. DE C.V.'),
          ('CKI130702HN5','CORPORATIVO KIMALA S.A. DE C.V.'),
          ('CKM020618JY6','COMERCIALIZADORA K MOX SA DE CV'),
          ('CKO191101T71','COMERCIALIZADORA KOIK SA DE CV'),
          ('CLA121018ET6','COMERCIALIZADORA LAURENS, SA DE CV'),
          ('CLA940816C49','CORPORACION LAMBERT, S.A. DE C.V.'),
          ('CLE020123NL4','CLEANOVA SA DE CV'),
          ('CLE200430A22','CLEANIUM S DE RL DE CV'),
          ('CLE201012NT3','CONSTRUCCIONES LESTERSKY SA DE CV'),
          ('CLE220311UA7','COMERCIALIZADORA LENAHC SA DE CV'),
          ('CLE230120Q25','CLEANTOILET SA DE CV'),
          ('CLI150120328','CONDUIT LIFE, S.A. DE C.V.'),
          ('CLI201125J52','CONPERPA LIMPIEZA SA DE CV'),
          ('CLL140904L11','COMERCIALIZADORA LYNQ LEVERAGE AND LOGISTICS S.A DE C.V.'),
          ('CLM140325QVA','CALZADO LEED DE MEXICO, S.A. DE C.V'),
          ('CLM150303337','CONSTRUCTORA LMI, S.A. DE C.V.'),
          ('CLO190624GP4','COMERCIALIZADORA LORSEM SOCIEDAD ANONIMA DE CAPITAL VARIABLE'),
          ('CLO220727G24','CONSEJ LOGISTIC SA DE CV'),
          ('CLP861216BC1','CENTRAL DE LAMINAS Y PERFILES ESPECIALES S.A. DE C.V.'),
          ('CLU1604275M9','CLUNDY, S.A. DE C.V.'),
          ('CLU170711HB9','COMERCIALIZADORA LUCAINENA SA DE CV'),
          ('CMA050418QH5','CONSTRUCCION MANTENIMIENTO Y ASESORIA DE OBRAS DUMA, S.A. DE C.V.'),
          ('CMA081007699','COMERCIALIZADORA MANTY SA DE CV'),
          ('CMA090227LC1','CORPORATIVO MAREN, SOCIEDAD DE RESPONSABILIDAD LIMITADA DE CAPITAL VARIABLE'),
          ('CMA091016BQ4','CONSTRUCCIONES Y MANTENIMIENTO ACTUAL SA DE CV'),
          ('CMA110317LA4','COMERCIALIZADORA MAGBE, S.A. DE C.V.'),
          ('CMA1212119H8','COMERCIAL MEDICA ARZE SA DE CV'),
          ('CMA1302121W6','COMERCIALIZADORA MAXBEL, S.A. DE C.V.'),
          ('CMA140828FG2','COMERCONS MARANCRIS SA DE CV'),
          ('CMA210219AJ8','CONSTRUCCIONES Y MONTAJES ARTS S DE RL DE CV'),
          ('CMA210909QP5','CASA MONTANO & MORALES SA DE CV'),
          ('CMA2203269E3','COMERCIALIZADORA MANHOS SA DE CV'),
          ('CMA230807D92','CHURRERIA MACARIO SC DE RL DE CV'),
          ('CMB220308UU5','CONSORCIO MEDICO BIOSEM S.A. DE C.V.'),
          ('CMC1508257E3','CEMACO MATERIALES PARA LA CONSTRUCCION DEL CENTRO S. DE R. L. DE C. V.'),
          ('CMC9504188D2','CANON MEXICANA, S. DE R.L. DE C.V.'),
          ('CMD190211HS2','CACOMIXTLE MEDIOS DIGITALES S.A. DE C.V.'),
          ('CME001204KS6','COMPUCARE DE MEXICO, S.A. DE C.V.'),
          ('CME0208154Q4','CAROL MEX S.A. DE C.V.'),
          ('CME021125H98','CITELUM MEXICO S.A. DE C.V.'),
          ('CME030317GC1','CONSORCIO METALPLASTICO S.A. DE C.V.'),
          ('CME061103A95','COMERCIALIZADORA DE MEDIOS ESCRITOS SA DE CV'),
          ('CME100120RA8','CRISSOF DE MEXICO S DE RL DE CV'),
          ('CME140729KB3','CARLEIN DE MEXICO, S.A. DE C.V.'),
          ('CME180409MZ9','COMERLUCIMAR DE MEXICO S.A. DE C.V.'),
          ('CME181204619','CULTURA EN MOVIMIENTO ESCENICO SC DE RL DE CV'),
          ('CME190617AW1','CONSTRUCCION Y  MANTENIMIENTO EFECTIVO CX S.A. DE C.V.'),
          ('CME730129A79','COMERCIALIZADORA METROGAS, S.A. DE C.V.'),
          ('CME740515NB6','CHESTERTON MEXICANA SA DE CV'),
          ('CMF0207245A8','CONSTRUCCION Y MANTENIMIENTO FINCA, S.A. DE C.V.'),
          ('CMF160726LQ9','COMERCIAL METALICA FE S.A DE C.V'),
          ('CMF970812KJ7','COMERCIALIZACION Y MANTENIMIENTO FYR S.A DE C.V'),
          ('CMG16072545A','CAMIONES METROPOLITANOS GR SA DE CV'),
          ('CMG230712IBA','COMEDOR MG SC DE RL DE CV'),
          ('CMG9903038I6','CORPORATIVO MEDICAL GROUP SC'),
          ('CMI061011RB4','CORPORATIVO Y MANTENIMIENTO INTEGRAL, S.A. DE C.V.'),
          ('CMI1301114Q5','COMERCIALIZADORA MIDLAND, S.A. DE C.V.'),
          ('CMI2011177I9','COMERCIALIZADORA MIKSAMM S.A DE C.V'),
          ('CMI860228TR8','CONSULTORIA METROPOLITANA DE INGENIERIA S.A. DE C.V.'),
          ('CMJ1901317D0','COMERCIO AL POR MAYOR JUQUILA SA DE CV'),
          ('CMJ190711FC7','CASA DE MATERIALES JENBAS SC DE RL DE CV'),
          ('CMJ211105DS8','CONSTRUCCION Y MATERIALES JABETZA 21 S.A. DE C.V.'),
          ('CML1802097E7','COMERCIALIZADORA MARKETER LOBS S.A. DE C.V.'),
          ('CML190911CN6','COMERCIALIZACION Y MANTENIMIENTO LIMPER, SA. DE CV.'),
          ('CMM150307C70','COMERCIALIZADORA DE MEDICAMENTOS Y MATERIAL DE CURACION ANTEQUERA S.A. DE C.V.'),
          ('CMM220926LA6','CONSTRUCTORA MATERIALES MTN SA DE CV'),
          ('CMM860120KI1','CASA DE MONEDA DE MEXICO'),
          ('CMO0302017L1','CLINICA MEDICA OSCAMI, SA DE CV'),
          ('CMO050307NX2','MAC COMPUTADORAS DE MORELOS, S.A. DE C.V.'),
          ('CMO180903PH7','100 MOTIVOS SA DE CV'),
          ('CMO2107074N5','CONSTRUCTORA MONTDARK SA DE CV'),
          ('CMO211029JXA','CONSORCIO MON810 SA DE CV'),
          ('CMO21121689A','COMERCIALIZADORA MOPASI SA DE CV'),
          ('CMO810331HW2','CERVECERIA MODELO S DE RL DE CV'),
          ('CMP0903039GA','CENTRO METROPOLITANO PARA PREVENCION DE LA CONTAMINACION Y GESTION INTEGRAL S.A. DE C.V.'),
          ('CMP230627BC9','COMERCIALIZADORA MEDICA PBG SA DE CV'),
          ('CMS100107GI3','CORPORATIVO MS SISTEMAS MEDICOS S.A. DE C.V.'),
          ('CMS841016Q67','CLINICA MEDICA SANTA ROSA SA DE CV'),
          ('CMU041122GN8','COMERCIALIZADORA MUNRRO, S.A. DE C.V.'),
          ('CMU070130RW4','CAHO MULTISERVICIOS S.A. DE C.V.'),
          ('CMU130514217','LA CASA MURMURA SA DE CV'),
          ('CMU9005034K1','CORPORACION MUSSI SA DE CV'),
          ('CMY101116K70','CORPORATIVO M.Y.M SA DE CV'),
          ('CNA070103DH8','CONSTRUCCIONES NANACA SA DE CV'),
          ('CNA171110111','CONSTRUCTORA NANTUCKET, S.A. DE C.V.'),
          ('CNE100930UY6','CUATRO NETWORKS S DE RL DE CV'),
          ('CNE220726E31','CE NEUTRAL SA DE CV'),
          ('CNI1910249Y7','CARPINTERIA NINO SC DE RL DE CV'),
          ('CNI590101LP9','CAMARA NACIONAL DE LA INDUSTRIA DE RESTAURANTES Y ALIMENTOS CONDIMENTADOS'),
          ('CNI7011257V5','CAMARA NACIONAL DE LA INDUSTRIA DE RADIO Y TELEVISION'),
          ('CNM980114PI2','AT&T COMUNICACIONES DIGITALES, S. DE R. L. DE C. V.'),
          ('CNO040116KG0','CONSTRUCTORA NOROTA SA DE CV'),
          ('CNO170328AK8','CONSTRUCTORA NONA S.A.P.I. DE C.V.'),
          ('CNO240419NK1','CECY NONANTZIN SC DE RL DE CV'),
          ('CNO9806189E7','COMERCIAL NORSK SA DE CV'),
          ('CNS231106HB0','CUANDO NECESITES, SIEMPRE A TUS SERVICIOS SC DE RL DE CV'),
          ('CNV161214R4A','COLEGIO NACIONAL DE VALUADORES PARA PROYECTOS DE INFRAESTRUCTURA AC'),
          ('CNV1710265W1','CENTRO DE NEGOCIOS VOLTTA SA DE CV'),
          ('COA0708249S6','CONSORCIO ORCA Y ASOCIADOS SA DE CV'),
          ('COAG910219','GERARDO ALBERTO CORDOVA AGUILERA'),
          ('COAL871107','LUIS FERNANDO CORDOVA AGUILERA'),
          ('COB990426PQ0','CONSULTORIA EN OBRA SA DE CV'),
          ('COBG651211','MA. GUADALUPE CORREA BERUMEN'),
          ('COC120224DI8','COMERCIALIZADORA Y OPERADORA 40 S.A. DE C.V.'),
          ('COC1409041R9','COCOMSA S.A DE C.V'),
          ('COC161111DJ1','CONSTRUCTORA DE OBRA CIVIL Y ELECTRICA COMPROFEEL S.A.DE C.V.'),
          ('COCF710306','FELICITAS CORDOVA CALLADO'),
          ('COCF920702','JOSE FRANCISCO COQUIS CASTANEDA'),
          ('COCH811021','HUMBERTO CORTES DEL CARMEN'),
          ('COCR750815','RAUL CONCEPCION CORONADO'),
          ('COE1510194S3','CONSTRUCCION DE OBRAS ELECTRICAS Y SOLARES COES SA DE CV'),
          ('COE180919N18','COESDA, S.A. DE C.V.'),
          ('COE1906077TA','CLINK ODONTOLOGIA ESPECIALIZADA SC DE RL DE CV'),
          ('COEC770429','CRISTOPHER CONTRERAS ESPEJO'),
          ('COEO591115','OLGA CORONADO ESPARZA'),
          ('COER710420','MARIA DEL ROCIO CORRAL ESPINOSA MONSIVAIS'),
          ('COF130830AH0','COFYSAD SOCIEDAD ANONIMA DE CAPITAL VARIABLE'),
          ('COF950203FDA','COFORMEX SA DE CV'),
          ('COGR911108','ROGELIO CONTRERAS GONZALEZ'),
          ('COGT910404','MARIA TERESA CONTRERAS GONZALEZ'),
          ('COI1102232B7','CORE ONE INFORMATION TECHNOLOGY SA DE CV'),
          ('COJK770402','KARINA ALEJANDRA CORONA JIMENEZ'),
          ('COLA770501','JOSE ANTONIO CORTES LUNA'),
          ('COLJ840720','JOSE DE JESUS CORTES LOPEZ'),
          ('COM021025A18','CAR ONE MONTERREY SA DE CV'),
          ('COM061023IC1','COMPRITECHNIQUE S. DE DE R.L DE C.V'),
          ('COM130124MI0','COMASE SA DE CV'),
          ('COM140107BV6','MC COMUNICACION SA DE CV'),
          ('COM140530D68','COMECONT SA DE CV'),
          ('COM160719JX1','COMDYLOG SA DE CV'),
          ('COM170808L89','COMEXMOL SA DE CV'),
          ('COM181120BY1','LA COMADREJA CONSULTORES S DE RL DE CV'),
          ('COM9004177T3','COMPERSA SA DE CV'),
          ('COM990331IT6','COMECAR SA DE CV'),
          ('COM990629V1A','COMERLAT, SA DE CV'),
          ('COMA810708','ADRIAN ELEAZAR CONTRERAS MARTINEZ'),
          ('COMK840701','KARLA VIRIDIANA CORTES MARQUEZ'),
          ('CON050502HX4','CONTRASYS S.A DE C.V.'),
          ('CON060410N43','CONASOSA SA DE CV'),
          ('CON120911FB2','CONSUCON SA DE CV'),
          ('CON151204JR4','CONSTRUFIDER S.A. DE C.V.'),
          ('CON171017DJ8','CONYTE S.A. DE C.V.'),
          ('CON180113HZ4','CONSTRUTEXAS SA DE CV'),
          ('CON181004G7A','CONSEGLOB S.A. DE C.V.'),
          ('CON240404SK6','CONSERTIC SAS DE CV'),
          ('COO2212161J3','COOPANTERAS SC DE RL DE CV'),
          ('COP0404279UA','CRP OPERADORA DE PERSONAL Y CONDOMINIOS S.C.'),
          ('COP100708LL5','CRIVIX OPERADORES DE PRODUCTOS Y SERVICIOS, S.A. DE C.V.'),
          ('COP1212048K3','COPRINOX SA DE CV'),
          ('COP231106K26','COPELIMP SC DE RL DE CV'),
          ('COR080529DF8','CORADIME, S.A. DE C.V.'),
          ('COR080803AR7','CORPORACIONES ORLANDO S.A DE C.V'),
          ('COR081212RP7','CORPOTORSES SA DE CV'),
          ('COR1306116RA','CORPORATIVO O2 RESPIRANDO S DE RL DE CV'),
          ('COR141022CT0','COMERCIALIZADORA ORTICHART SA DE CV'),
          ('COR1701316K3','CONSTRUCCIONES ORENSE SA DE CV'),
          ('COR181123EF4','COREBIT, S. DE R.L. DE C.V.'),
          ('COR211201F45','COMERCIALIZADORA ORSAY SA DE CV'),
          ('CORM640529','JOSE MANUEL CORTES DE LA ROSA'),
          ('COS190320972','COSEMATEL, S.A. DE C.V.'),
          ('COS2305196S7','COSOLCO SA DE CV'),
          ('COS6812064F4','COSMOCOLOR, S.A. DE C.V.'),
          ('COSI950725','IRMA GUADALUPE COBOS SOSA'),
          ('COSS500701','SALVADOR CORONA SALAZAR'),
          ('COVA681028','MARIA DE LOS ANGELES CORTES VILLANUEVA'),
          ('COVK910917','KENIA IVONNE CORTES VIVEROS'),
          ('COVL880318','LILIANA COLIN VELAZQUEZ'),
          ('CP&020411K48','COMERCIALIZADORA PC & HARDWARE SA DE CV'),
          ('CPA020315865','CONSTRUCTORA Y PAVIMENTADORA ALMAGUER SA DE CV'),
          ('CPA040903EG5','PKF DEL MAYAB SCP'),
          ('CPA130624A32','CUSTODIOS PAPRISA SA DE CV'),
          ('CPA160802F40','CORSA PARKING SA DE CV'),
          ('CPA2012098Q4','COMERCIALIZADORA Y PROVEEDORA AL-TA S.A DE C.V'),
          ('CPA221108GS3','COLEGIO PEDAGOGICO LOS ANGELES SC DE RL DE CV'),
          ('CPA240320LH2','CENTRO DE PSICOPEDAGOGIA POR AMOR SC DE RL DE CV'),
          ('CPC830415US4','CONSERVACION PILOTES DE CONTROL, S. A.'),
          ('CPD140603UK2','CONSULTORIA EN PLANEACION, DESARROLLO Y TERRITORIO S.C.'),
          ('CPD1810226F1','COMERCIALIZADORA DE PRODUCTOS DPV, S.A. DE C.V.'),
          ('CPD210726DS3','CU-GA PROYECTO Y DESARROLLO DE INFRAESTRUCTURA SA DE CV'),
          ('CPE030717HX7','CONSTRUCCIONES Y PROYECTOS EME SA DE CV'),
          ('CPE061212DK0','COMERCIALIZADORA PENTAMED, S.A. DE C.V.'),
          ('CPE090330Q73','CONSTRUCTORA Y PROYECTOS EVE SA DE CV'),
          ('CPE140320N85','CORPORATIVO PERKINY SA DE CV'),
          ('CPE150421LE3','COMERCIALIZADORA Y PUBLICIDAD ESID S.A. DE C.V.'),
          ('CPE170407AP4','CONSTRUCCIONES PEHUALLI, S.A DE C.V.'),
          ('CPE221111VE1','COMAL DE PELTRE SC DE RL DE CV'),
          ('CPH190522MW0','CIMA PHARMACEUTICA S DE RL DE CV'),
          ('CPH220202K98','CVS PHARMA SA DE CV'),
          ('CPI0404017C3','CONTROL DE PLAGAS INTERNACIONAL CENTINELA S.A. DE C.V.'),
          ('CPI180605PZ5','CONSTRUCTORA PIN-NAH, S.A. DE C.V.'),
          ('CPI9106184E5','"CENTRUM PROMOTORA INTERNACIONAL", S.A. DE C.V.'),
          ('CPJ001215N23','CONSTRUCCIONES Y PROYECTOS JUVA, S.A. DE C.V.'),
          ('CPL0502233S3','CONSTRUCCIONES PLATINUM SA DE CV'),
          ('CPL180308D63','COMERCIALIZADORA PEREZ LEDESMA SA DE CV'),
          ('CPL2109135A1','COMERCIALIZADORA PLATEAU SA DE CV'),
          ('CPL210920K48','CONNECCION PLUS SA DE CV'),
          ('CPM190621AG7','COCINA PAN Y MIEL SC DE RL DE CV'),
          ('CPM190809V48','COMERCIALIZADORA DE PRODUCTOS MGN S.A. DE C.V.'),
          ('CPM880209919','CENTRO DE PRODUCTOS MEDICOS S.A. DE C.V.'),
          ('CPM891212EK8','CENTRO PAPELERO MARVA SA DE CV'),
          ('CPQ080604EP6','CONSTRUCTORA Y PROYECTOS QUADRA, S.A. DE C.V.'),
          ('CPR000926QH3','CORPORATIVO PROMED S.A. DE C.V.'),
          ('CPR190607286','CORPORACION PRISMA, SA DE CV'),
          ('CPR210504M53','COMERCIALIZADORA PROMOSANTELL SA DE CV'),
          ('CPR210914F72','CHOZA PRODUCTORA SC DE RL DE CV'),
          ('CPR230831IMA','CAPITAL PAY ROLL SA DE CV'),
          ('CPR240319T23','CERAMICA PINTURA RESINA Y BORDADOS TLALTENCO SC DE RL DE CV'),
          ('CPR961125346','COMERCIALIZADORA PROMOTODO, S.A. DE C.V.'),
          ('CPS090812MC6','COMERCIALIZADORA Y PROMOTORA DE SUMINISTROS S.A. DE C.V.'),
          ('CPS170124KY2','COVECA PROYECTOS Y SERVICIOS SA DE CV'),
          ('CPS190329B4A','COMERCIALIZADORA DE PRODUCTOS Y SERVICIOS SANTO TOMAS S.A. DE C.V.'),
          ('CPT240306EN6','CARPINTERIA PEPE EL TORO SC DE RL DE CV'),
          ('CPW200924JB1','CORPORATIVO PRO WOLF SA DE CV'),
          ('CQE121218U31','LA CATRINA QUE EXPORTA S.A. DE C.V.'),
          ('CQF121031SRA','COMERCIALIZADORA QFT SA DE CV'),
          ('CRA0911206QA','CONSORCIO RAJIRE, S.A. DE C.V.'),
          ('CRA140403JJ5','COMERCIALIZADORA RAMYSAN SA DE CV'),
          ('CRA171122E57','CORPORATIVO RALF S.A.'),
          ('CRA200402LR8','COMERCIALIZADORA RAITHALI SA DE CV'),
          ('CRA220216BU7','COMERCIALIZADORA RS & EM, S.A. DE C.V.'),
          ('CRB1911075T3','CREACIONES RB SC DE RL DE CV'),
          ('CRD220802FNA','CONSORCIO RDBA, SOCIEDAD ANONIMA DE CAPITAL  VARIABLE'),
          ('CRE040427123','CONCRETOS RECICLADOS SA DE CV'),
          ('CRE080731EI0','COMERCIALIZADORA REJIMSA, S.A. DE C.V.'),
          ('CRE161018PW2','COMERCIALIZADORA REPIZ, S.A. DE C.V.'),
          ('CRE170504M39','COMPRA RENTANDO SAPI DE CV'),
          ('CRE190207U43','COMERCIALIZADORA REYEDZA SAS DE CV'),
          ('CRE231005RE0','CONSTRUCCIONES REFINNOU SA DE CV'),
          ('CRI200813992','CONSTRUCTORA RISSKOV SA DE CV'),
          ('CRI220623KF3','COMERCIALIZADORA RIALTEX SA DE CV'),
          ('CRI660702M43','EL CRISOL, S.A. DE C.V.'),
          ('CRJ2012106N3','CONSTRUCCIONES Y REMODELACIONES JRC SA DE CV'),
          ('CRM151216IJ0','CONCENTRADORA DE RESIDUOS MEXICANA SA DE CV'),
          ('CRM170411TNA','CARDIO RCP MEXICO S DE RL DE CV'),
          ('CRM230816225','CONSULTORIA RURAL, MANTENIMIENTO Y SOLUCIONES INTEGRALES BAHERE SAS'),
          ('CRM310630JG3','CADENA RADIODIFUSORA MEXICANA, S.A. DE C.V.'),
          ('CRO070829AS9','"CONSTRUCCIONES ROYAGA S.A DE C.V. "'),
          ('CRO091106L25','COMERCIALIZADORA RODIER, S. DE R.L. DE C.V.'),
          ('CRO140826K25','COMERCIALIZADORA RA 8 S.A DE C.V.'),
          ('CRO1502241H2','CRONA S.A DE C.V'),
          ('CRO1611163R6','CROLSA SA DE CV'),
          ('CRO97061954A','COMERCIAL ROSHFRANS, S.A. DE C.V.'),
          ('CRP1401298P2','COMERCIALIZADORA DE REFACCIONES PRACMA SA DE CV'),
          ('CRP1809079X9','CONSTRUCCIONES Y REMODELACIONES EL PEDREGAL SA DE CV'),
          ('CRT160217ST3','CONSORCIO ROCA DE TICS DE MEXICO SA DE CV'),
          ('CRT220930RR9','CAFE EL RINCON DE LA TERRAZA SC DE RL DE CV'),
          ('CRU101103AQ3','COMERCIALIZADORA RUVAK S.A. DE C.V.'),
          ('CRU930630HF5','CONSTRUCTORA RUMER S.A. DE C.V.'),
          ('CRX171222CP0','CR44 SA DE CV'),
          ('CSA040906TA1','COMERCIAL SANERA S.A. DE C.V.'),
          ('CSA060615BK6','CASA SUSY ARKAN S.A DE C.V'),
          ('CSA070124QI5','COMERCIALIZADORA Y SERVICIOS ALPINO S.A. DE C.V.'),
          ('CSA140819976','COMERCIALIZADORA SARHUA S.A DE C.V'),
          ('CSA210705RF8','CONSTRUCTORA Y SUMINISTROS ASFALTICOS ARQUIMIA SA DE CV'),
          ('CSA211028BS0','CONSTRUCTORA SABIBIA, S.A. DE C.V.'),
          ('CSA230622FP6','COMERCIALIZADORA SAREVLO SA DE CV'),
          ('CSA960827626','CONSULTORES Y SOPORTE AMD. S.A. DE C.V.'),
          ('CSB210222796','CORPORATIVO DE SERVICIOS DE BRILLO Y LIMPIEZA OCP SA DE CV'),
          ('CSE0505123CA','CORPORATIVO SERSELIM SA DE CV'),
          ('CSE081030C47','CIENTIFICA SENNA, S.A. DE C.V.'),
          ('CSE1207135EA','CONSTRUCCIONES SUSTENTABLES E INTELIGENTES, S.A. DE C.V.'),
          ('CSE1606158T1','COMERCIALIZADORA SEINES SA DE CV'),
          ('CSE1610114H7','CONTRASYS SERVICIOS S.A DE C.V.'),
          ('CSE1708094R8','COMERCIALIZADORA SEALRI, S.A DE C.V.'),
          ('CSE181105971','COMDIGITEX SERVICIOS SAS DE CV'),
          ('CSF961105MR8','CONSTRUCCIONES Y SUMINISTROS FAROGO, S.A. DE C.V.'),
          ('CSG0302107M0','CONSTRUCCION Y SERVICIOS GAFCSA SA DE CV'),
          ('CSG170607PB9','CF + GAB CONSTRUCCIONES, S.A. DE C.V.'),
          ('CSG2310053T1','COLIBRI SOLUCIONES - CONTROL DE PLAGAS SA DE CV'),
          ('CSI0409143Z8','CALIDAD Y SISTEMAS DE INGENIERIA S.A DE C.V'),
          ('CSI091201SN1','COMERCIALIZADORA DE SERVICIOS INDUSTRIALES Y SUMINISTROS FH SA DE CV'),
          ('CSI100901Q12','CLICK SEGUROS INC SA DE CV'),
          ('CSI110824FM5','CORPORATIVO DE SERVICIOS DE INVESTIGACION, PROTECCION DE DOCUMENTOS Y CIENCIAS FORENSES S.A DE C.V'),
          ('CSI130326HD1','CIRKLOMED SOLUCIONES INTEGRALES, S.A. DE C.V.'),
          ('CSI170515RL5','CLALE SOLUCIONES INTEGRALES A INMUEBLES, S.A. DE C.V.'),
          ('CSI180620RI1','CONSTRUSERVICIOS SIRI S.A. DE C.V.'),
          ('CSI200211SI1','COMERCIALIZADORA DE SERVICIOS INTEGRALES JUVALFRI S.A. DE C.V.'),
          ('CSI200212PF1','CLETA SERVICIOS INTEGRADOS S.A. DE C.V.'),
          ('CSI9009074Y6','CROSS SERVICIOS DE INGENIERIA, S. A. DE C. V.'),
          ('CSI930715QV0','CORPORACION SICMA S.A. DE C.V.'),
          ('CSI940323F41','COMSA SEGURIDAD INTEGRAL S.A. DE C.V.'),
          ('CSI980907QN7','COORDINACION DE SERVICIOS EN INFORMATICA, S.A. DE C.V.'),
          ('CSI990730SW9','CORPORATIVO EN SERVICIOS DE INGENIERIA MEDICA SA DE CV'),
          ('CSJ0902047R9','CONSTRUCCIONES SAN JUDAS TADEO SA DE CV'),
          ('CSL230830C2A','COMERCIO Y SOLUCIONES LHM SAS DE CV'),
          ('CSM050902P17','CONSTRUCCIONES Y SERVICIOS MARSA SA DE CV'),
          ('CSM051213VC4','CONSTRU+MAS, S.A. DE C.V.'),
          ('CSM110915U78','COMERCIALIZADORA Y SERVICIOS MULTIJAN , S.A. DE C.V.'),
          ('CSM1212179B8','CONCRETOS SUSTENTABLES MEXICANOS S.A.P.I DE C.V.'),
          ('CSM160126MW4','COMERCIALIZACION Y SERVICIOS MENDER S.A. DE C.V.'),
          ('CSM201207P53','CAPITAL SMART-TRADE SA DE CV'),
          ('CSM960620L30','CONSTRUCCION SERVICIOS Y MANTENIMIENTO ELECTRICO SA DE CV'),
          ('CSN180816E68','CMC SERVICE NETWORK SA DE CV'),
          ('CSO041118IA3','CONSTRUCCION Y SUPERVISION DE OBRAS JEM SA DE CV'),
          ('CSO061206EC2','CONSTRUCCIONES SOMIRP SA DE CV'),
          ('CSO191030HA7','CUSTOMS AND SERVICES ORTIZ Y ASOCIADOS S.A. DE C.V.'),
          ('CSO2309121A5','CONSULTORIA Y SERVICIOS ONE PARA MEDIA & BROADCAST S DE RL DE CV'),
          ('CSP100405EJ5','CUIDADOS EN SALUD PREHOSPITALARIA SIPROMEDIC SA DE CV'),
          ('CSR161128FX3','COMERCIALIZADORA SCOTT RF S.A. DE C.V.'),
          ('CSS101004QB6','5 STAR SYSTEM SA DE CV'),
          ('CSS140915C58','CASONATO STEELCO SPA S.A DE C.V.'),
          ('CSS191016SV5','CORPORATIVO DE SALUD SALUDARTE SAS DE CV'),
          ('CSS9001168L5','CONOCIMIENTO Y SABER SIGLO XXI, S.A. DE C.V.'),
          ('CST080221JP9','CONSULTORIA Y SERVICIOS EN TECNOLOGIA HIX SA DE CV'),
          ('CSX160307D71','COMERCIALIZADORA Y SERVICIOS XAJUM S.A. DE C.V.'),
          ('CSZ160804IZ0','COMERCIALIZADORA DEL SUR ZOHER SA DE CV'),
          ('CTA1410091C0','COMERCIALIZADORA TATICH, S.A. DE C.V.'),
          ('CTA1707272B4','COMERCIALIZADORA TAARNA, S.A. DE C.V.'),
          ('CTA2011179V0','COMERCIALIZADORA TATZUMARU SA DE CV'),
          ('CTA240229NE5','CORREDOR TAXQUENA AVENIDA AZTECAS COTAXASA SA DE CV'),
          ('CTC2306263J9','CENTRO DE TERAPIAS COMPLEMENTARIAS VIDA SC DE RL DE CV'),
          ('CTD130313QS6','CONSULTORIA EN TIC Y DISCAPACIDAD S DE RL DE CV'),
          ('CTE061020391','CONDUCCION DE TELECOMUNICACIONES, S.C.'),
          ('CTE170719V62','CERVICA TEX SA DE CV'),
          ('CTG080207223','CENTRO TECNOLOGICO GRAMA S.A. DE C.V.'),
          ('CTH120705DI0','CRECER TALENTO HUMANO Y TECNOLOGIAS SC'),
          ('CTI140516H79','CADENA TRES I, SA DE CV'),
          ('CTI210413F15','CAMIONES Y TRACTOCAMIONES INNOVA SA DE CV'),
          ('CTI2403063Y3','COPTAXINU TAXISTAS INDEPENDIENTES 2 SC DE RL DE CV'),
          ('CTL160620482','SOCIEDAD COMUNAL DE TLALPAN, S. DE P.R.  DE R.I.'),
          ('CTM1708078J8','CICLISMO PARA  TODOS  MEXICO A.C.'),
          ('CTM191021S78','CULTIVANDO TRABAJO PARA LAS MUJERES DE TLALPAN S.C. DE R.L. DE C.V.'),
          ('CTM220915PW9','CULTURA Y TRADICION MEXICO TENOCHTITLAN SC DE RL DE CV'),
          ('CTM230608P28','CONTRAFUTURO 3000 SA DE CV'),
          ('CTN050608935','COMERCIAL TNSMEX SA DE CV'),
          ('CTO000411UQ1','COMERCIO TOTAL SA DE CV'),
          ('CTO1101188S6','GRUPO TOYSO SA DE CV'),
          ('CTO210813AM5','COMERCIALIZADORA TOPIK SA DE CV'),
          ('CTR831122N85','CONTROL TECNICO Y REPRESENTACIONES, S.A. DE C.V.'),
          ('CTS051117FD6','CENTRO DE TECNOLOGIAS DEL SURESTE, S.A. DE C.V.'),
          ('CTS160701TL5','COGNITIO TECHNOLOGY SOLUTIONS, S.A. DE C.V.'),
          ('CTS230215Q2A','CHIPS TECNOLOGICOS DE SEGURIDAD GLOBAL SA DE CV'),
          ('CTU090506FP8','COMERCIALIZADORA TUNONI, S.A. DE C.V.'),
          ('CTU140221FH8','CAMPESINOS TRANS UNIDOS MAPE S.C.'),
          ('CTU231020198','COMERCIALIZADORA TURCHESIK SA DE CV'),
          ('CUA151113AL4','CUATRECASAS SC'),
          ('CUBL910117','LESLI FATIMA CRUCES BENITEZ'),
          ('CUC980309IA5','CONSTRUCTORA U5 SA DE CV'),
          ('CUD100726KB2','HEKA CODESA SA DE CV'),
          ('CUE031021381','CONSTRUCTORA Y URBANIZADORA EMKIU, S.A. DE C.V.'),
          ('CUE220218FL0','CENTRO UNIVERSITARIO DE ENSENANZA SUPERIOR SC'),
          ('CUGG810915','GIOVANNI CRUZ GARCIA'),
          ('CUGV860530','VIOLETA CUETO GATICA'),
          ('CUHC561219','CRISOFORO DARIO CRUZ HERNANDEZ'),
          ('CUHG800826','GABRIEL CRUZ HERNANDEZ'),
          ('CUHJ650609','JUAN JORGE DE LA CRUZ HIDALGO'),
          ('CUI161123D50','CONSTRUCCIONES Y URBANIZACIONES IVENT, S.A DE C.V'),
          ('CUI240221F33','COMERCIALIZADORA UIXAR SA DE CV'),
          ('CUJS710324','SONIA CRUZ JIMENEZ'),
          ('CULC840102','CHRISTIAN CRUZ LAGUNA'),
          ('CUM040729NS8','CONSTRUCTORA URBANIZADORA MAGREG, S.A. DE C.V.'),
          ('CUMC990718','CONSTANCIO CRUZ MENDOZA'),
          ('CUME750528','ENRIQUE CRUZ MARTINEZ'),
          ('CUMO901016','OSCAR DANIEL CRUZ MARTINEZ'),
          ('CUN230119LG6','CONSTRUCTORA UNHER SA DE CV'),
          ('CUR240329GHA','CURAMEDISUMIN SC DE RL DE CV'),
          ('CURC700717','CONSTANCIO CRUZ RODRIGUEZ'),
          ('CUS0302192E8','CUSTOMSOFT, S.A.P.I. DE C.V.'),
          ('CUS190304HQ9','CUSAK SOCIEDAD ANONIMA DE CAPITAL VARIABLE'),
          ('CUSL751213','LAURA CRUZ SANTILLAN'),
          ('CUT230831590','CAMPESINOS UNIDOS TRANSPORTE DE AGUA, TIERRA Y LIBERTAD SA DE CV'),
          ('CUTM910110','MARIO KEVIN CUEVAS TORRES'),
          ('CUU170824RM8','CONSTRUCCION Y URBANIZACION URBICON S.A. DE C.V.'),
          ('CUVM821006','MARIO ANTONIO CRUZ VARELA'),
          ('CVA030919QG0','COMERCIALIZADORA VAMIR S.A. DE C.V.'),
          ('CVA080704E37','CONSTRUCTORA VARAZZE S.A. DE C.V.'),
          ('CVA100723SS3','CONSTRUCTORA VALLENTO SA DE CV'),
          ('CVA130304MF3','COMERCIAL VALVRI S.A DE C.V.'),
          ('CVA171207MS7','CONSTRUCTORA VANNER, S.A. DE C.V.'),
          ('CVA2105244T1','125 ANOS Y CONTANDO, S.A. DE C.V.'),
          ('CVA970623IM5','CORPORACION VAZOR SA DE CV'),
          ('CVD191010GG7','COMPRA Y VENTA DE DESPERDICIOS INDUSTRIALES GONZALEZ BELMONT SC DE RL DE CV'),
          ('CVE140509LC9','COMPRAMEX VERA SA DE CV'),
          ('CVE141013944','CASA VEGA EVENTOS S.A. DE C.V.'),
          ('CVE161017139','CONSTRUCCIONES VERASI S.A. DE C.V.'),
          ('CVE180417I24','CIMA 21 S DE RL DE CV'),
          ('CVE221103SA4','CD VENTURES SA DE CV'),
          ('CVG9705206Z4','COMERCIALIZADORA VETERINARIA GUAYANGAREO S.A. DE C.V.'),
          ('CVI0001191J9','COMERCIALIZADORA VIRDI, S. A. DE C. V.'),
          ('CVI140728SY2','COMINT VIAN SA DE CV'),
          ('CVM000616QWA','CVM CONSTRUCCIONES SA DE CV'),
          ('CVM130109HI5','CREACIONES DE VANGUARDIA MOGAR SA DE CV'),
          ('CVV851031Q7A','CALZADO VAN VIEN, S.A. DE C.V.'),
          ('CXL920515MR2','COMERCIALIZADORA XLZ SA DE CV'),
          ('CXO190703UD4','MI CASA EN XOCHIMILCO S.A DE C.V.'),
          ('CYA0611101R8','"CYACOM SA DE CV "'),
          ('CYN211207IH7','CONSTRUCCIONES YNA SA DE CV'),
          ('CZL050831CHN','CRRC ZHUZHOU LOCOMOTIVE CO., LTD.'),
          ('DAA150323FS6','DISTRIBUIDORA AMERICA & DOBA SA DE CV'),
          ('DAC200213HP6','DCOR ACCOUNTING SAS'),
          ('DAD2308297F3','DELICIAS ADONIS SC DE RL DE CV'),
          ('DAGC810709','CARLOS GUSTAVO DAVILA GUZMAN'),
          ('DAGL900424','LUIS HECTOR DAVALOS GONZALEZ PLATA'),
          ('DAI220721IC5','DISENO ARQUITECTONICO E INMOBILIARIO DESINGMOB SA DE CV'),
          ('DAI230221DT6','DISENO Y ARQUITECTURA INTROSPECTIVA ARGOS SA DE CV'),
          ('DAI920925FG3','DISTRIBUIDORA ARCOS IRIS 2000, S.A. DE C.V.'),
          ('DAN130930JI5','DUO ALTO NIVEL EN SERVICIOS S.A. DE C.V.'),
          ('DAN191021AK6','COOPERATIVA DANITAS SC DE RL DE CV'),
          ('DAN201015910','DANAKYNI S.A. DE C.V.'),
          ('DAN2111202L4','DIRECCION Y ASISTENCIA EN NEGOCIOS SUPREME SA DE CV'),
          ('DAN2203286A2','DESARROLLADORA ANDALE S.A. DE C.V.'),
          ('DAR160225589','DARSHAN S.A. DE C.V.'),
          ('DAR170331DK2','DRAFTER AND ARCHITECTS S.A. DE C.V.'),
          ('DAS200513RIA','DREEDGE & SEWER COMPANY, S.A. DE C.V.'),
          ('DASS860724','MARIA SOCORRO DATHOLLI DE CIRIZA SOSA'),
          ('DAT110315TN0','DATA ADMINISTRACION TECNICA PARA RECURSOS HUMANOS SA DE CV'),
          ('DAT130617RA1','HR RATINGS MEDIA SA DE CV'),
          ('DAT141215SG3','DATAFLASH, S.A. DE C.V.'),
          ('DAT170217NN4','DISENO ANALISIS TRANSFORMACION Y APLICACION DE DATA S.A. DE C.V.'),
          ('DAT181212SB4','DG & TIC CONSULTING SA DE CV'),
          ('DAT2110192V8','DATASIGN SA DE CV'),
          ('DAT2310105F9','DISTRIBUIDORA Y ALQUILADORA TAMAYO SAS'),
          ('DAT990315UB6','DESTINO ALTA TECNOLOGIA S,A, DE C,V.'),
          ('DAY1205301V9','DAYGAPA S.A. DE C.V.'),
          ('DBA110628GE5','DIAGNOSTIC BJ ANGEL S.A. DE C.V.'),
          ('DBA230707L36','DOLCE BON APPETIT SC DE RL DE CV'),
          ('DBC121009H47','DHB BIOMED CONSULTANT GROUP S.A. DE C.V.'),
          ('DCA140408355','DISTRIBUIDORA Y COMERCIALIZADORA ANKER, S.A DE C.V.'),
          ('DCA151014MC9','DISTRIBUIDORA A LA CABEZA SA DE CV'),
          ('DCA961119DM9','DISENO Y CONSTRUCCIONES ALVEG SA DE CV'),
          ('DCA961129NM7','DESARROLLO Y CALIDAD AMBIENTAL, S.A. DE C.V.'),
          ('DCB110204NY4','DISTRIBUIDORA Y COMERCIALIZADORA BOSSANOVA SA DE CV'),
          ('DCB1106238NA','DISTRIBUIDORA COMERCIAL BELUXA, S.A. DE C.V.'),
          ('DCC060623TY0','DESARROLLO Y CONSTRUCCIONES CARIBALI SA DE CV'),
          ('DCC070227IC5','DISENO, CONSTRUCCION Y CONSULTORIA MFD S.A DE C.V.'),
          ('DCC110427AG4','DISTRIBUIDORA COMERCIAL CENTRA S.A. DE C.V.'),
          ('DCC150902KG8','DISTRIBUIDORA COMERCIAL LA COFRADIA, S.A. DE C.V.'),
          ('DCF210420NC6','DISTRIBUIDOR CIENTIFICO FENIX SA DE CV'),
          ('DCF941207MG0','DIRECCION Y CONTROL DE FRANQUICIAS, S.A. DE C.V.'),
          ('DCG090520HS5','DISTRIBUIDORA DE CAMIONES GUERRERO, S.A. DE C.V.'),
          ('DCG2304133A4','DURAMEX CLEANING GROUP SA DE CV'),
          ('DCG231103J62','DELICIAS CHIMIS GC SC DE RL DE CV'),
          ('DCI120925343','DIDACTIC CITY SA DE CV'),
          ('DCJ0704206S8','DISENO Y CONSTRUCCIONES JIMBAR S.A. DE C.V.'),
          ('DCM080328IJ5','DISENOS  Y CAMINOS MEXICANOS S.A. DE .C.V'),
          ('DCM130705AS5','DISENOS Y COSTURAS MOLOTLA SC DE RL DE CV'),
          ('DCM140127F54','DISTRIBUIDORA Y COMERCIALIZADORA MAGERJO, S.A. DE C.V.'),
          ('DCM2307274WA','DAELIF CONSTRUCCION Y MANTENIMIENTO SA DE CV'),
          ('DCO050223QK7','DISENO Y CONSULTORIA OAXAQUENA SA DE CV'),
          ('DCO110812C35','DAKAN CORP SA DE CV'),
          ('DCO2007204WA','DICSA COMUNICACIONES SA DE CV'),
          ('DCO2306277MA','DELICIAS COSMICAS SC DE RL DE CV'),
          ('DCO230712UY8','DAIRY COW SC DE RL DE CV'),
          ('DCO971027HD9','DEFIC CONSULTORES SA DE CV'),
          ('DCP150811GL7','DINAMICA COMERCIAL DE PRODUCTOS Y SERVICIOS LL SA DE CV'),
          ('DCP790511D36','DICIPA S.A. DE C.V.'),
          ('DCR010913HN7','DISTRIBUIDORA CRISNA SA DE CV'),
          ('DCR080806ID0','DISENOS CRUZ ROSAS SC DE RL DE CV'),
          ('DCR1606147C2','DESARROLLO EN COMPETENCIAS REDES SC'),
          ('DCR180315V63','DIE CRUMOND SA DE CV'),
          ('DCR220223KN9','DISTRIBUIDORA CREAMAG SA DE CV'),
          ('DCS1603188P7','DINA COMERCIALIZACION SERVICIOS Y REFACCIONES SA DE CV.'),
          ('DCU191011LF7','COOPERATIVA DCU SC DE RL DE CV'),
          ('DCV1809278N7','DISTRIBUIDORA COMERCIAL VENTI S.A. DE C.V.'),
          ('DCZ230816I58','DESARROLLADORA Y CONSTRUCTORA ZALDIC SA DE CV'),
          ('DDA0009144E6','DIGITAL DATA, S.A. DE C.V.'),
          ('DDA1308292X8','DISTRIBUIDORA DADE SA DE CV'),
          ('DDC050818MW9','DOPPELMAYR MEXICO S.A. DE C.V.'),
          ('DDE200722UH8','DMX DESARROLLO ESTRATEGICO DE MEXICO SA DE CV'),
          ('DDE211208R83','DEMEC DEMOLICIONES SA DE CV'),
          ('DDE2404304Q3','DHALUX DELIVERY SA DE CV'),
          ('DDI1108042R8','DESARROLLO DE INGENIERIA EN MEDICION Y CONTROL SA DE CV'),
          ('DDI931011GI1','DISTRIBUIDORA DISUR, S.A. DE C.V.'),
          ('DDM840626PM2','DEMOS, DESARROLLO DE MEDIOS, S.A. DE C.V.'),
          ('DDM950901N65','DISENO Y DESARROLLO MEDICO, S.A, DE C.V.'),
          ('DDP060912TE3','DEPROINSA DESARROLLOS PROFESIONALES DE INGENIERIA S.A. DE C.V.'),
          ('DDP100209PIA','DESARROLLADORA DE PROYECTOS Y OBRA CIVIL, S.A. DE C.V.'),
          ('DDR1811223R3','DIVE DRIVE SC DE RL DE CV'),
          ('DDS180404GG2','DREN-VAC DESAZOLVE Y SANEAMIENTO ECOLOGICO S.A DE C.V'),
          ('DEA960212H8A','DINAMICA EMPRESARIAL ALABARDA S.A. DE C.V.'),
          ('DEBR570809','ROSA SILVIA DELGADO BENITEZ'),
          ('DEC191230K46','DHOOMAN ECO SA DE CV'),
          ('DEC210714J85','DMT ESTRATEGIA Y COMUNICACION SA DE CV'),
          ('DED1001213GA','DARIAN EDIFICACIONES S.A. DE C.V.'),
          ('DEE031112SI7','OCESA PROMOTORA SA DE CV'),
          ('DEI0502117M3','DISTRIBUIDORA ELECTRICA E INDUSTRIAL DE JUAREZ SA DE CV'),
          ('DEI181016UTA','DEINAP SA DE CV'),
          ('DEL080912H13','DELTAPRO, S.A. DE C.V.'),
          ('DEL140117R95','MINSA COMERCIAL SA DE CV'),
          ('DEL1801104Z8','DELENCET SC DE RL DE CV'),
          ('DEM9803313VA','DISTRIBUIDORA DE EQUIPO MEDICO S. A. DE C. V.'),
          ('DEN1408062JA','DENIKO SA DE CV'),
          ('DES170601JRA','DAL ESTRATEGIAS Y SOLUCIONES EMPRESARIALES SA DE CV'),
          ('DES201111BNA','DISTRIBUIDORA ESPARTACO SA DE CV'),
          ('DESA730316','ARACELI DELGADO SALVADOR'),
          ('DEV980604K82','DEVICI SA DE CV'),
          ('DEW780426CF3','DEWIMED, S.A.'),
          ('DFP210324DH5','DIEMSY FIRE PROTECCION SA DE CV'),
          ('DFP231018AZ4','DON FER PUNTO GRAFICO DEL CENTRO SC DE RL DE CV'),
          ('DGA090401123','DUNAS GAS, S.A. DE C.V.'),
          ('DGA830930787','DISTRIBUIDORA GARDI S. A. DE C. V.'),
          ('DGD140219237','DISTRIBUIDORA DE GAS Y DIESEL JUVENTUS S.A. DE C.V.'),
          ('DHA190205JW6','HERNANDEZ & GODINEZ ABOGADOS SC'),
          ('DHU950214JN6','DISTRIBUIDORA HUDSON, S.A. DE C.V.'),
          ('DIA081112EQ1','DISTRIBUIDORA INTEGRAL DE ANALISIS CLINICOS, S.A. DE C.V.'),
          ('DIA200430556','DIANLUI, S.A. DE C.V.'),
          ('DIAG880817','GABRIELA DIAZ ARELLANO'),
          ('DIC000124B70','DESPACHO INTEGRAL DE CONTADORES ASOCIADOS, S.C.'),
          ('DIC8503081A4','DESPERDICIOS INDUSTRIALES DE CUERNAVACA, S.A. DE C.V.'),
          ('DICT800922','TOMASA DIEGO CHINO'),
          ('DICV951024','VICTOR MANUEL DIAZ DE LEON CASTRO'),
          ('DIE15060472A','DESARROLLADORA DE IDEAS Y ESPACIOS SA DE CV'),
          ('DIE230525TI7','DESARROLLOS IT EMISHA SA DE CV'),
          ('DIED580824','DINA GEORGINA DIAZ ESPINOZA'),
          ('DIG1303057W2','DIGAMANIC, S.A. DE C.V.'),
          ('DIG130917F9A','DIGIBOX SA DE CV'),
          ('DIGS691216','SAUL DIAZ GODINEZ'),
          ('DIHP690723','PEDRO JAVIER DIAZ HUERTA'),
          ('DII180518PJ5','DATIK INFORMACION INTELIGENTE MX SA DE CV'),
          ('DIL1906265Q0','DILOSH SA DE CV'),
          ('DIM0712037M3','DISTRIBUCIONES INDUSTRIALES MELO SA DE CV'),
          ('DIM101126DA7','DIMSSICO S.A DE C.V'),
          ('DIM131024NU2','DIMSA INTERPRETACION MEDICA S.A. DE C.V.'),
          ('DIM171023960','DISENOS INDUSTRIALES MEJIA GONZALEZ SC DE RL DE CV'),
          ('DIM981123210','DISPOSITIVOS IMPLANTABLES DE MEXICO, S.A. DE C.V.'),
          ('DIML810626','LORENA DIAZ MARTINEZ'),
          ('DIMN661130','NORMA ANGELICA DIAZ MARTINEZ'),
          ('DIN140818148','DALRUB INDUSTRIAL S.A. DE C.V.'),
          ('DIN1802162H2','DEMEX INGENIERIA S.A. DE C.V.'),
          ('DIN200715PH3','DRL INGENIERIA S.A. DE C.V.'),
          ('DIN2109214D2','DSC-AC INTEGRACIONES SA DE CV'),
          ('DIN211224LG1','DYSOJU INGENIEROS S.A. DE C.V.'),
          ('DIN221214SY2','DISTRIBUIDORA INDIS SAS DE CV'),
          ('DIN960506RS7','DELMAN INTERNACIONAL, S.A. DE C.V.'),
          ('DIOI571220','IRMA DIAZ DE LA O'),
          ('DIOJ770812','JUAN PABLO DE DIEGO OLMEDO'),
          ('DIP210324HT0','DISTRIBUIDORA E INTEGRADORA PAMALLIER SA DE CV'),
          ('DIRC690105','MARIA CLAUDIA DIAZ REYES'),
          ('DIRO720622','OSCAR DIAZ RODRIGUEZ'),
          ('DIS000505PB1','DISIME S.A. DE C.V.'),
          ('DIS030214AY5','DISMER SA'),
          ('DIS130226K87','DISERMAQ, S.A. DE C.V.'),
          ('DIS211202AF5','DISIVA, SOCIEDAD DE RESPONSABILIDAD LIMITADA DE CAPITAL VARIABLE'),
          ('DIS220714Q9A','DISAO SA DE CV'),
          ('DIS971113SG8','DISIMED, S.A. DE C.V.'),
          ('DISD901113','DIEGO HASSEF DIAZ SOLIS'),
          ('DITS700616','SERGIO DIAZ TIERRA BLANCA'),
          ('DIVA880130','ALVARO DANIEL DIAZ VELAZQUEZ'),
          ('DIZ070321GY7','DISTRIBUIDORA INDUSTRIAL ZAGARMEX S.A. DE C.V.'),
          ('DIZ790129RU1','DIZAR, S.A. DE C.V.'),
          ('DJI210319272','DESPACHO JURIDI, IURIS VOLUN SA DE CV'),
          ('DLC230520L43','DLCY SC DE RL DE CV'),
          ('DLE100223ML7','DISTRIBUIDORA LECONS, S.A. DE C.V.'),
          ('DLE160907210','DISTRIBUIDORA LEIRU S.A. DE C.V.'),
          ('DLI0802258E4','DISTRIBUCIONES LIMONTA S.A DE C.V'),
          ('DLI130802EF1','DISTRIBUIDORA LICAME S.A. DE C.V.'),
          ('DLM1309302R2','DC LUX MEXICO SA DE CV'),
          ('DLM14080572A','DORD LAB MEXICO S.A. DE C.V.'),
          ('DLU230712B60','DESARROLLADORA LUDKAM SA DE CV'),
          ('DMA030919NY6','DISTRIBUIDORA MATRIX S.A. DE C.V.'),
          ('DMA070727J21','D MOR ACABADOS Y PINTURAS S. A. DE C. V.'),
          ('DMB880805AV0','DESPACHO MILAN BRITO, S.C.'),
          ('DMC210706RK6','DISTRIBUIDORA DE MATERIALES CONDUEFI SA DE CV'),
          ('DMC960722RR3','DISMARK MARKETING COMUNICACION Y DISENO PARA SUS MARCAS S.A. DE C.V.'),
          ('DMD1806254L8','D MAS D, ESPACIOS ARQUITECTO S DE RL DE CV'),
          ('DME031022G9A','DGSO MEXICO SA DE CV'),
          ('DME0510287H3','DR MEXICO S.A. DE C.V.'),
          ('DME0905224P7','DAHFSA DE MEXICO, S.A. DE C.V.'),
          ('DME150225U15','DIORZA MEXICO SA DE CV'),
          ('DME151015QT2','DRPRO MED S.A DE C.V.'),
          ('DME170622AA0','DISTRIBUIDORA MERIDIO SA DE CV'),
          ('DME181029QW6','DSTI MEXICO, S.A. DE C.V.'),
          ('DME1902141N6','DIVYMAX MEXICO, S.A. DE C.V.'),
          ('DME190502HBA','DEPORTEXTILES DE MEXICO SA DE CV'),
          ('DME210726A39','DIMA MEDICA SA DE CV'),
          ('DMI061003PF9','DISTRIBUIDORA DE MEDICAMENTOS E INSUMOS PARA HOSPITALES SA DE CV'),
          ('DMI140611MX8','DISTRIBUIDORA MISAR S.A. DE C.V.'),
          ('DMI150303U79','DISTRIBUIDORA MIVEP S.A. DE C.V.'),
          ('DMI960624VD3','DISENO, MANUFACTURA E IMPORTACION DE ELEVADORES S.A. DE C.V.'),
          ('DMM1504304S8','DISTRIBUIDORA MACEDO MARKETING SA DE CV'),
          ('DMO171127TN5','DASEIN MOTOS SA DE CV'),
          ('DMO900207LK0','DEPORTES MORALES, S.A. DE C.V.'),
          ('DMO920302C18','DISTRIBUCIONES MOGU, S.A. DE C.V.'),
          ('DMR211025IP3','DISTRIBUIDORA MEDICA RED PANDA SA DE CV'),
          ('DMS190220ER5','DISTRIBUIDORA MAYORISTA SYL S.A. DE C.V.'),
          ('DMS230602C15','DAIS MAQUILA Y SERVICIOS SA DE CV'),
          ('DNA230712L48','DC NAIL ACADEMY SC DE RL DE CV'),
          ('DNU220405Q48','DISTRIBUIDORA NUVOPRO SA DE CV'),
          ('DOE230113NF5','DOUBLE ONE ELEMENTS SA DE CV'),
          ('DOEN770303','NADIA VERENIZE DOMINGUEZ ESTRADA'),
          ('DOHD860630','DIEGO GABRIEL DOMINGUEZ HERNANDEZ'),
          ('DOLN890929','NATALI FABIOLA DOROTEO LUNA'),
          ('DORM510509','MANUEL DOMINGUEZ RUIZ'),
          ('DPA030211Q57','DISTRIBUIDORA PAO, S.A. DE C.V.'),
          ('DPA200717KH0','DESTAJOS Y PRECIOS ALZADOS DE MEXICO S DE RL DE CV'),
          ('DPA761103D28','DISTRIBUIDORA PACRO S.A DE C.V.'),
          ('DPC1303214B2','DESARROLLO EN PROTECCION CIVIL ZONA CENTRO S.A. DE C.V.'),
          ('DPH101213CP6','DISENO Y PRODUCCION HGV SA DE CV'),
          ('DPH220930CI8','DISENO Y PUBLICIDAD HUNTER SC DE RL DE CV'),
          ('DPI990611GI1','DISTRIBUIDORA PIARO, S.A. DE C.V.'),
          ('DPL920128K47','DISENO PARTICULAR EN LIMPIEZA SA DE CV'),
          ('DPM120127PG9','DLA PIPER MEXICO SC'),
          ('DPO1907195W1','DOCTOR POOL SA DE CV'),
          ('DPR150827NF4','DISTRIBUIDORA PROVECER, S.A. DE C.V.'),
          ('DPR9904135Q8','DISTRIBUCIONES Y PROYECTOS, S.A. DE C.V.'),
          ('DQM060216T17','DISTRIBUIDORA QMB SA DE CV'),
          ('DQU1606215L0','DISTRIBUCIONES QUICONICOS SA DE CV'),
          ('DRE0707129Z3','DESARROLLOS REGUA SA DE CV'),
          ('DRE860527DW8','DISENOS Y REALIZACION S.A. DE C.V.'),
          ('DRH1803076K6','DISTRIBUIDORA DE ROPA HILATOL SA DE CV'),
          ('DRN0110258D6','D ROCA NETWORKS SA DE CV'),
          ('DRN191203QH6','DISFRACES Y ROPA DE NINO DIOS ANDRES SC DE RL DE CV'),
          ('DRO061113LY2','DISTRIBUIDORA RALIX DE ORIENTE SA DE CV'),
          ('DRO0905227B6','DROG-BA COMPANIA, S.A. DE C.V.'),
          ('DRO1906149U8','DISTRIBUIDORA REHCO DE OCCIDENTE SA DE CV'),
          ('DRO200213HZA','DINING ROOMS, S.A. DE C.V.'),
          ('DRO940125JU0','DISTRIBUIDORA ROJIS, S.A. DE C.V.'),
          ('DRT230714BF6','DESAYUNOS RAPIDOS LOS TRES GRILLOS SC DE RL DE CV'),
          ('DSA040312NW0','D.R. SAGITARIO S.A. DE C.V.'),
          ('DSA201216MV2','DRAKKAR SYSTEMS & ELECTRONICS SA DE CV'),
          ('DSA2301043TA','DISTRIBUIDORA SUSTENTABLE AISHA SA DE CV'),
          ('DSC050210M19','DSI SOLUCIONES CONTRA INCENDIO SA DE CV'),
          ('DSE180919MP4','DESARROLLOS Y SERVICIOS ENARO S.A. DE C.V.'),
          ('DSE910502ES8','DIAUTO SERVICIO SA DE CV'),
          ('DSI010223ST6','DETECCION Y SUPRESION INTELIGENTES SA DE CV'),
          ('DSI200626KF6','DAAM SOLUCIONES INTEGRALES EN INSTALACIONES, S.A. DE C.V.'),
          ('DSI2008271T6','DJ SOLUCIONES INTEGRALES SA DE CV'),
          ('DSM090216JV9','DIGITAL STUFF MEDIA SA DE CV'),
          ('DSO140526JX5','DEMANK SOLUCIONES SA DE CV'),
          ('DSO2209239U3','DINOLAIA SOLUTIONS, S.A.S. DE C.V.'),
          ('DSO2212138H8','DROKLIN SOLUTION SA DE CV'),
          ('DSP960705PB0','DIRECCION SPORT SA DE CV'),
          ('DSS121222IC0','D?SAZON SEGURIDAD ALIMENTARIA SA DE CV'),
          ('DST160505B87','DISTRIBUIDORA STACKS S.A. DE C.V.'),
          ('DSU8106243Y9','DISTRIBUIDORA SUIZA S.A. DE C.V.'),
          ('DSV200713KX4','DESTELLO Y SEGURIDAD VIAL SA DE CV'),
          ('DTA221125BU4','DISENOS TEXTILES DE ALTA COSTURA VALDIVIA SC DE RL DE CV'),
          ('DTE000118N96','DESARROLLO Y TECNOLOGIA EMPRESARIAL S.A. DE C.V.'),
          ('DTE071111IN2','DOLPHIN TELECOMUNICACIONES, S.A. DE C.V.'),
          ('DTE191209QN5','DARMESA TECNOLOGIAS, SA DE CV'),
          ('DTE220720SY3','DRAKO TECHNOLOGY SA DE CV'),
          ('DTE240227AY2','DIVERSION Y TODO PARA EVENTOS SUSY SC DE RL DE CV'),
          ('DTH141210EG0','DHA DE LA TORRE HERNANDEZ Y ASOCIADOS, SA DE CV'),
          ('DUD100319QLA','DISTRIBUIDOR URKO Y DRAGO, S.A. DE C.V.'),
          ('DUEA790719','ALMA VIANEY DURAN ESQUIVEL'),
          ('DVA070130BG1','DISTRIBUIDORA VARSOTO SA DE CV'),
          ('DVC060116L34','PARADOXIA, S.A. DE C.V.'),
          ('DVI211129IT7','DRAMA VIDEO SA DE CV'),
          ('DVS12070276A','DESARROLLOS VERDES SUSTENTABLES S.A. DE C.V.'),
          ('DWA041125U40','DATA WARDEN SA DE CV'),
          ('DYN1808282V0','DYNAMAC S.DE R.L.DE C.V.'),
          ('DYN9906012NA','DYNTRA SA DE CV'),
          ('DZA210204KX5','DISTRIBUIDORA ZABRA SA DE CV'),
          ('EAAC490915','CARLOS ESLAVA ALCANTAR'),
          ('EAAK901123','KAREN LIZBETH ESTRADA ALVARADO'),
          ('EAC050311FV1','ENTORNO ACTIVO SA DE CV'),
          ('EAD1205107M9','EDIFICACIONES ARQUITECTONICAS 2021 SA DE CV'),
          ('EAGI970711','ISRAEL ARMANDO ESTRADA GARRIDO'),
          ('EAI1604136K5','EQUIPAMIENTO Y ASESORIA EN INGENIERIA BIOMEDICA S.A. DE C.V.'),
          ('EAL171123S50','EDITORIAL ALGARABIA SA DE CV'),
          ('EAN100408JX9','EDITORIAL ANIMAL S DE RL DE CV'),
          ('EAP000106BW7','ESPECIALISTAS EN ACABADOS PROFESIONALES S.A. DE C.V.'),
          ('EARC850513','CARLOS MANUEL ESTRADA RAMIREZ'),
          ('EAS110721A11','ETANIM ASOCIADOS S.A. DE C.V.'),
          ('EAS191210CK2','EQUIPMENT & SERVICES JV S.A. DE C.V.'),
          ('EAS200828IK3','ENERGY ASFALTOS, S.A. DE C.V.'),
          ('EAU140826RZ5','EITECH AUTOMATION S.A. DE C.V.'),
          ('EAV190607TA8','ELECTRONICOS Y ARTICULOS VARIADOS J&G SOLIDARIO SC DE RL DE CV'),
          ('EAZD621211','DANIEL ESTRADA ZAMORA'),
          ('EBE121221671','ESTRATEGIAS BETA SC'),
          ('EBI1012166P1','ESPECTRO BIOMEDICO SA DE CV'),
          ('EBO2211109I9','ESTACION DE BOTANA SC DE RL DE CV'),
          ('EBP8403152K9','EQUIPOS BIOMEDICOS PROFESIONALES SA DE CV'),
          ('EBR230628FA8','ESTETICA BRENPAO SC DE RL DE CV'),
          ('ECC990609FI3','EXPERTOS EN COMPUTO Y COMUNICACIONES S.A. DE C.V.'),
          ('ECD741021QA5','ESTUDIOS CLINICOS DR. T.J. ORIARD S.A. DE C.V.'),
          ('ECE080131C26','ECO CORPORACION EMPRESARIAL MEXICO S.A. DE C.V.'),
          ('ECE111116MP2','ENERGIA DEL CENTRO, ENERGIA ECOLOGICA S.A. DE C.V.'),
          ('ECE180622CQ6','ESTUDIO CERCETA SA DE CV'),
          ('ECE2306209W9','ESCUELA COMUNITARIA DE EDUCACION PREESCOLAR TLAHUAC IX SC DE RL DE CV'),
          ('ECG190509QF0','ENAD COMERCIO GLOBAL, S.A. DE C.V.'),
          ('ECH210217G32','ELA CAPITAL HUMANO SA DE CV'),
          ('ECL1712146Q9','ESLABON CLINICO SA DE CV'),
          ('ECO101229HA1','ECOLOMEX S.A. DE C.V.'),
          ('ECO110527J20','"ESPIGARCI CONSTRUCCIONES" SA DE CV'),
          ('ECO130222KW1','ECIT CONSTRUCCIONES S.A. DE C.V.'),
          ('ECO131021MD0','ECOSOLMEX SA DE CV'),
          ('ECO1509021S7','EAPRO CONSTRUCCIONES S.A DE C.V.'),
          ('ECO190415UC9','ENGINE CORE, S.A. DE C.V.'),
          ('ECO190605J4A','ENVIRO CONSULTING SA DE CV'),
          ('ECO221129SC8','ESTELUM CORPORATION SA DE CV'),
          ('ECO230905AC9','ERIJEMS CONSTRUCCIONES SA DE CV'),
          ('ECO240516QT6','EGKA COMMERCE SAS DE CV'),
          ('ECP020522TY0','EQUIPO DE COMPUTO Y PAPELERIA SA DE CV'),
          ('ECR130703IQ9','ELECTROMEDICA CRONOS SA DE CV'),
          ('ECR1508188R1','ESTRATEGIAS COMERCIALES REO SA DE CV'),
          ('ECR920903K97','ESPECIALIDADES COMERCIALES REYES, S.A. DE C.V.'),
          ('ECS130925612','ELAN CONSULTORES Y SERVICIOS S.C.'),
          ('ECS911025BA4','ENTER COMPUTADORAS Y SERVICIOS SA DE CV'),
          ('ECT9303302H6','EXCELENCIA EN COMUNICACIONES Y TECNOLOGIA S.A. DE C.V.'),
          ('ECU160526JK0','ECU&LAB SC DE RL DE CV'),
          ('ECU170503NR8','ESPACIOS CUAJIMALPA, S.A. DE C.V.'),
          ('EDA080307271','EQUIPOS PARA DIAGNOSTICO ANALITICO, S.A. DE C.V.'),
          ('EDC100511RP4','ESTRATEGIA EN DISENO Y CONSTRUCCION ESDICO SA DE CV'),
          ('EDC1605279N1','ESPECCTRO DISENO Y CONSTRUCCION INTEGRAL SA DE CV'),
          ('EDE001020QL6','EDERTI, S.A. DE C.V.'),
          ('EDI230614HQ1','ET DIGITAL SC DE RL DE CV'),
          ('EDS190917HD4','EJ DISTRIBUCIONES Y SERVICIOS S.A. DE C.V.'),
          ('EDU180711HK3','EDUBYTES, S.A. DE C.V.'),
          ('EEA1006077G5','ESCALATOR, ELEVATOR & ELECTROMECHANICS ENTERPRISE SA DE CV'),
          ('EEA180618CQ5','EQUIPOS Y ESTRUCTURAS DEL ALTIPLANO SA DE CV'),
          ('EEA240216KE7','EVENTOS ESPECIALES Y ANTOJITOS GRIMALDO SC DE RL DE CV'),
          ('EEA240304R82','EVENTOS ESPECIALES Y ANTOJITOS LAURA SC DE RL DE CV'),
          ('EEA9104088G7','EASA ELECTROMECANICA Y ARQUITECTURA S.A. DE C.V.'),
          ('EEB1210246E6','EBO EFFICIENT BUSINESS OPERATOR SA DE CV'),
          ('EEC160303LD1','ECASA EXCAVACIONES Y CONSTRUCCIONES DE ANTEQUERA SA DE CV'),
          ('EED1603149D7','ENVIRONMENTAL ENGINEERING DESIGN SA DE CV'),
          ('EED1805155Q3','ECOLOGIA Y EXPERTOS EN DESARROLLO SUSTENTABLE P &R S DE RL DE CV'),
          ('EEE000525LB1','EQUIPOS Y ENLACES EMPRESARIALES, S.A.'),
          ('EEG2306051R2','EREX EGGUN SAS DE CV'),
          ('EEHL661219','LIDIA ESTRELLA HERNANDEZ'),
          ('EEL030217T72','ESPACIOS ELVYCK SOCIEDAD DE RESPONSABILIDAD LIMITADA DE CAPITAL VARIABLE'),
          ('EEL121127KY2','EXCELENCIA EN LIMPIEZA JEMNY, SA DE CV'),
          ('EEL231109R86','ESTETICA ELY SC DE RL DE CV'),
          ('EEP930928FP3','ELECTROMECANICA EQUIPOS Y PROYECTOS, S. A. DE C. V.'),
          ('EER1707147F3','ENSUN ENERGIAS RENOVABLES SA DE CV'),
          ('EES141002MUA','ESAM ESPECIALISTAS EN SERVICIOS AUTOMOTRICES DE MEXICO, S.A. DE C.V.'),
          ('EES2001302R5','ERIGIR ESPACIOS SA DE CV'),
          ('EES221110BBA','EXPLORNE ESTRUCTURAS SA DE CV'),
          ('EES221122199','EDUCAMON ES SALUD AC'),
          ('EFC100219VC6','EXITO Y FUERZA COMERCIAL YUNMAK S.A. DE C.V.'),
          ('EFE8908015L3','EFECTIVALE, S. DE R.L. DE C.V.'),
          ('EFI030227P25','EFINFO S.A.P.I. DE C.V.'),
          ('EFN230619CU4','ESTUDIO DE FOTOGRAFIA NUEVA GENERACION SC DE RL DE CV'),
          ('EFO220822QS6','ENFOQUE FOTOGRAFICO SC DE RL DE CV'),
          ('EFS040927EZ0','EDIFICACIONES FUTURO SIMPLE SA DE CV'),
          ('EFU980619F9A','EDUCACION PARA EL FUTURO, S.A. DE C.V.'),
          ('EFW180111116','ELECTRICITY  FOR THE WORLD MEXICO S DE RL DE CV'),
          ('EGB120608V68','ELECTROMEDICA 3G Y BIOMEDICA S.A. DE C.V.'),
          ('EGL140814RDA','EDITORES - LIBREROS S.A DE C.V.'),
          ('EGX220926LB3','EDUCA G SC DE RL DE CV'),
          ('EHI171012AV4','ESPACIO HIZA SA DE CV'),
          ('EIA130709BH8','ESPECIALISTAS, INTERPRETES Y ASOCIADOS S.C.'),
          ('EIC0108075CA','EMPRESA INTERNACIONAL DE CARROCERIAS Y EQUIPOS SA DE CV'),
          ('EIC150911IP3','ELECTROTALLER INDUSTRIAL Y COMERCIAL EL RURAL SA DE CV'),
          ('EIC230327GB9','EAMSA INGENIERIA Y CONSTRUCCION SA DE CV'),
          ('EICA761224','JOSE ALFREDO ESPINOSA CAPETILLO'),
          ('EICM721126','MARIA ESPINOZA CARDENAS'),
          ('EICS710710','SEYMUR ESPINOZA CAMACHO'),
          ('EID180508N23','EDITORIAL INIZIATIVA DV SA DE CV'),
          ('EIFE471226','ENRIQUE IGNACIO ESPINOSA FERNANDEZ'),
          ('EIFO771231','OSWALDO ESPINOSA FUENTES'),
          ('EIG230424C33','ESTANCIA INFANTIL GONZY SC DE RL DE CV'),
          ('EIGR670226','RAQUEL ENRIQUEZ GOMEZ'),
          ('EIHL670726','MARIA LUISA ESPINOSA HERNANDEZ'),
          ('EII180620ET6','ENGINTRA INGENIERIA INTEGRAL SA DE CV'),
          ('EIL130529TB9','ESPACIOS INTELIGENTES L2 SA DE CV'),
          ('EIM060703H79','EMOCION IMPRESA, S.A. DE C.V.'),
          ('EIM230728790','ESTANCIA INFANTIL MANITAS CREATIVAS SC DE RL'),
          ('EIM8706121T2','EQUIPOS INTERFERENCIALES DE MEXICO SA DE CV'),
          ('EIMM790614','MANUEL EDUARDO ELIZALDE MONZON'),
          ('EIN691015LK4','ESCOBILLA INDUSTRIAL, S.A. DE C.V.'),
          ('EIP130411Q51','EXTERMINIO INTEGRAL DE PLAGAS E HIGIENE AMBIENTAL, S.A. DE C.V.'),
          ('EIR2306216F9','ESTANCIA INFANTIL EL RINCON DE LOS NINOS FELICES SC DE RL DE CV'),
          ('EIRL800119','LORENZO ESPINOZA RODRIGUEZ'),
          ('EIS180406570','EPSILONPI INGENIERIA EN SISTEMAS ESTRUCTURALES Y PROTECCION CIVIL, S.A. DE C.V.'),
          ('EIT101221A96','EXPERTOS EN INFRAESTRUCTURA Y TELECOMUNICACIONES-EXIT SA DE CV'),
          ('EIT160129RM2','EITSA SA DE CV'),
          ('EIT210805IS0','ENDLESS INNOVATION TECHNOLOGIES SA DE CV'),
          ('EIV090121PH4','ENFOQUE IMPRESO VISUAL DE MEXICO, S.A. DE C.V.'),
          ('EJU130704F13','ESTILO JUVENIL S.A. DE C.V.'),
          ('ELA1911076Y9','EDIFICACIONES LAMORE S.A. DE C.V.'),
          ('ELE181031KV0','ELECTRIC-MAS SA DE CV'),
          ('ELM170817QG5','ENSAMBLADORA LATINOAMERICANA DE MOTORES S A P I DE CV'),
          ('ELM191121V99','ECC LLANTAS Y MECANICA EXPRESS S.A. DE C.V.'),
          ('EMA190612S61','ENKI MX ARQUITECTURA, S.A. DE C.V.'),
          ('EMA200710DS2','SOCIEDAD ECONOMISTA MAYA SA DE CV'),
          ('EMA981014KD4','ENTIDAD MEXICANA DE ACREDITACION A.C.'),
          ('EME0010105I6','ENTIDAD MEXICANA DE ESTUDIOS ESPECIALES S.A. DE C.V.'),
          ('EME070328PQ8','EUN MEXICO SA DE CV'),
          ('EME130314AU4','ECOBLUE DE MEXICO S.A. DE C.V.'),
          ('EME221215TI8','ESPACIO MULTIESCALAR ESTRATEGICO SA DE CV'),
          ('EME720914C86','EYSSA MEXICANA SA DE CV'),
          ('EME7905301M7','ELECTRONICA Y MEDICINA S.A.'),
          ('EME880309SK5','ESTAFETA MEXICANA, S.A. DE C.V.'),
          ('EMF210820KE8','EDENRED MEXICO FINTECH SA DE CV'),
          ('EMI160406CJ4','EMPRESA MIWAT SA DE CV'),
          ('EMI230421E9A','EMILUNCH SC DE RL DE CV'),
          ('EMI230707S65','EMPRENDEDORES MANUET Y IMPULSO JUVENIL DE LA CDMX SC DE RL DE CV'),
          ('EMI970219QD7','EDIFICACION Y MANTENIMIENTO INTEGRAL, S.A. DE C.V.'),
          ('EMO040506AC6','EGO MOVIL SA DE CV'),
          ('EMP121116453','EMPROTEX, S.A. DE C.V.'),
          ('EMP190703SZ7','EMPEI S A P I DE CV'),
          ('EMQ840831MU3','EQUIPOS MEDICOS QUIRURGICOS, SA DE CV'),
          ('EMS231013FT1','ELECTRICIDAD Y MAGNETISMOS PARA SISTEMAS DE TRENES SA DE CV'),
          ('EMU090326SB7','EMURLIMP S.A DE C.V.'),
          ('EMY150608537','EDIFICACIONES Y MATERIALES YASSER SA DE CV'),
          ('ENA130815RG8','ESTUDIO NARROS, S.A. DE C.V.'),
          ('ENA140731VBA','ESTRATEGA EN NEGOCIOS AGLAIA SA DE CV'),
          ('ENE150203KY9','ERANCA NETWORKS S.A. DE C.V.'),
          ('ENJ181004Q74','ESTRUCTURAS NACIONALES JURESCA S.A. DE C.V.'),
          ('ENK160426UT5','ENKOLL S.A DE C.V.'),
          ('ENT0105223S6','ENTERADONLINE SA DE CV'),
          ('ENZ180629UG9','ENZOTEX SA DE CV'),
          ('EOIM720705','MIREYA ESCOBAR IBARRA'),
          ('EOMM680223','MANUEL ESCOBAR MAYA'),
          ('EOO160922AP1','ECO_OBRAVICK, OBRA CIVIL Y MANTENIMIENTO S.A. DE C.V.'),
          ('EOOH680710','HECTOR MARIO ESCOBOZA OSUNA'),
          ('EOV9601316Z8','EDITORIAL OVACIONES, S.A. DE C.V.'),
          ('EPC180607DV3','EVANNOB PROYECTOS Y CONSTRUCCION SA DE CV'),
          ('EPD210325HM9','ESTRATEGIAS, PROYECTOS, DISENOS Y SOLUCIONES DE VANGUARDIA S.A DE C.V'),
          ('EPG210708799','ESTUDIOS Y PROYECTOS GOCHI SA DE CV'),
          ('EPI211108KP0','EXPOPUBLICITY PIXIE SA DE CV'),
          ('EPL170426UN1','ENTER PLAZA, S.A. DE C.V.'),
          ('EPL201027JP3','EMPORIO PONCE DE LEON S.A. DE C.V.'),
          ('EPP240304MQ9','ESTETICA PERSONAL PLAYA GRANDE SC DE RL DE CV'),
          ('EPR040720395','EVOLUTION PROCES, S.A. DE C.V.'),
          ('EPR1005269S2','EDITORIAL PROSPERIDAD S.A DE C.V'),
          ('EPR150625N17','E-TALENT PROFILE SA DE CV'),
          ('EPR2307102T5','EUROPA PRODUCCIONES SC DE RL DE CV'),
          ('EPR231117RU3','ESTRIDENCIA PRO SA DE CV'),
          ('EPR930506DT1','EDITORA LA PRENSA SA DE CV'),
          ('EPU9812212U5','CAPITAL NEWS, S.A. DE C.V.'),
          ('EPV240320FN6','ESTUDIO PROFESIONAL VIRTUAL DE LA EDUCACION MEXICANA INNOVADORA SC DE RL DE CV'),
          ('EQU861104AT1','EQUIPAR SA DE CV'),
          ('ERE0707038CA','EQUIPOS RECOLECTORES S.A. DE C.V.'),
          ('ERE880516B49','ELEVADORES DE LA REPUBLICA S.A DE C.V'),
          ('ERS140325GV4','ELECTROMECANICA RSIKI, S.A. DE C.V.'),
          ('ESA200929525','ERRE SANTINA S.A DE C.V.'),
          ('ESC021112CB0','EFCOY SUPERVISION Y CONSTRUCCION SA DE CV'),
          ('ESC091022JV3','ESCARPIO S.A. DE C.V.'),
          ('ESC110914563','ENTERPRISE SOURCE CAPITAL DE MEXICO SA DE CV'),
          ('ESC220627MP6','ESTETICA Y SPA LA CONSENTIDA SC DE RL DE CV'),
          ('ESC8911081Q8','ELEVADORES SCHINDLER, S.A. DE C.V.'),
          ('ESE091209SP1','ESPECIALISTAS SERCO S.A DE C.V'),
          ('ESE101125A33','ESPECIALIDADES SERITAM SA DE CV'),
          ('ESE180730IG7','E&VS SUSTAINABLE ENERGY SOLUTIONS S.A. DE C.V.'),
          ('ESF190524778','ESFUNO SA DE CV'),
          ('ESI070315P14','EQUIPAMIENTO Y SERVICIO INTEGRAL ECAS SA DE CV'),
          ('ESI1711049A9','EQUIPOS DE SEGURIDAD INCENDIES SA DE CV'),
          ('ESI1911277S5','EBIOMEX SERVICIOS E INSUMOS SA DE CV'),
          ('ESI211013P43','ETHERLINE SOLUCIONES INTEGRALES SA DE CV'),
          ('ESI23041329A','EVOLUTION SIMBIOTICS SA DE CV'),
          ('ESL2010158V4','EVA&JONAS SERVICIOS DE LIMPIEZA SA DE CV'),
          ('ESM021111HV1','EQUIPOS Y SISTEMAS PARA MEDIR Y TRATAR AGUA S.A DE C.V.'),
          ('ESM210329VCA','ENERGIAS SOLARES MEXICANAS SA DE CV'),
          ('ESO0602217B7','EYCA SOLUCIONES SA DE CV'),
          ('ESO1103098V9','EYETECH SOLUTIONS SA DE CV'),
          ('ESP111208M96','ECARMN SERVICIOS Y PROYECTOS INTEGRALES, S.A. DE C.V.'),
          ('EST0501178Z9','ELECTRO SUMINISTROS TERMICOS DE PUEBLA SA DE CV'),
          ('EST071123FM4','ESTERIPHARMA, S.A. DE C.V.'),
          ('EST1204271F9','ESTERI-MEX S.A. DE C.V.'),
          ('ESX2202217N6','ECOAGRO SOLUTIONS XVKG SA DE CV'),
          ('ETB0101087BA','ESPECIALISTAS EN TUBERIAS Y BOMBAS S.A. DE C.V.'),
          ('ETC0105041R9','EXCELENCIA TECNOLOGICA EN LAS COMUNICACIONES, S.A. DE C.V.'),
          ('ETD200127EAA','ESTANQUILLO EL 32 S. C. DE R. L. DE C. V.'),
          ('ETE081217AU4','ECLIPSE TELECOMUNICACIONES S.A. DE CV'),
          ('ETE141201EL9','EXCELENCIA EN TRANSPORTE ESCOLAR Y  DE PERSONAL SAPI DE CV'),
          ('ETH150224N47','EXCLUSIVAS TEXTILES HERSA, S.A. DE C.V.'),
          ('ETH2111121P9','EB THEKOB SA DE CV'),
          ('ETM91010882A','AIRBUS SLC SA DE CV'),
          ('ETP010801IHA','ESTRELLA DE TRES PUNTAS SC'),
          ('ETR200220492','EDIFICACIONES TRUVIOM SA DE CV'),
          ('ETV230704KG5','ESTUDIO TERAPIA VILLA FELIZ SC DE RL DE CV'),
          ('EUF110124C4A','ENFORCER UNITS FIRE SERVICE PLUSE MEXICO SA DE CV'),
          ('EUI060307KI4','EDIFICACIONES URBANAS INTEGRALES SA DE CV'),
          ('EUPH720405','HECTOR ESQUIVEL DE PAZ'),
          ('EUR130531BNA','EUROFORTE SA DE CV'),
          ('EVA180914HT4','EVARMEX, S.A. DE C.V.'),
          ('EVA181217JJA','EVANGUARD S.A.S DE C.V.'),
          ('EVE120423750','EVEPSE S.A. DE C.V.'),
          ('EVE190402AG4','ENERGON VENTURES S DE RL DE CV'),
          ('EVI080418B89','ELECTROMEDICOS VISA SA DE CV'),
          ('EVI210527GU1','EXPRESS VIT S. DE R.L DE C.V.'),
          ('EVO121214810','ESPECIALISTAS EN VOCEO SA DE CV'),
          ('EXE0912089N5','EXECUDATA, S.A. DE C.V.'),
          ('EXP6812035X3','EXPANSION S.A. DE C.V.'),
          ('EXR230712CR4','COOPERATIVA DE ENCOMIENDA XRZ SC DE RL DE CV'),
          ('EXT220110GP6','EXTERMIPLAG SA DE CV'),
          ('EYE130613AJ3','EYETECH S.A. DE C.V.'),
          ('EYP0304227R4','EYPRO S.A DE C.V.'),
          ('EYT061030N95','ENSAYOS Y TAMIZAJES DE MEXICO, S.A. DE C.V.'),
          ('FAA0910096F0','FORZA ARRENDADORA AUTOMOTRIZ, S.A. DE C.V.'),
          ('FAB060131QG0','F.H. ABRAXAS, S.A. DE C.V.'),
          ('FAB1301317K1','FUMIGACIONES A Y B INTERNACIONAL SA DE CV'),
          ('FAC221026EE9','FERROMATERIALES Y ACABADOS EN CONCRETO MX SA DE CV'),
          ('FACA471125','ADELA FALLENA Y COHEN'),
          ('FAG100913J69','FAGAME SA DE CV'),
          ('FAL080702S73','FARMACEUTICA ALTHOS, S.A. DE C.V.'),
          ('FALH810113','HILARIA FRANCO LUCAS'),
          ('FAM131204IF1','FAMTRUCAP, S. DE R.L. MI'),
          ('FAM1403204Z0','FAMULUS S.A. DE C.V.'),
          ('FAR100318FH5','FARMACENTER S.A. DE C.V.'),
          ('FAR140620IK0','FARMAHOME S.A.P.I. DE C.V.'),
          ('FAR180404KG9','FARMALIVE S A P I DE CV'),
          ('FAR650224NP5','FOTO ARTE SA DE CV'),
          ('FAS1406169P8','FARMACOS Y ABASTECIMIENTOS PARA LA SALUD SA DE CV'),
          ('FBE2308087Z7','FORRAJERIA BELTRAN SC DE RL DE CV'),
          ('FCA230814QH3','FONDA CANASTAKY SC DE RL DE CV'),
          ('FCC230923UU2','FLOR Y CANTO, CAPACITACION, TRABAJO Y DISCIPLINA SC DE RL DE CV'),
          ('FCI120409MR8','FRENCH CHIC SA DE CV'),
          ('FCL1910098K8','FORWARD CONECTING, LEARNING, SHARING, S.A. DE C.V.'),
          ('FCN201029IQ8','FERRETERA Y COMERCIALIZADORA NICZA S.A. DE C.V.'),
          ('FCO090710GJ6','FORTE CONSULTORES SC'),
          ('FCO150701D35','FRAJOR COMERCIALIZADORA S.A. DE C.V.'),
          ('FCO171013IP5','DRIVEN ASSET MANAGMENT SA DE CV'),
          ('FCO191120156','FATIGU CONSTRUCCIONES SA DE CV'),
          ('FCO210810H71','FANGIO COM SA DE CV'),
          ('FCP0702164I3','FUMI DIP CONTROL DE PLAGAS, S.A. DE C.V.'),
          ('FCP090203V84','FIDISI COORPORATIVO EN PROCESOS AMBIENTALES S.A. DE C.V.'),
          ('FDA210907C16','FRANCE DISTRIBUCION ALLIANCE SA DE CV'),
          ('FDC930607BS4','FABETY DISENO Y CONSTRUCCION S.A. DE C.V.'),
          ('FDM201104767','DE FORMA DIFERENTE MEXICO SA DE CV'),
          ('FEAV790123','VICENTE FERREYRA ACOSTA'),
          ('FEC940126CB9','FUMIGACIONES ECOLOGICAS, S.A. DE C.V.'),
          ('FEC980109S60','FORZA ECOSISTEMAS S.A. DE C.V.'),
          ('FECJ631129','JULIO CESAR FERRA CALZADA'),
          ('FEE1511246R5','FOMENTO EMPRESARIAL EALY CARDENAS SA DE CV'),
          ('FEH781106F99','FEHLMEX SA DE CV'),
          ('FEM110831M97','FEMSE S.A DE C.V.'),
          ('FEM7906285D9','FIRE EQUIPMENT DE MEXICO, S.A. DE C.V.'),
          ('FEMB690105','BEATRIZ FERNANDEZ MIRANDA'),
          ('FEN2309125VA','FUERZA DE ESTRATEGIA Y NEGOCIOS CHANGE SC'),
          ('FER131217NU9','FERMETEX S.A DE C.V'),
          ('FER190222U26','FERNICMEX SA DE CV'),
          ('FER190711UP3','FERROSID SA DE CV'),
          ('FER940307BI8','FERREVI S.A. DE C.V.'),
          ('FER980119RK8','FERRECORP, S.A. DE C.V.'),
          ('FES240222TCA','FORMACION ESTRATEGICA SUPERA T SAS'),
          ('FESG650110','GONZALO ALFONSO FERNANDEZ SOTO'),
          ('FESM870107','MARTIN FERNANDEZ SILVA'),
          ('FFA160308JD6','FORLARK FORTALEZA EN ARQUITECTURA, S.A. DE C.V.'),
          ('FFA220712DJ8','FAHMIA FABRICACION EN ALUMINIO, HERRERIA, MANTENIMIENTO INTEGRAL Y AIRES ACONDICIONADOS SC DE RL DE CV'),
          ('FFD221214IU9','F2B FASHION DEVELOPMENT SA DE CV'),
          ('FFI000302GZ3','FANTASMAS FILMS, SA DE CV'),
          ('FFS011214P28','FOX FIRE SYSTEMS, S.A. DE C.V.'),
          ('FGA840531CT2','FLAMA GAS S.A. DE C.V.'),
          ('FHM010731TP8','THE FACTORY HOUSE MEXICO, S.A. DE C.V.'),
          ('FID080111867','FREIGHT IDEAS SA DE CV'),
          ('FIE180725FX8','FIERA INGENIERIA ELECTRICA SA DE CV'),
          ('FIGS610624','SILVIA FIGUEROA GRACIAN'),
          ('FIGV851006','VERONICA FRIAS GALICIA'),
          ('FIH051010768','FOREFRONT IN HEALTH, S.A. DE C.V.'),
          ('FIH910606J83','FUMITECNI INDUSTRIA Y HOGAR, S. A. DE C. V.'),
          ('FIJE890426','EDUARDO FRIAS JERONIMO'),
          ('FIK1009276D6','FIKANDAR S DE RL DE CV'),
          ('FIMD641202','DANIEL FIGUEROA MACIAS'),
          ('FIN120424444','FACTIS INGENIERIA SA DE CV'),
          ('FIN9305246C6','FORMAS INTELIGENTES, S.A. DE C.V.'),
          ('FIP140730G78','FACTOR INGENIERIA PROYECTOS Y TECNOLOGICA SAPI DE CV'),
          ('FIR1506112C2','FIREDROP S.A. DE C.V.'),
          ('FIR1706011N5','FHE INSTALACIONES, REDES Y SERVICIOS, S.A. DE C.V.'),
          ('FIR7207197X7','FUNCIONAMIENTO INTEGRO DE RADIODIFUSORAS MEXICANAS ENLAZADAS, S.A. DE C.V.'),
          ('FIRY870820','YOVANI FIGUEROA ROMERO'),
          ('FIS230715JQ6','FISIOMI SC DE RL DE CV'),
          ('FIX2210076W1','FIXP SA DE CV'),
          ('FKI1812072Q2','FJ KIMME SA DE CV'),
          ('FKP0106298L1','FUM KILLER PLUSS S.A. DE C.V.'),
          ('FLA000430N35','FLAMAMEX S.A. DE C.V.'),
          ('FLA1909264C2','COOPERATIVA FAM LARA SC DE RL DE CV'),
          ('FLB0612195F0','FACTOR LB SA DE CV'),
          ('FLO120228U65','FLORINER S.A. DE C.V.'),
          ('FLO240402MM8','FUERTE DE LORETO COOP SC DE RL DE CV'),
          ('FLU000404QR7','FLUOTEC S A P I DE CV'),
          ('FLY231109FF0','FLYELLEN SC DE RL DE CV'),
          ('FMC180118439','FEDERACION MEXICANA DE CIENCIAS APLICADAS AL DEPORTE AC'),
          ('FME021212SBA','FOUET MEXICO, S.A. DE C.V.'),
          ('FME080522TB9','FIGLIO MEX, S.A.'),
          ('FME1310099B9','FR MEDICAL S.A. DE C.V.'),
          ('FME180222CR5','FARMACEUTICA MEDIKAMENTA S.A. DE C.V.'),
          ('FME181205PWA','FVJ MEXICO SA DE CV'),
          ('FME191126T47','FORTEX MAQUINARIA Y EQUIPOS SA DE CV'),
          ('FME690614M49','FORMULA MELODICA, S. DE R.L. DE C.V.'),
          ('FME941104GN8','FUJIFILM DE MEXICO SA DE CV'),
          ('FME980717NN8','FITCH MEXICO SA DE CV'),
          ('FMM060411QH1','FOREFRONT MEDICA MEXICO S.A. DE C.V.'),
          ('FMR200721BD4','FENNEC MR SA DE CV'),
          ('FNC111007453','FUNDACION NACIONAL CENTRO INTERACTIVO AMBAR, A.C.'),
          ('FNO840210QH8','FERBEL NORTE, S.A. DE C.V.'),
          ('FOAA760305','ADALBERTO FLORES ANDRADE'),
          ('FOAD951210','DANIEL GERARDO FLORES ALVAREZ'),
          ('FOCL821130','LUIS ALFREDO FLORES CAMARILLO'),
          ('FOCL921103','LUIS ALFREDO FLORES CASTILLO'),
          ('FODV741206','VERONICA FLORES DELEON'),
          ('FOEJ890730','JUAN IGNACIO FLORES ENCISO'),
          ('FOGM940603','MAYA FLORES GARDUNO'),
          ('FOLH750512','HEYLIANA FLORES LOBATO'),
          ('FOM220217Q8A','FUNERALA OPERATIONS MEXICO SA DE CV'),
          ('FOMF580731','FRANCISCO FLORES MORENO'),
          ('FOMG030119','JOSE GABRIEL FLORES MURGA'),
          ('FOMH810920','HORTENSIA NAYELI FLORES MORAN'),
          ('FOMJ850821','JESSICA CINTHIA FLORES MONTIEL'),
          ('FOMY840520','YASMIN ESMIRNA FLORES MERINO'),
          ('FONL910725','JOSE LEONARDO FLORES NIETO'),
          ('FOOP560513','PRIMA FLORES OLIVARES'),
          ('FOQO880723','OMAR ALEJANDRO FLORES QUIROGA'),
          ('FORJ620904','JULIAN FLORES REAL'),
          ('FOS000306HXA','FOCUS ON SERVICES, S.A. DE C.V.'),
          ('FOTM790619','MANUEL FLORES TORRES'),
          ('FOTP760327','PATRICIA FLORES TORRES'),
          ('FOVA820304','AARON ERNESTO FLORES VELASCO'),
          ('FPB111115GD2','F.C. PUBLIART BUSINESS MEXICO, S.A. DE C.V.'),
          ('FPC1512167M3','FRAWA PRODUCTOS PARA LA CONSTRUCCION SA DE CV'),
          ('FPN710301GQ3','FESTO PNEUMATIC, S.A.'),
          ('FPO5205219L4','FERRETERIA PORTALES S.A. DE C.V.'),
          ('FPR100422SI7','FER - NET PRODUCCIONES S.A DE C.V.'),
          ('FRE700706U94','FOTO DEL RECUERDO SA'),
          ('FRH830930AH7','F. RUIZ E HIJOS, S.A. DE C.V.'),
          ('FRO190108128','FRONTALDEV, S.A. DE C.V.');

--3er bloque de 1,000 proveedores

insert into tblProveedores(idStrRFCproveedor,
					        strRazónSocialProveedor)
	values('FSE010309TQ5','FECHUAN SERVICIOS EMPRESARIALES Y UNIFORMES INDUSTRIALES SA DE CV'),
          ('FSH141127UFA','FREMAN SHOES S A P I DE CV'),
          ('FSI220624TN5','FYMSA SOLUCIONES INTEGRALES SA DE CV'),
          ('FSM200309FT9','FRACTAL SERVICIO DE MANTENIMIENTO SA DE CV'),
          ('FSS170315B75','FNQ SOLUCIONES SUSTENTABLES, S.A. DE C.V.'),
          ('FST1310074I1','FORLAC STORE SA DE CV'),
          ('FTC080801TK7','FRIMAR TECNOLOGIA EN CONSTRUCCION S.A. DE C.V.'),
          ('FTE150326BD7','FORWARD TECHNOLOGY COMPANY SA DE CV'),
          ('FTE910809TS0','FUNDIDORA DE TENAYUCA, S.A. DE C.V.'),
          ('FTX131211FU8','FUSION T S.A. DE C.V.'),
          ('FUC000126KW5','FUCAM, A.C.'),
          ('FUE0209099S9','FUEGOFIN SA DE CV'),
          ('FUI1611117B5','FIUTI SA DE CV'),
          ('FULF530823','FELIPE FUENTES LOPEZ'),
          ('FUM000410LJ1','FUMICAM S.A. DE C.V.'),
          ('FUM0205153U0','FUMIFLASH SA DE CV'),
          ('FUM0209239J7','FUMINANTE SA DE CV'),
          ('FUM0210147D7','FUMYCON, S.A. DE C.V.'),
          ('FUM120418H64','FUMICOR, S.A. DE C.V.'),
          ('FUME901023','EDGAR FUENTES MOGUEL'),
          ('FUN840910AZA','FERRETEROS UNIDOS, S.A. DE C.V.'),
          ('FUT070530L16','FUTUVER S.A. DE C.V.'),
          ('FVE220513GS2','FERGALOP 24 SA DE CV'),
          ('FZE170712D59','FENIGIA ZEFER, S.A. DE C.V.'),
          ('G&M020314T58','GARCIA & MALLITZ SA DE CV'),
          ('GAAG870114','GISELA GARDUNO ARRIOLA'),
          ('GAAH940312','HEBER ISSAI GARCES DE ANDA'),
          ('GAAM920413','MANUEL ALEJANDRO GARCIA ANDRADE'),
          ('GAAP630328','PABLO GARNICA ARAIZA'),
          ('GAAV690322','VELIA GARCIA ALVAREZ'),
          ('GAB0704161V9','GRUPO AGUILA BICEFALA DE TRANSPORTES S.A DE C.V.'),
          ('GAB180706MSA','GRUPO MERQUEZADA SA DE CV'),
          ('GABA830917','ALDO GARCIA BRIZUELA'),
          ('GABE690508','BELEN SARA GARCIA'),
          ('GAC0311042R5','GRUPO DE ABASTO EL CAMALEON S.A. DE C.V.'),
          ('GAC150306TEA','GRUPO ADARTSE CONSTRUCCIONES Y EXPORTACIONES S.A. DE C.V.'),
          ('GAC1801062B0','GRUPO DE ASESORES CREATIVOS BERUDA SA DE CV'),
          ('GAC231107L66','GOGUC ARQUITECTURA Y CONSTRUCCION SA DE CV'),
          ('GACA831127','JOSE ALONSO GARCIA CARRILLO'),
          ('GACA850628','ABNER AOD GARCIA CASILLAS'),
          ('GACE531217','JOSE ENRIQUE GARCIA CARMONA'),
          ('GACR670527','RAMON RODRIGO GARCIA CHAVEZ'),
          ('GACS601008','SERGIO GARRIDO CORNEJO'),
          ('GAD070201QJ7','GADARK SA DE CV'),
          ('GAD091005GY3','GRUPO ADRIS S.A. DE C.V.'),
          ('GADP730126','PERLA GALINDO DOMINGUEZ'),
          ('GAE2005254E4','GENERACION Y ALMACENAMIENTO DE ENERGIA ENERGEN, S.A. DE C.V.'),
          ('GAE941027I76','GNR APOYO ESTRATEGICO S.A. DE C.V.'),
          ('GAEE651115','EUGENIA GARCIA ESCAMILLA'),
          ('GAEG620401','GUILLERMINA GARCIA ESPINOSA'),
          ('GAFE810616','EVA MARIA GRANADOS FERNANDEZ'),
          ('GAG190211ME5','GRUPO AGRINTERNACIONAL  SOCIEDAD DE RESPONSABILIDAD LIMITADA DE CAPITAL VARIABLE'),
          ('GAGD951022','DIANA LAURA GARCIA GARCIA'),
          ('GAGE930510','EDGAR ASAEL GARCIA GARCIA'),
          ('GAGE960426','ELENA DOMINIQUE GARIBAY GOMEZ'),
          ('GAGJ770915','JOSE JUAN GARCIA GARCIA'),
          ('GAGM661005','MIGUEL ANGEL GARCIA GARCIA'),
          ('GAGO850307','OMAR GARCIA GONZALEZ'),
          ('GAH1706095KA','GRUPO ARMENTA HLA SAPI DE CV'),
          ('GAHL770122','LAZARO GARCIA HERNANDEZ'),
          ('GAHS950410','SAMANTHA MICHELLE GARCIA HERRERA'),
          ('GAI150413P29','GA AMBIENTAL INMOBILIARIA S.A. DE C.V.'),
          ('GAK110606856','GRUPO AKARCI, S.A. DE C.V.'),
          ('GAL101222BH5','GALBIMEX SA DE CV'),
          ('GAL190731BX7','GALIFEN COOPERATIVA SC DE RL DE CV'),
          ('GAL2005255J9','GRUPO ALIZOV SAS DE CV'),
          ('GALA510220','MARIA ANTONIETA GALVEZ LOPEZ'),
          ('GALK910628','KATYA GARCIA LOZADA'),
          ('GAM060710LK9','GAPPY ARMOR MEXICO, S.A. DE C.V.'),
          ('GAM1309062X0','GAMSUR SA DE CV'),
          ('GAM201125PP5','GRUPO ALLIETI MEXICO, S DE RL DE CV'),
          ('GAM790209827','GAMU, S.A. DE C.V.'),
          ('GAM981111R51','GRUPO AEMA DE MEXICO SA DE CV'),
          ('GAME730629','EMMA GALLARDO MEJIA'),
          ('GAMG670327','GUILLERMO GARCIA MAYO'),
          ('GAMI940918','IRVIN GARNICA MUNOZ'),
          ('GAMJ600920','JESUS GARCIA MORENO'),
          ('GAMJ860127','JESSICA JOSEFINA GARCIA MIRELES'),
          ('GAMJ900317','JORGE ARMANDO GARCIA MUNGUIA'),
          ('GAMR621030','RAUL FLORENCIO GARCIA MILLAN'),
          ('GAMR840201','RUBEN RODRIGO GALVAN MONROY'),
          ('GANA851024','ANA FABIOLA GARCIA NAVARRO'),
          ('GANE690604','ELIZABETH GARCI NIETO'),
          ('GAOE860617','ERIKA PATRICIA GALVAN OLVERA'),
          ('GAP150908EE6','G&P PATTERSON S.A. DE C.V.'),
          ('GAPL590114','LETICIA GALLEGOS PEREZ'),
          ('GAR0304147V4','GRUPO ARMATESA S.A. DE C.V.'),
          ('GAR100730F70','GRUPO ARDESEC, S.A. DE C.V.'),
          ('GAR120321835','GRUPO ARBECONSUMA S.A. DE C.V.'),
          ('GAR1708296P6','GAREDY SC DE RL DE CV'),
          ('GAR180125P98','GRUPO ARTMAZ, S.A. DE C.V.'),
          ('GAR180924EG8','GRUPO ARGENA, S.A. DE C.V.'),
          ('GAR220809QH2','GJ ARQUITECTOS SA DE CV'),
          ('GARA730103','ALBERTO GARCIA RUGARCIA'),
          ('GARC781001','CARMEN GAONA REYES'),
          ('GARF650924','FRANCISCO GARCIA ROMANO'),
          ('GARK861010','KARLA SOFIA GASTELUM ROBLES'),
          ('GARM721214','MARGARITA GRANADOS RAMIREZ'),
          ('GAS060307NFA','GASIPO, S.A. DE C.V.'),
          ('GAS240118CZ2','GULSAMH ASOCIADOS S DE RL DE CV'),
          ('GASE821013','EDUARDO GARCIA SUAREZ'),
          ('GASF790316','FAUSTO ADRIAN GARCIA SAMANO'),
          ('GASG600718','GUADALUPE GALICIA SANDOVAL'),
          ('GASO680921','SOFIA GARCIA'),
          ('GASY801228','YONATAN LEO GARCIA SORIANO'),
          ('GAT150327EF5','GRUPO AVANCE TI SA DE CV'),
          ('GAT180917KB6','GRUPO AWEN TEXTILE SA DE CV'),
          ('GATJ710626','JUAN MANUEL GARCIA TORRES'),
          ('GATS600915','SOLEDAD DEL SOCORRO GARCIA TORRES'),
          ('GATV900728','VICTOR HUGO GASCA TORRES'),
          ('GAU9312232R8','GIMSA AUTOMOTRIZ, S.A. DE C.V.'),
          ('GAUR011001','RAMSES ARGENIS GARCIA URBINA'),
          ('GAVF910203','FERMIN GALICIA VAZQUEZ'),
          ('GAVR690529','RUBEN GARCIA VILLA'),
          ('GAVS870430','SERGIO GARCIA VICARIO'),
          ('GAX061101FN8','GRUPO AXENTA SA DE CV'),
          ('GAZJ430817','JACINTO MIGUEL GARCIA ZAPATA'),
          ('GAZR860509','ROBERTO ANTONIO GARCIA ZAMORANO'),
          ('GBA180427EL9','GOLDEN BASHA SA DE CV'),
          ('GBE030508I39','GRUPO BENJ SA DE CV'),
          ('GBE200629P93','GRUPO BERTOL SA DE CV'),
          ('GBI110704CI1','GEA BIODEGRADABLES S DE RL DE CV'),
          ('GBO040322QS3','GLOBAL BOGA, SA DE CV'),
          ('GBS190801TG3','GRUPO BSFJ SA DE CV'),
          ('GBS210219372','GRUPO BARAK 7 S.A DE C.V.'),
          ('GCA0003285BA','GRUPO CONSULTOR DE ARQUITECTURA E INGENIERIA, S.A. DE C.V.'),
          ('GCA1606148C0','GRUPO CORPORATIVO ALTIDSA, SA DE CV'),
          ('GCA170919SW3','GRUPO CARDORI S.A DE C.V'),
          ('GCA180502GQ4','GRUPO CONSTRUCTOR ALEHA S.A DE C.V'),
          ('GCA1806125E8','GRUPO CONTABLE ALLEN SC'),
          ('GCA1903279T4','GRUPO CARFI SA DE CV'),
          ('GCC0905146R0','GRUPO CONSTRUCTOR CARSON S.A. DE C.V.'),
          ('GCC090810C54','GRUPO CORPORATIVO CONSULTIVA SA DE CV'),
          ('GCC110318LW7','GRUPO CONSTRUCTOR CAHUA S.A. DE C.V.'),
          ('GCC120627T16','GRUPO CONSTRUCTOR, COMERCIALIZADOR Y DE MAQUINARIA SEA S.A DE C.V'),
          ('GCC201110JF8','GRUPO CONSTRUCTOR Y COMERCIALIZADOR DORMAN S.A. DE C.V.'),
          ('GCC211130FT5','GRUPO CONSTRUCTOR CABRERA Y RAMIREZ ASOCIADOS SA DE CV'),
          ('GCC231011MU0','GRUPO CONSULTOR CARTAMINE & LARA SC DE RL DE CV'),
          ('GCC890427MP5','GRUPO DE CONSULTORIA CORPORATIVA, S.C.'),
          ('GCC961119348','GRUPO CONSTRUCTOR Y COMERCIALIZADOR CORINTIO SA DE CV'),
          ('GCD910729JC6','GRUPO CONSTRUCTOR DOLMEN S.A. DE C.V.'),
          ('GCE010130FH3','GRUPO COMERCIAL ENLACES SA DE CV'),
          ('GCE070528MN3','GRUPO CONSTRUCTOR ETAPA 52 SA DE CV'),
          ('GCE1009026V2','GRUPO CARROCERO EICSA SA DE CV'),
          ('GCE120822NY2','GRUPO CORPORATIVO EVENTOS VIAJES Y CONVENCIONES GRUCEVICO FG, S.A. DE C.V.'),
          ('GCE140919BVA','GRUPO CENTURION COMBUSTIBLES SAPI DE C.V.'),
          ('GCE190816G98','GRUPO CONSULTOR EN EVENTOS Y SERVICIOS JOFERT SA DE CV'),
          ('GCE221026NS8','THE GOOD CHEF SA DE CV'),
          ('GCE9303054K4','GONZALEZ, CHEVEZ Y CIA. SC'),
          ('GCF090112JW8','GRUPO COMERCIAL FERRETERO VALLADOLID SA DE CV'),
          ('GCF151013Q37','GRUPO COMERCIAL FEGAMI S.A. DE C.V.'),
          ('GCG040121UA3','GRUPO CONSTRUCTORA GAROCIA, S.A. DE C.V.'),
          ('GCG960503E34','GRUPO CORPORATIVO GLEZ VAR SA DE CV'),
          ('GCH120821N37','GRUPO CONSTRUCTOR HACHI, S.A. DE C.V.'),
          ('GCH160128CD2','GRUPO CONSULTOR HISPANOAMERICANO S.C.'),
          ('GCI060303RY4','GRUPO COMERCIAL E IMPRESOS CONDOR, S.A. DE C.V.'),
          ('GCI14071616A','GRUPO COMERCIAL IMPRESOR ARCOS, S.A DE C.V.'),
          ('GCI1607182Y2','GRUPO CICOVISA SA DE CV'),
          ('GCI190703RG7','GRUPO COMERCIAL E INTEGRAL ONR DE MEXICO, S.A.P.I. DE C.V.'),
          ('GCI2008214K5','GIHA COMERCIALIZACION INTELIGENTE, S.A. DE C.V.'),
          ('GCI201125VB2','GOC CONSULTORIA E INGENIERIA, S.A. DE C.V.'),
          ('GCI841217HH6','GRAFO CINTAS, S.A. DE C.V.'),
          ('GCI8506102D7','GRUPO CORPORATIVO INTERESTATAL, S.A. DE C.V.'),
          ('GCJ020416836','GRAFICAS CORONA J.E. S.A. DE C.V.'),
          ('GCJ221116A42','GONZALEZ-ANISLADO CONSULTORES JURIDICOS SC DE RL DE CV'),
          ('GCK110706U66','GRUPO COMERCIAL KASTOR, S.A.DE C.V.'),
          ('GCK120116BSA','GRUPO COMERCIAL KAR S.A. DE C.V.'),
          ('GCK970110PE6','GRUPO CORPORATIVO KRI-DAF, S.A. DE C.V.'),
          ('GCL160722Q32','GRUPO CONSTRUCTOR LOCIF SA DE CV'),
          ('GCL190409A61','GOBA CONSULTORES LEGALES ADMINISTRATIVOS Y SERVICIOS INTEGRALES, S.A. DE C.V.'),
          ('GCM070614RBA','GRUPO COMERCIAL MIRA SA DE CV'),
          ('GCM1111161J8','GRUPO COMERCIAL MIRKA, S.A. DE C.V.'),
          ('GCM1508117S0','GELV COMERCIALIZADORA DE MEDIOS SA DE CV'),
          ('GCM230303NF3','GRUPO CCC MADEMEX SA DE CV'),
          ('GCO010216KA4','GRUPO CONZER, S.A. DE C.V.'),
          ('GCO0104048A8','GAAN CONSULTORES SA DE CV'),
          ('GCO030710NR3','GRUPO CONSTRUCTOR OZR, S.A. DE C.V.'),
          ('GCO030829FE8','GRUPO COVIX S.A. DE C.V.'),
          ('GCO080324MDA','GRUPO COINMI S,A DE C,V'),
          ('GCO080325AP5','GRUPO COVAG SA DE CV'),
          ('GCO0903195R8','GREEN COVER SA DE CV'),
          ('GCO090327V16','GRUPO CONSULMED SA DE CV'),
          ('GCO100212BN9','GRUPO CONYURBA, SA DE CV'),
          ('GCO101116N37','GLOBAL COLIMA, S.A. DE C.V.'),
          ('GCO110502MG2','GOIBA CONSTRUCCIONES S.A DE C.V'),
          ('GCO120223QB4','GRUPO CORPBO SA DE CV'),
          ('GCO140409V7A','GEOMEM CONSTRUCCIONES SA DE CV'),
          ('GCO1505277A8','GEPIC CONSULTORES SA DE CV'),
          ('GCO170418QB3','GRUPO CONSTRUVID, S. DE R.L. DE C.V.'),
          ('GCO170616RH6','GRUPO COMPETEC, S.A. DE C.V.'),
          ('GCO200218590','GRUPO COXTMOH, S.A. DE C.V.'),
          ('GCO211027JJ0','GRUPO COLSIN S.A. DE C.V.'),
          ('GCO220818GA1','GRUPO E CONSTRUCCIONES SA DE CV'),
          ('GCO8911214V7','GALLEGOS CONSULTORES, S.A. DE C.V.'),
          ('GCP191217HP8','GRUPO COMERCIAL PANEDA S.A. DE C.V.'),
          ('GCP95030138A','GCP SAPI DE CV'),
          ('GCP9906252R7','GARGO CONSTRUCCION, PROYECTO Y MANTENIMIENTO S.A. DE C.V.'),
          ('GCR131028KT0','GRUPO CONSTRUCTOR RIFRAVI S.A DE C.V.'),
          ('GCR160727IE5','GRUPO CAIR RECUPERACION Y REHABILITACION DE EDIFICIOS SA DE CV'),
          ('GCR200622A1A','G-NESHA COMMERCE AND RELATED SERVICES SA DE CV'),
          ('GCS100108HA8','GALDOM COMERCIALIZACION Y SERVICIOS SA DE CV'),
          ('GCS2105063TA','GRUPO COMERCIAL SENYALISTLI SOCIEDAD POR ACCIONES SIMPLIFICADA DE CAPITAL VARIABLE'),
          ('GCS211122IZ9','GENKA COMERCIAL Y SERVICIOS SA DE CV'),
          ('GCS940307TZ3','GCS IMAGEN EMPRESARIAL S.A. DE C.V.'),
          ('GCT050615HN6','GRUPO CORPORATIVO TALEA DE CASTRO SA DE CV'),
          ('GCT051103V42','GRUPO CONSTRUCTOR TANA SA DE CV'),
          ('GCT160804CK7','GRUPO COMERCIAL TEXTILERO MONTES, S.A. DE C.V.'),
          ('GCT240219S89','GRUPO COMUNAL TOPIEJI SIGLO 21 S.P.R. DE R.L.'),
          ('GCU101122LQ4','GRUPO CUYSAT SA DE CV'),
          ('GCU231116LR2','GANADEROS CUAUHPITZOOTL SC DE RL DE CV'),
          ('GCV1409041C2','GRUPO CONSTRUCTOR VIALICA SA DE CV'),
          ('GCV160527853','GRUPO CONSTRUCTOR VICARS, S.A. DE C.V.'),
          ('GCV180412I17','GRUPO CULTURAL VINARIO SA DE CV'),
          ('GCW231109QY9','GRUPO COMERCIAL W MAYAB S DE RL DE CV'),
          ('GDA040126AT0','GRAFICOS DIGITALES AVANZADOS SA DE CV'),
          ('GDB060207RE7','GRUPO DESARROLLADOR BERCETO SA CV'),
          ('GDC070413NN7','GDC DIFUSION CIENTIFICA S.A. DE C.V.'),
          ('GDC1307162L1','GRUPO DISTRIBUIDORA Y COMERCIALIZADORA NACIONAL E INTERNACIONAL DE MEXICO, S.A. DE C.V.'),
          ('GDC220616LD9','GRUPO DELJICO COMERCIALIZADORA SA DE CV'),
          ('GDE121213EU1','GRUPO DEQUIVAMED,S.A. DE C.V.'),
          ('GDE150603I8A','GRUPO DEVOLCA, S.A. DE C.V.'),
          ('GDI010301849','GAP DIGITAL, SA. DE C.V.'),
          ('GDI110511BZ9','GRUPO DIEMSA S.A. DE C.V.'),
          ('GDI140219R46','GRUPO DESARROLLOS INTEGRALES EN INGENIERIA FEX, S.A. DE C.V.'),
          ('GDI170805UZ4','GENERACION DIAMANTE SA DE CV'),
          ('GDS1811065D8','GRUPO DIRECHI SH S.A. DE C.V.'),
          ('GEA1009137E0','GRUPO ELECTRICO ABBA, S.A. DE C.V.'),
          ('GEBJ800131','JUAN ABEL GREGORIO BALBUENA'),
          ('GEC161005GH9','GA ENVASES Y CARTONES INDUSTRIALES S DE RL DE CV'),
          ('GED170704JW7','GIM COMPANIA EDITORIAL SA DE CV'),
          ('GED220111L17','GRUPO EMPRESARIAL DEVA LAKSH S.A. DE C.V.'),
          ('GEF17042735A','GRUPO EFEM S.A. DE C.V.'),
          ('GEG211208VB6','GRUPO EMPRESARIAL GOR SERVICIOS Y ABASTECIMIENTO SA DE CV'),
          ('GEGA720301','GABRIEL GERBEROFF'),
          ('GEGR691112','RUBEN DARIO GENIS GOMEZ'),
          ('GEH140129QN4','GRUPO EMPRESARIAL HANROD SA DE CV'),
          ('GEHL911223','LUIS ALBERTO GREGORIO HERRERA'),
          ('GEI121219U89','GRUPO ELECTRICO INTEGRAL TARANIS SA DE CV'),
          ('GEI211108PBA','GRUPO ESPECIALIZADO EN LA INFRAESTRUCTURA Y CONECTIVIDADES DE REDES INTELIGENTES SA DE CV'),
          ('GEK191016GV9','GRUPO EMPRESARIAL KYBALION+RA SA DE CV'),
          ('GEL210212BNA','GESTION EMPRESARIAL LIBRA, S.A. DE C.V.'),
          ('GEL230720FW1','GASTRONOMICA ELISER SC DE RL DE CV'),
          ('GEM1111155Q6','MC GINNIS EMPRESARIOS SA DE CV'),
          ('GEM140606R51','GEMX SA DE CV'),
          ('GEN060223Q44','GRUPO EMPRESARIAL NACIONAL IMPERIAL GENI, S.A. DE C.V.'),
          ('GEN150326AF3','GENEMETRIX SAPI DE CV'),
          ('GEN150424T59','GUREM ENTERPRISES S.A. DE C.V.'),
          ('GER130308NL8','GRUPO EMPRESARIAL RTWG SA DE CV'),
          ('GER150122U2A','GRUPO ERGIRA SA DE CV'),
          ('GES051026DC4','GRUPO ESCOMPI SA DE CV'),
          ('GES160919IK1','GRUPO EMPRESARIAL DE SISTEMAS INTEGRALES FLEXIBLES SA DE CV'),
          ('GESM611215','MAURICIO GERMENOS SALUM'),
          ('GET040202HH1','GRUPO EMPRESARIAL TECNICARE, S.A. DE C.V.'),
          ('GET940927F5A','GRUPO ETERCOM SA DE CV'),
          ('GEV1312031X5','GLI EVENTOS, S.A. DE C.V.'),
          ('GFA081015JI6','GRUPO FORMAL DE ARQUITECTURA S.A. DE C.V.'),
          ('GFC080228D58','GRUPO FAE DEL CENTRO S.A DE C.V.'),
          ('GFD021210HK1','GRUPO FORESTAL 2000 SA DE CV'),
          ('GFE150217S90','GRUPO FERREG S.A. DE C.V.'),
          ('GFE220714SC2','GRUPO FERZAGA SA DE CV'),
          ('GFE9901151R0','GRUPO FEMAYA SA DE CV'),
          ('GFF550711KJA','GRABADOS FERNANDO FERNANDEZ S DE RL DE CV'),
          ('GFG1303194S6','GRUPO FERRETERO GALA S.A. DE C.V.'),
          ('GFI040126JJ3','GRUPO FUERZA INDUSTRIAL Y CONSTRUCCION S.A. DE C.V.'),
          ('GFI9412159VA','GRUPO FRITMAR INTERNACIONAL SA DE CV'),
          ('GFL200819892','GRUPO FREEMAN LOGISTIC S.A.S. DE C.V.'),
          ('GFM181210SH0','GRUPO FEZ MAZA SA DE CV'),
          ('GFM210108R63','GRUPO FARMACEUTICO MDK SA DE CV'),
          ('GFM980925CS5','GRUPO FERRETERO MARTI, S.A. DE C.V.'),
          ('GFT1906303VA','GRUPO FARMACEUTICO TOTALFARMA S.A DE C.V'),
          ('GFV151110JG6','GRUPO FERRETERO VALMAR S.A. DE C.V.'),
          ('GFX140314K37','GRUPO F6-11 SA DE CV'),
          ('GGA030723741','G.G. GAS S.A. DE C.V.'),
          ('GGA100416Q83','GEMA GAS SA DE CV'),
          ('GGA180502UX0','GRUPO GADAN SA DE CV'),
          ('GGA221110ESA','G DE GARNACHA SC DE RL DE CV'),
          ('GGA8306134F4','GARZA GAS S.A. DE C.V.'),
          ('GGE141024UR9','GRUPO GENCOTECH S.A. DE C.V.'),
          ('GGE180928MW8','GASTIGANTO GLOBAL EVENTS AND CONVENTIONS GROUP SA DE CV'),
          ('GGG030729MR0','GRUPO GASTRONOMICO GALVEZ S.A. DE C.V.'),
          ('GGM200325UR3','GRURNMER GRUPO MERCANTIL R&N SA DE CV'),
          ('GGT220725LA4','GRUPO GLAM TXH SA DE CV'),
          ('GGW170814VE4','GRUPO GRAPHIC WORKSHOP S.A. DE C.V.'),
          ('GHA071220HV6','GENESIS HEALTHCARE ADVISERS, S.A. DE C.V.'),
          ('GHC080213HB9','GRUPO HMG CONSULTORIA E INGENIERIA SA DE CV'),
          ('GHC140101RR6','GRUPO HEALTH CARE SA DE CV'),
          ('GHC180815Q62','GN HEMCO CONSORCIO INMOBILIARIO S.A. DE C.V.'),
          ('GHE070807SJ8','GRUPO HC ESTUDIOS Y ECOSERVICIOS AMBIENTALES SA DE CV'),
          ('GHE180628L15','GRUPO HEMOVA S A P I DE CV'),
          ('GHI181008QN8','GRUPO HIDRATEC, S.A. DE C.V.'),
          ('GHS101025J87','GR HIDRO SOLUCIONES INTEGRALES S.A. DE C.V.'),
          ('GIA0810311YA','GRUPO IANGREEN S. DE R . L. DE C. V.'),
          ('GIA100720MK6','GRUPO IXAN ASOCIADOS, S.A. DE C.V.'),
          ('GIA120130MA8','GRUPO INDUSTRIAL ASAD, S.A. DE C.V.'),
          ('GIB170627ME7','GIBROLLEL SA DE CV'),
          ('GIC180508DT7','GRUPO INDUSTRIAL Y COMERCIAL XOJAZ, S.A DE C.V'),
          ('GIC2110289G8','GRUPO ICOBASA SA DE CV'),
          ('GIC2111164X5','GREWWAL IMAGEN COMERCIAL SA DE CV'),
          ('GIC9909153L2','GRUPO INDUSTRIAL CONDESA SA DE CV'),
          ('GICE630715','ENRIQUE GIL CANALES'),
          ('GID970310I81','GRUPO INDUSTRIAL DLV, S.A. DE C.V.'),
          ('GIE150615NN7','GIAE, IMPULSO EDUCATIVO SC'),
          ('GIG1706166D5','GRUPO INSERH GRUPO INDUSTRIAL Y DE SERVICIOS HIDALGO SA DE CV'),
          ('GII1606282Q8','GESTION E INFRAESTRUCTURA EN ILUMINACION Y EFICIENCIA ENERGETICA , SOCIEDAD ANONIMA PROMOTORA DE INVERSION DE CAPITAL VARIABLE'),
          ('GII211215E89','GRUPO DE INGENIERIA ITC SA DE CV'),
          ('GIJ230502GG0','GRUPO INVICTUS JJN SA DE CV'),
          ('GIL200227Q7A','GRUPO INDUSTRIAL LTA SA DE CV'),
          ('GIM040123A23','GRUPO IMIX SA DE CV'),
          ('GIM060131E98','GRUPO DE INGENIERIA MEDICA GAM SA DE CV'),
          ('GIM090209BJ5','GARMELDI INGENIERIA Y MATERIALES SA DE CV'),
          ('GIM2112171F8','GRUPO ING MILLENIUM S DE RL DE CV'),
          ('GIN100204P64','GURGES IMPLEMENTACION DE NEGOCIOS SA DE CV'),
          ('GIN1105234S3','GNSY INGENIERIA S.A. DE C.V.'),
          ('GIN230630ET2','GRALASER INGENIERIA SA DE CV'),
          ('GIN230816CT4','GENIO INVENTIVO S A P I DE CV'),
          ('GIP010315BH5','GRUPO INTEGRAL PENAPOBRE, S.A. DE C.V.'),
          ('GIP170518J94','GRUPO INDUSTRIAL PEZI SA DE CV'),
          ('GIR050713QW0','GIRAMSA SA DE CV'),
          ('GIR190311CK7','GESTION INTEGRAL EN RIESGOS EN DEFENSA CIVIL, S.A. DE C.V.'),
          ('GIR910924TL0','GRUPO IRIDIUM S.A. DE C.V.'),
          ('GIS110503QY4','GARILLA INGENIERIA SUSTENTABLE SA DE CV'),
          ('GIS211111KY3','GLOBAL INDUSTRIAL SAFETY GLISA SA DE CV'),
          ('GIT131206392','GEO IT SA DE CV'),
          ('GIT2203104A5','GRUPO INTERTECHNIC, TECHNOLOGIES & ELECTRICAL RESOURCES S.A DE C.V.'),
          ('GIT220928TB6','GSP INDUSTRIA TEXTIL CHAMARRAS, UNIFORMES & MAS SA DE CV'),
          ('GIX231026ET1','GRUPO IXTLATOPA SA DE CV'),
          ('GIZ170209UI1','GIZIONE SA DE CV'),
          ('GJA140827AP8','GRUPO JACARIC SA DE CV'),
          ('GJD181001CM1','GRUPO JDRR SA DE CV'),
          ('GJD1810223K7','GRUPO JMMECA 10 SA DE CV'),
          ('GJE1808113V7','GRUPO JENAI S.A DE C.V.'),
          ('GJO200722TI6','GRUPO JOMERVA SA DE CV'),
          ('GKE1912167C3','GRUPO KEFKEF SA DE CV'),
          ('GKS140618Q75','GRUPO KOALA SERVICIOS PROFESIONALES S.A. DE C.V.'),
          ('GLA171114V94','GLADIO SA DE CV'),
          ('GLA180502317','GRUPO LAMASH S.A. DE C.V.'),
          ('GLA201130SV9','GLAEDR S.A.P.I. DE C.V.'),
          ('GLA9605028V6','GRUPO LANWARE SA DE CV'),
          ('GLC090303M74','GRUPO LIKANO COMERCIALIZACION SA DE CV'),
          ('GLC1907223L5','GROMEX LAT COMERCIALIZADORA SA DE CV'),
          ('GLI150421944','MARKETING GASTRONOMICO PALADAR SAPI DE CV'),
          ('GLM121130JT4','GRUPO LOGISTICO MEXMUN SA DE CV'),
          ('GLM230816SH0','GRUPO DE LIMPIEZA Y MANTENIMIENTO EMME SA DE CV'),
          ('GLM4608019P3','GAS LICUADO DE MEXICO, S.A. DE C.V.'),
          ('GLO050930VD1','GLOBALVID SA DE CV'),
          ('GLO230807B8A','GLOFARM SC DE RL DE CV'),
          ('GLO240410IV2','GUANTES LOZANO SC DE RL DE CV'),
          ('GLU091221346','GLUCKLI, S.A. DE C.V.'),
          ('GLU9805254K3','GRUPO LUMOT S. A. DE C.V.'),
          ('GMA101028AY4','GRUPO MULTISERVICIOS ALCAR S.A. DE C.V.'),
          ('GMA141016BJ3','GRUPO MAKENTA SA DE CV'),
          ('GMA1905224J5','GRUPO MAFEREFUN SA DE CV'),
          ('GMB210630HP5','GRUPO MINERO BASFU,S.A. DE C.V.'),
          ('GMC180117UH2','GRUPO MEXICANO DE CONSTRUCCION Y DESARROLLO FACOMT SAS DE CV'),
          ('GMC230516121','GRUPO 3MCJ, CONSTRUCTORA Y COMERCIALIZADORA SA DE CV'),
          ('GMD100513T75','GRUPO DE MEDIOS DIGITALES Y ENTRETENIMIENTO SA DE CV'),
          ('GME010111MX9','GNR DE MEXICO S.A DE C.V'),
          ('GME150508T33','GREEN MERCURY SA DE CV'),
          ('GME170117QQ4','GARKEN MEDICAL SA DE CV'),
          ('GME200207T82','GOAIGUA MEX SA DE CV'),
          ('GME240430IU5','GRUPO MENDECEN SA DE CV'),
          ('GME540707CD1','GAS METROPOLITANO S.A. DE C.V.'),
          ('GMF181018NV5','GRUPO M-FORZZA SA DE CV'),
          ('GMI011105GK8','GRUPO METROPOLITANO EN INGENIERIA, S.A. DE C.V.'),
          ('GML120902T23','GRUPO MULTIMEDIA LAUMAN S.A.P.I DE C.V.'),
          ('GMO020308EM3','GRUPO M.O.B.S. S.A. DE C.V.'),
          ('GMP040227AA2','GLOBAL MEDICAL PRODUCTS DE MEXICO, S.A. DE C.V.'),
          ('GMP190308BU7','GRUPO MULTIPLE PALAFOX S.A. DE C.V.'),
          ('GMS971110BTA','GRUPO MEXICANO DE SEGUROS, S.A. DE C.V.'),
          ('GMU100310HA3','GASERA MULTIREGIONAL, S.A. DE C.V.'),
          ('GNA180922HA1','GRUPO NADICOM S. DE R.L. DE C.V.'),
          ('GNA190719PF0','GRUPO NAZA AUTOMOTRIZ S DE RL DE CV'),
          ('GNA211028HT9','GNAM SA DE CV'),
          ('GNA2305052R8','GREMIAL NANCHE SAS DE CV'),
          ('GNF081119AT3','GRAVEDAD CERO FILMS SA DE CV'),
          ('GNS990119518','NATURGY SERVICIOS, S.A. DE C.V.'),
          ('GOA180712SF5','GRUPO OPERADOR DE ALIMENTOS EHMO S DE RL DE CV'),
          ('GOAF900618','MARIA FERNANDA GONZALEZ ALANIS'),
          ('GOB1011116F7','CAPITAL DIGITAL S.A.P.I. DE C.V.'),
          ('GOBA950419','ALEXIS GONZALEZ BERNABE'),
          ('GOBS611207','SILBANO GONZALEZ BAUTISTA'),
          ('GOCC600718','CARLOS RAMON GONZALEZ CUELLO'),
          ('GOCE730926','EFREN GONZALEZ CASTRO'),
          ('GOCJ971102','JESSICA ALEJANDRA GONZALEZ CORTES'),
          ('GOCS580808','SONIA GONZALEZ CORONA'),
          ('GODV881122','VIVEKA ALEXANDRA GONZALEZ DUNCAN'),
          ('GOEA910319','JOSE ALBERTO GONZALEZ ESPINOSA'),
          ('GOEG640419','GERARDO GONZALEZ EUGENIO'),
          ('GOER720819','REYNALDA ELENA GONZALEZ ESCALONA'),
          ('GOFM960224','MARGARITA ITZEL GOMEZ FABILA'),
          ('GOGE790626','EDGAR GOMEZ GRANADOS'),
          ('GOGG791227','GRACIELA GONZALEZ GARCIA'),
          ('GOGJ741227','JUAN ROGELIO GOMEZ GOMEZ'),
          ('GOGM690816','MIGUEL ROBERTO GONGORA GOMEZ'),
          ('GOGR720811','ROBERTO CARLOS GOMEZ GARCIA'),
          ('GOHI750221','IRENE GONZALEZ HERNANDEZ'),
          ('GOJR750917','ROBERTO GONZALEZ JUAREZ'),
          ('GOLA971110','ARIADNA CAROLINA GONZALEZ DE SALCEDA LOPEZ'),
          ('GOLL880518','LEYDI ELIAN GOMEZ LOPEZ'),
          ('GOLM920621','MARA XIMENA GONZALEZ LOPEZ'),
          ('GOMA730407','JOSE AGUSTIN GOMEZ MARTINEZ'),
          ('GOME731014','ENRIQUE GONZALEZ MENDOZA'),
          ('GOMJ950730','JOSUE  MOISES GOMEZ MIRANDA'),
          ('GOML620506','LUIS ALFREDO GOMEZ MARTIN'),
          ('GOOD010614','DULCE ALEJANDRA GONZALEZ OCAMPO'),
          ('GOPG681208','MARIA GUADALUPE GONZALEZ PEREZ'),
          ('GOPH630917','HUMBERTO CARMEN GONZALEZ PEREZ'),
          ('GOPO710526','OLAF LEONARDO GONZALEZ PORTILLO'),
          ('GOPR760114','ROGELIO GONZALEZ PEREZ'),
          ('GOR170830BLA','GALA ORTOPEDIA SA DE CV'),
          ('GOS170421648','GERENCIA, OBRAS Y SOLUCIONES ARIAS, S. DE R.L. DE C.V.'),
          ('GOSG751223','GERARDO GONZALEZ SALAS'),
          ('GOSJ830103','JOSUE BARUCH GONZALEZ SANGINES'),
          ('GOSK841122','KARINA DAFNE GOMEZ SABINAS'),
          ('GOTM730501','MIGUEL GONZALEZ TELLEZ'),
          ('GOVC480612','CARLOS GOMEZ VALERA'),
          ('GOVI870320','IKER ALBERTO GONZALEZ VELARDE'),
          ('GOVL900211','LUIS ANTONIO GOMEZ VIVEROS'),
          ('GOVP760724','PAULINA GOMEZ CARO VALLES'),
          ('GPA150225QB1','GRUPO PARVEL SA DE CV'),
          ('GPC850722QK3','GP CONSTRUCCIONES SA DE CV'),
          ('GPE191113BW0','COOPERATIVA GUS PEREZ SC DE RL DE CV'),
          ('GPG040209H20','GRUPO PAPELERO GABOR, S.A. DE C.V.'),
          ('GPG1911278I9','GRUPO PRO GLER SA DE CV'),
          ('GPH100204132','GRUPO PROMOTOR HR  EN MULTISERVICIOS S. A. DE C. V.'),
          ('GPH130712GT6','GO PHARMA SA DE CV'),
          ('GPI050224RQ9','GRUPO DE PRODUCTORES IMPULSO SC DE RL DE CV'),
          ('GPI210524RU8','GRUPO PCS INGENIERIA CONSTRUCCION Y SUPERVISION S.A. DE C.V.'),
          ('GPI221212SY2','GRANJAS PILI SC DE RL DE CV'),
          ('GPM160722QY5','GRUPO PROPORTIOS MEXICO S.A. DE C.V.'),
          ('GPO200319QC6','GRUPO POLY-FERRA S.A DE C.V.'),
          ('GPO2108261D7','GEAR POWER SA DE CV'),
          ('GPR090225KUA','GC PROMOCIONAL SA DE CV'),
          ('GPR150226BLA','GRUPO PROMOCIONANDO SA DE CV'),
          ('GPR2309077SA','GRUPO PRIDWEN SA DE CV'),
          ('GPR950808788','GRUPO PAPELERO ROVELO S.A DE C.V'),
          ('GPS200901V68','GRUPO PULIZIA SERVICIOS EMPRESARIALES SA DE CV'),
          ('GPS210826A42','GARANTIA EN PRODUCTOS Y SOLUCIONES DE MEXICO SA DE CV'),
          ('GPS220218C82','GPSCONTROL SA DE CV'),
          ('GPU230921FB6','GA PUMPS S DE RL DE CV'),
          ('GPV0504143R1','GRUPO PROMOTOR DE VIVIENDA PARA MEXICO S.A. DE C.V.'),
          ('GPZ1903258Q3','G PUNTO Z ARQUITECTOS S.A. DE C.V.'),
          ('GQU0504262A4','GRUPO QUINVA S.A DE C.V.'),
          ('GRA110923MZ8','GENERACION DE RIQUEZA POR ARTICULOS GRANDIOSOS MEXICANOS, S.A. DE C.V.'),
          ('GRA190612P5A','GA RADIOCOMUNICACIONES SA DE CV'),
          ('GRC071101TNA','GRUPO RESPUESTA CONSTRUCTIVA SA DE CV'),
          ('GRC091030MN2','GRUPO ROSPAM CONSTRUCCIONES SA DE CV'),
          ('GRC091221SG6','GRUPO R&M CONSTRUCCIONES S.A DE C.V.'),
          ('GRE071107RA9','GRUPO REINET, S.A. DE C.V.'),
          ('GRI2102162T4','GRC RESPUESTA INTEGRAL, S.A. DE C.V.'),
          ('GRO070604DLA','GROWING COMPANY, S.A. DE C.V.'),
          ('GRO080112J12','GRUPO ROALES SA DE CV'),
          ('GRO090617MK7','GRUPO ROMAY, S.A. DE C.V.'),
          ('GRO111024685','GRUPO ROVILO S.A DE C.V'),
          ('GRO200717AL1','GRUPO ROCARAGON SA DE CV'),
          ('GRO2112155L6','GROWTIME S.A. DE C.V.'),
          ('GRO240130TT0','GROWTHAM SAS DE CV'),
          ('GRP180713N77','GRUPO LA ROYAL PRODUCCION Y LOGISTICA DE EVENTOS, S.A. DE C.V.'),
          ('GRT1509111I9','GREEN ROBOT TECNOLOGIAS SA DE CV'),
          ('GRU991201E5A','GRUVASIL SA DE CV'),
          ('GRV190326LA1','GRUPO DE RECICLAJE VELMAN S.A DE C.V'),
          ('GRV200928QK4','GRUPO RAQSOON VERHEM DE MEXICO SA DE CV'),
          ('GSA010301BD7','MXGA GOMEZ Y SANCHEZ ALDANA, S.C.'),
          ('GSA111123P93','GX SOLUCIONES AVANZADAS SA DE CV'),
          ('GSA140926JD5','GRUPO SANARGO SA DE CV'),
          ('GSA160818UG5','GRUPO SASERRO S.A. DE C.V.'),
          ('GSA230804KI4','GRUPO SALPALEX SA DE CV'),
          ('GSA230901TS2','GENERAL DE SUMINISTROS AXMATO SA DE CV'),
          ('GSA231103C55','GALERY SAES ANYTHING EISE SC DE RL DE CV'),
          ('GSD100921167','GT + DA, S.A. DE C.V.'),
          ('GSE0208223Z3','GUTWA-BIENES Y SERVICIOS SA DE CV'),
          ('GSE070122JJ2','GBC SCIENTIFIC EQUIPMENT DE MEXICO, S.A. DE C.V.'),
          ('GSE110331S2A','GRUPO SERVET SA DE CV'),
          ('GSE150126MS8','GUSMARK SOLUCIONES EMPRESARIALES SA DE CV'),
          ('GSE161129I58','GRUPO SD ESPECTACULOS SA DE CV'),
          ('GSE2103167C4','GINSEC SERVICIOS SA DE CV'),
          ('GSE890809QK4','GRUPO SEYPRO S.A DE C.V'),
          ('GSI041201GH0','GICISA SOLUCIONES INTEGRALES SA DE CV'),
          ('GSJ2309076C5','GRUPO SAN JUAN 23 SC DE RL DE CV'),
          ('GSM120725UJ1','GRUPO SCARTO DE MEXICO S.A DE C.V'),
          ('GSM180426SF3','GRUPO SYSTEM M&A S.A. DE C.V.'),
          ('GSO170511BX5','GROYA SOLUCIONES SC'),
          ('GSO210715S83','GARFFAD SOLUCIONES SA DE CV'),
          ('GSO220314PA6','GYALA SOLUCIONES SA DE CV'),
          ('GSO230901TB9','GM&OR SOLUTIONS S A P I DE CV'),
          ('GSP9801269Z4','GENERAL SPORTS S.A DE C.V.'),
          ('GSR131016QD4','GL SOLUCIONES EN REDES INTELIGENTES SA DE CV'),
          ('GSR200923I26','GRUPO SAFE REACH SA DE CV'),
          ('GSR2104147G1','EL GRAN SAZON DE RUBI SC DE RL DE CV'),
          ('GSS050119C62','GVI SECURITY SOLUTIONS MEXICO, SA DE CV'),
          ('GST030210CW6','GRUPO STEFENJEN, S.A. DE C.V.'),
          ('GST0607147Y2','GRUPO STAYSI S.A. DE C.V.'),
          ('GST101206BD5','GSTNETWORK SA DE CV'),
          ('GST150223KX4','GLOBAL SERVICIOS DE TRASLADO DE VALORES SA DE CV'),
          ('GST230629F53','GRUPO STEFOL SC DE RL DE CV'),
          ('GSU110118GL0','GRUPO SURENA S. DE R.L. DE C.V.'),
          ('GSV2307285E4','GRUPO SOCIAL VALLEJO DE LA CDMX SC DE RL DE CV'),
          ('GSW170302995','GYMCO SPORT WEAR SA DE CV'),
          ('GTA150121AX6','GRUPO TARES, S.A. DE C.V.'),
          ('GTA2201115F2','GRUPO TAYRONA 4A, S.A. DE C.V.'),
          ('GTA220225Q56','GRUPO TRANSPORTISTA ACUA SA DE CV'),
          ('GTA960905NN9','GRUPO TECNICO AUTOMOTRIZ, S.A. DE C.V.'),
          ('GTC980421R4A','GRUPO DE TECNOLOGIA CIBERNETICA, S.A. DE C.V.'),
          ('GTD150901CE5','GRUPO TECNOLOGICO DIDCOM SA DE CV'),
          ('GTD190731VE9','GRUPO 32 BUILDING SA DE CV'),
          ('GTE150525ULA','GRUPO TECNO-REAL S.A DE C.V'),
          ('GTE210112AW3','GRUPO TEULADA S.A. DE C.V.'),
          ('GTG020819JS3','GLOBAL TELECOMUNICATION GROUP SA DE CV'),
          ('GTG1112195Z4','GRUPO TRIFOSA - LEMUEL SA DE CV'),
          ('GTG190301TQ9','GOLD TECH GLOBAL S.A. DE C.V.'),
          ('GTH2001109V5','GRUPO THIAGOIARA SA DE CV'),
          ('GTI210609AV0','GRUPO TRAVER INSUMOS SA DE CV'),
          ('GTL810724M54','GAS DE TLALNEPANTLA S.A. DE C.V.'),
          ('GTM170327EK4','GRUPO TURISTICO MAPZ SA DE CV'),
          ('GTR120112LZ1','GLOBAL TRANSFORMATION SA DE CV'),
          ('GTS190502SB8','G&G TOP SOLUTIONS SA DE CV'),
          ('GTU1304047B1','GRUPO TURBOFIN, S.A.P.I. DE C.V.'),
          ('GTV0604071X2','GRUPO TECNOLOGICO VERANA, S.A. DE C.V.'),
          ('GUA100128GE7','GUAGUANCO S.A. DE C.V.'),
          ('GUCD721010','DULCE MARIA GUTIERREZ CHAGOYA'),
          ('GUCJ670104','JUAN DANIEL GUTIERREZ CAMACHO'),
          ('GUCJ911128','JAVIER GUTIERREZ CALVILLO'),
          ('GUCM841122','MARIANO GUERRERO CALZADA'),
          ('GUDJ830310','JORGE GUERRERO DEGANTE'),
          ('GUGD990422','DANIEL GUTIERREZ GONZALEZ'),
          ('GUGE881112','ERIK GUZMAN GAMINO'),
          ('GUGJ810623','JULIO CESAR GUTIERREZ GUZMAN'),
          ('GUGM640214','MIGUEL ANGEL GUILLEN GONZALEZ'),
          ('GUGM780726','MIGUEL ANGEL GUTIERREZ GIL'),
          ('GUGR000413','ROSA GUZMAN GUZMAN'),
          ('GUGV861004','VLADIMIR GUTIERREZ GARCIA'),
          ('GUHR940214','RODRIGO GUTIERREZ HERNANDEZ'),
          ('GUJJ550811','JOSE JAIME GUZMAN JUAREZ'),
          ('GULA970322','ALEJANDRA GUERRERO LUNA'),
          ('GULE880510','ERIKA  MONSERRAT GUTIERREZ LOPEZ'),
          ('GUMC770817','CARLOS ALBERTO GUTIERREZ MADRIGAL'),
          ('GUMG710118','GUADALUPE GUILLEN MARTINEZ'),
          ('GUMJ831222','JUAN CARLOS GUTIERREZ MORALES'),
          ('GUMS950122','SUELEN JHOSSELYN GUERRERO MARQUEZ'),
          ('GUO050128JD6','GRUPO URBANIZADOR ORION S. DE R.L. DE C.V.'),
          ('GUPF660526','FELIPE NERI GUZMAN POLVO'),
          ('GUR080409BCA','GAS URBANO SA DE CV'),
          ('GUR620306BZ7','GAS URIBE SA DE CV'),
          ('GURD630721','DANIEL GUTIERREZ ROMERO'),
          ('GURE860608','EDUARDO GUTIERREZ ROJAS'),
          ('GURJ621019','JUAN MARTIN GUERRERO ROJAS'),
          ('GURR900530','RUDY EDDER GUADARRAMA RAMIREZ'),
          ('GUS181006RZ9','GRUPO USUGRI SA DE CV'),
          ('GUSG570628','GILBERTO GUTIERREZ SANCHEZ'),
          ('GUVG580219','GABINO GUZMAN VELAZQUEZ'),
          ('GUVN761110','NOEMI GUTIERREZ VAZQUEZ'),
          ('GVA090312L82','GRUPO VANSETI SA DE CV'),
          ('GVE160315KW6','GRUPO VEYTA, S.A. DE C.V.'),
          ('GVI020418JI0','GEISHA LA VILLA SA DE CV'),
          ('GVI140312N4A','GRUPO VANGUARDIA EN INFORMACION Y CONOCIMIENTO SA DE CV'),
          ('GVI901015GC7','GRUPO VENTA INTERNACIONAL, S.A. DE C.V.'),
          ('GVM150216V77','GRUPO VINR DE MEXICO S.A. DE C.V.'),
          ('GVS080520L70','GRUPO VELASCO, SERVICIOS DE INGENIERIA Y ARRENDAMIENTO, S.A. DE C.V.'),
          ('GVS171213Q18','GRUPO LAS VERZAS DE SAN GREGORIO SC DE RL DE CV'),
          ('GWL890518GE7','GRUPO WL SA DE CV'),
          ('GWS150825DTA','GM WATER SOLUTIONS MEXICO SA DE CV'),
          ('GXI190513ACA','GOE XIAN SA DE CV'),
          ('GYA191113HA2','GRUPO YAVCHE SA DE CV'),
          ('GZA141211N61','GRUPO ZAYPA SA DE CV'),
          ('GZA2401104E6','GRUPO ZARENTI SA DE CV'),
          ('GZC160126G59','GRUPO ZAPATISTA DE COMUNEROS DE SAN MIGUEL TOPILEJO SPR DE RL'),
          ('HAD240424RZ7','HERRERIA Y ALUMINIOS DANIK SC DE RL DE CV'),
          ('HAT2108206X0','HM, ALTA TECNOLOGIA EN MEDICION S A P I DE CV'),
          ('HCG170912RI3','HERMENEUTICS CONSULTING GROUP SA DE CV'),
          ('HCI220902JV7','HOFFMANN COMERCIALIZADORA INDUSTRIAL SAS DE CV'),
          ('HCM140205KJ2','HEALTH CARE MEDICINE SA DE CV'),
          ('HCM210602HE2','HALFEO COMERCIALIZADORA MX SA DE CV'),
          ('HCO0301141K5','HS CONSULTING SA DE CV'),
          ('HCO031022D35','HEURISTICA COMUNICACION, SC'),
          ('HCO171110LZ2','HARKONNEN CONSTRUCTORES, S.A. DE C.V.'),
          ('HCO190409ML4','HSC COMERCIALIZADORA S.A. DE C.V.'),
          ('HCR180305CY6','HIDRO CRONS S.A. DE C.V.'),
          ('HCR210831EZ5','HAPI CREACIONES SC DE RL DE CV'),
          ('HCS230505CP0','HERMOD CORPORATIVO DE SEGURIDAD PRIVADA SA DE CV'),
          ('HDC200904KF7','HEMISFERIO D COMUNICACION GRAFICA SA DE CV'),
          ('HEA190411PA4','HEALTHYFI S.A. DE C.V.'),
          ('HEAV670113','VERONICA HERNANDEZ ALVAREZ'),
          ('HEBE821227','ERICA MARITZA HERRERA BEJINEZ'),
          ('HEBX960816','XOCHITL HERNANDEZ BATALLA'),
          ('HEC120918JCA','H.I. ECOADMIN SA DE CV'),
          ('HECC930223','CARLOS ESTEBAN HERNANDEZ CASTELLANOS'),
          ('HECE821104','EDGAR SALVADOR HERNANDEZ CRUZ'),
          ('HECL780428','LUIS FERNANDO HERNANDEZ CENTENO'),
          ('HECR920819','RAUL HERNANDEZ CRUZ'),
          ('HEDE690120','ESTELA HERNANDEZ DIAZ'),
          ('HEDI950830','IVAN HERNANDEZ DIAZ'),
          ('HEEV810213','VICTOR MANUEL HERNANDEZ ESPINOSA'),
          ('HEFC700724','CRISTINA TERESA HERNANDEZ FERNANDEZ'),
          ('HEFM820609','MANUEL HERNANDEZ FERRER'),
          ('HEFO650701','OSCAR HERNANDEZ FERRUSCA'),
          ('HEGE640922','MARIA EUGENIA HERRERA GONZALEZ'),
          ('HEGG581226','GABINO OSCAR HERNANDEZ GARCIA'),
          ('HEGL900312','LUIS GERARDO HERNANDEZ GUTIERREZ'),
          ('HEHA760118','ALBERTO ENRIQUE HERNANDEZ HERNANDEZ'),
          ('HEHP870524','PEDRO HERNANDEZ HERNANDEZ'),
          ('HEHR730618','ROSALBA HERNANDEZ HERNANDEZ'),
          ('HEHR830716','ROBERTO CARLOS HERNANDEZ HERNANDEZ'),
          ('HEI110712IY6','HIDROTECNIA E INFRAESTRUCTURA URBANA AVANZADA SA DE CV'),
          ('HEJB741112','BLANCA OSBELIA HERNANDEZ JIMENEZ'),
          ('HEJR830917','JOSE ROBERTO HERNANDEZ JIMENEZ'),
          ('HELC741116','CARLOS ALBERTO HERRERA DE LEON'),
          ('HEMJ580830','JESUS HERNANDEZ MIRANDA'),
          ('HEMJ831007','JOSUE HERNANDEZ MOCTEZUMA'),
          ('HEMJ850715','JESSICA HERRERA MERCADO'),
          ('HEML820302','LUIS ANTONIO HERRERA MERCADO'),
          ('HEPD811021','DAVID HERRERA PINA'),
          ('HEPH810926','HUGO HERNANDEZ PALOMARES'),
          ('HEQA950802','ARACELI HERNANDEZ QUIROZ'),
          ('HER061108EN9','HERPAY, S.A. DE C.V.'),
          ('HERJ900905','JOCELYN VANESSA HERNANDEZ ROMERO'),
          ('HERL900216','LUIS DAVID HERNANDEZ ROJAS'),
          ('HERP811031','PAUL MICHAEL HERNANDEZ RODRIGUEZ'),
          ('HERR520615','ROBERTO CRESCENCIO HERNANDEZ RIVERA'),
          ('HESL720926','LIDIA HERNANDEZ SOTO'),
          ('HETS730714','SILVIA VERONICA HERNANDEZ TOVAR'),
          ('HFS240727DC9','HIELITOS FRIOS SAN NICOLAS SC DE RL DE CV'),
          ('HFV2404308S1','HERENCIA FRUTAL VR SC DE RL DE CV'),
          ('HHC180531CEA','HC HUMAN CITIES SAPI DE CV'),
          ('HHO040629FF9','HEALTH AND HOME S.A. DE C.V.'),
          ('HHQ020123HM6','H&V HIGH QUALITY S.A. DE C.V.'),
          ('HIHE720710','ELENA AMALIA HINOJOSA HERRERA'),
          ('HIIJ641008','JUSTO GABRIEL HINOSTROZA IBARGUENGOITIA'),
          ('HIM1212177T4','HUB DE INNOVACION MEXICO, SAPI DE CV'),
          ('HIMI810803','IVAN HINOJOZA MORALES'),
          ('HIN140801T61','HALLIB INGENIERIA, S.A. DE C.V.'),
          ('HIN2302245Z7','HEMOSA INGENIERIA SA DE CV'),
          ('HIOE600525','MARIA ELENA HINOJOSA OLGUIN'),
          ('HIR1208249H8','HIROSTECNOLOGIAS SA DE CV'),
          ('HLA091109G2A','HUATAN LANDSCAPING SA DE CV'),
          ('HLA130918D68','HD LATINOAMERICA, S.A. DE C.V.'),
          ('HLA151203136','HIDROINSUMOS LATINOAMERICA SA DE CV'),
          ('HME010503I81','HOSPI-MEDICAL S.A. DE C.V.'),
          ('HME020304BP8','HI-TEC MEDICAL, S.A. DE C.V.'),
          ('HMI220824RJ5','HALTCONTROL MIP SA DE CV'),
          ('HMU880726NA2','HERMES MUSIC SA DE CV'),
          ('HOU231109TXA','HOLLYWOOD OUTFITS SC DE RL DE CV'),
          ('HPC161123KJ6','HEGNA PROFESIONALES EN CALIDAD Y SERVICIO S.A. DE C.V.'),
          ('HPD910125GX0','HOTELERA PLAZA DALI SA DE CV'),
          ('HPE980421N44','HI PRO ECOLOGICOS SA DE CV'),
          ('HQC090303VD5','H.Q CONTROL S. DE R.L. DE C.V.'),
          ('HSA220627MU2','HERENCIA DE SABORES SC DE RL DE CV'),
          ('HSE701218532','HDI SEGUROS S.A. DE C.V.'),
          ('HSE971027CW2','HIR COMPANIA DE SEGUROS, S.A. DE C.V.'),
          ('HSL200623U62','HURGA SANITIZACION Y LIMPIEZA SA DE CV'),
          ('HSM191112P69','HELPER SOPORTE Y MANTENIMIENTO S.A DE C.V'),
          ('HSM970707RA5','HEALTHCARE SYSTEMS DE MEXICO S.A. DE C.V.'),
          ('HSO190507A66','HOSPITIUM SOLUTIONS S.A. DE C.V.'),
          ('HSP10111892A','HERVEL SERVICIOS PROFESIONALES S DE RL DE CV'),
          ('HSP190814MH4','HERANTI SOLUCIONES PUBLICITARIAS S.A. DE C.V.'),
          ('HSU170502U24','HIDROTECNOLOGIAS SUSTENTABLES SA DE CV'),
          ('HTC080408AC0','HILADOS Y TEJIDOS EL CARRETE S.A DE C.V'),
          ('HTE181227NH9','HIDROMETRIA TECHNOLOGIES SA DE CV'),
          ('HTS2306083E0','HIXPERT TECNOLOGIA Y SOLUCIONES SA DE CV'),
          ('HUA061215JZ6','HUATANMEX S.A. DE C.V.'),
          ('HUGE760114','EDGARDO HUERTA GONZALEZ'),
          ('HUGL661017','LUIS ANTONIO HUERTA GARAY'),
          ('HUMJ530604','JESUS EDMUNDO HUERTA MARIN'),
          ('HURR871010','RICARDO OLIVER HUERTA RODRIGUEZ'),
          ('HVA140212QZ8','HOLDING PARA VENTAS A GOBIERNO S.A. DE C.V.'),
          ('IAA170214MFA','INGE & ARQ PROYECTOS Y DESARROLLOS SA DE CV'),
          ('IAAA810603','ANTONIO ISAAC IBARRA ALVARADO'),
          ('IAAJ641224','JUAN MARIA INCHAURRANDIETA ARAMBURU'),
          ('IAC120713RJ0','IMHOTEP ASESORES Y COMERCIALIZADORES, S.A. DE C.V.'),
          ('IAC1605255LA','ISHTAR ASESORIA CAPACITACION Y DESARROLLO HUMANO, S.C.'),
          ('IAC2103049D5','IRKA ARVE CONSULTORA DE SOLUCIONES JURIDICAS SC DE RL DE CV'),
          ('IAC750429IF4','INMUEBLES ACALOTENCO SA DE CV'),
          ('IACC961104','CARLOS ARTURO ISLAS CRISTOBAL'),
          ('IAD210226IC2','INTEGRA ARQUITECTOS DORANTES SA DE CV'),
          ('IAD870722BB8','INGENIERIA, ASESORIA Y DISENO, S.A. DE C.V.'),
          ('IAE890608228','IMPRESIONES AEREAS, SA DE CV'),
          ('IAG140101PU8','INTERNATIONAL AIRMEDIA GROUP MEXICO S DE RL DE CV'),
          ('IAGG760208','GILBERTO IBARRA GRANADOS'),
          ('IAH230925KQ4','INGENIERIA Y ARQUITECTURA HORUS SA DE CV'),
          ('IAI180813Q63','IIVIAR AIC, S.A. DE C.V.'),
          ('IAL230126P35','INTEGRADORA ALKEDA SA DE CV'),
          ('IAM0204128E1','INGENIERIA Y ARQUITECTURA MAPA S.A DE C.V.'),
          ('IAM020515HL8','INDAR AMERICA, S,A, DE C.V.'),
          ('IAM191219Q3A','INGENIERIA Y ARQUITECTURA MIJAD SA DE CV'),
          ('IAMA670413','ARNULFO ALEJANDRO ISLAS MARTINEZ'),
          ('IAP130213RT3','INGENIERIA APCPE SA DE CV'),
          ('IAP141001K33','IDEAS ACTIVAS PUBLICIDAD Y MEDIOS SA DE CV'),
          ('IAP160505BV5','INGENIERIA & PROYECTOS COSMOPLAN S. DE R.L. DE C.V.'),
          ('IAS111128V78','IDAP ASESORES SC'),
          ('IAS111202RA9','INFOBROKER Y ASOCIADOS SA DE CV'),
          ('IAS1501286Y5','INGENIERIA APLICADA SIPGO S.A. DE C.V.'),
          ('IAT960529FJ2','INGENIERIA, ARQUITECTURA Y TECNOLOGIA, S.A. DE C.V.'),
          ('IAT990528948','IK ATL SA DE CV'),
          ('IBD10050386A','INOVACION EN BOMBEO Y DESAZOLVE, S.A. DE C.V.'),
          ('IBM0307015Y6','INSTRUMENTO BIOMEDICO DE MEXICO SA DE CV'),
          ('IBS231007AJ1','IDHESA BIENES Y SERVICIOS SA DE CV'),
          ('ICA131003GX3','INGENIA CONSULTORES & SERVICIOS AMBIENTALES, S.A. DE C.V.'),
          ('ICA170201PY8','I+D EN CARROCERIAS SAPI DE CV'),
          ('ICA2308027R7','INOVACIONES Y CREACIONES ARTISTICAS TULUM SC DE RL DE CV'),
          ('ICB140311IG7','INSTITUTO DE CAPACITACION PARA BRIGADAS DE PROTECCION CIVIL, S.A. DE C.V.'),
          ('ICC110704UG6','INSTALACIONES Y CONSTRUCCIONES CEDMA S. DE R.L. DE C.V.'),
          ('ICD120707MD9','INTERNATIONAL CORPORATION DANSUTOL S.A. DE C.V.'),
          ('ICE100621RN8','INGENIERIA DE CONTROL EN GAS Y FUEGO SA DE CV'),
          ('ICF050322TB9','INMOBILIARIA Y CONSTRUCTORA FERRER SA DE CV'),
          ('ICF170207G1A','IDEAS CREATIVAS DE EVENTOS INTERACTIVOS SA DE CV'),
          ('ICG0703096S2','INGENIERIA Y CONSTRUCCION 3G SA DE CV'),
          ('ICH960422QQ4','INTEGRACION COMERCIAL HOSPITALARIA, S.A. DE C.V.'),
          ('ICI051124GT3','INDESIS CONSTRUCCIONES INGENIERIA DE SISTEMAS, SA DE CV'),
          ('ICI1311202A9','IAJ CONSULTORES EN INFORMATICA SA DE CV'),
          ('ICI960515D27','IMAGO CENTRO DE INTELIGENCIA DE NEGOCIOS, S.A. DE C.V.'),
          ('ICL190507TH7','IUS-TI CONSULTORIA LEGAL Y TECNOLOGIA, S.A. DE C.V.'),
          ('ICL1907045T1','INMOBILIARIA Y CONSTRUCTORA LEBRI SA DE CV'),
          ('ICL230913DM8','IKEMA, COMERCIO, LOGISTICA Y SERVICIOS SA DE CV'),
          ('ICM041006NL9','INGENIERIA CONSTRUCCIONES Y MATERIALES PARA CONSTRUCCION SA DE CV'),
          ('ICM191217L17','IMPULSORA COMERCIAL Y DE MANTENIMIENTO GALLARDO S.A. DE C.V.'),
          ('ICN140715FR8','ILUSTRE COLEGIO NACIONAL DE INGENIEROS ARQUITECTOS DE MEXICO A.C'),
          ('ICO000407IS0','IVG COMERCIALIZADORA, S.A. DE C.V.'),
          ('ICO1007055I9','INFRAESTRUCTURA EN COMPUTO S DE RL DE CV'),
          ('ICO191219125','IKREM CONSTRUCCIONES S.A. DE C.V.'),
          ('ICO210506TP8','INNOVACIONES CONTINENTALES SA DE CV'),
          ('ICO860810PB1','INDUSTRIAS COBITEL SA DE CV'),
          ('ICO930209IW1','INDUSTRIAL CORSA S.A. DE C.V.'),
          ('ICO960722VD7','ISA CORPORATIVO SA DE CV'),
          ('ICP150723JA8','IMPACTO CREATIVO DE PUBLICIDAD SA DE CV'),
          ('ICP160323KK1','ICPC SA DE CV'),
          ('ICS000126H51','INGENIERIA Y CONSTRUCCIONES SEGAN SA DE CV'),
          ('ICS070207JE9','INFINITE COMPUTER SOLUTIONS S.A DE C.V.'),
          ('ICS890315MC1','INGENIERIA COMPUTACIONAL PARA EL SER HUMANO, SA DE CV'),
          ('ICU2101158W1','INTELIGENCIA COMERCIAL USTER DEL NORTE SA DE CV'),
          ('ICU211020SR6','INTERGROUP CUATRO4 S.A. DE C.V.'),
          ('ICV190214M7A','INGENIERIA Y CONSTRUCCIONES VELAZQUEZ SA DE CV'),
          ('IDA101006JJ3','INNOVACION Y DESARROLLO EN APLICACIONES DE SOFTWARE, S.A. DE C.V.'),
          ('IDC150805CGA','INVESTIGACION Y DESARROLLO CR, S.A.DE C.V.'),
          ('IDC990630533','INGENIERIA DINAMICA EN CONTROLES S.A DE C.V'),
          ('IDE2003055U9','INGNM DESARROLLO SAS DE CV'),
          ('IDG190319CJ7','INMEX D G, S.A. DE C.V.'),
          ('IDI130816D16','ILUMINACION DINAMICA S.A. DE C.V.'),
          ('IDI181130EYA','IDINFRA SA DE CV'),
          ('IDI231003RM1','IGUALDAD DE DERECHOS, IGUALDAD DE OPORTUNIDADES SC'),
          ('IDI980512BV4','COMPANIA INTERNACIONAL DE DISTRIBUCIONES, S.A. DE C.V.'),
          ('IDK0405248X1','INFRAESTRUCTURA Y DESARROLLO KUKULKAN SA DE CV'),
          ('IDL221130SHA','IMPRESIONES DIGITALES LEON SC DE RL DE CV'),
          ('IEB130201I11','IEBSA SA DE CV'),
          ('IEC160429UAA','INTER-MEDIA ESTRATEGIA CONSULTORES S.A DE C.V'),
          ('IEC170712SV1','INGENIEROS ESPECIALIZADOS EN CONTROL DE PLAGAS, JARDINERIA Y LIMPIEZA S. DE R.L. DE C.V.'),
          ('IEC210803NU0','INMOBILIARIA ENLACE CYDE SA DE CV'),
          ('IED030329LV3','IDEAS PARA EDUCAR S.A. DE C.V.'),
          ('IED160310CYA','INDUSTRIA EDAKO S.A. DE C.V.'),
          ('IEE110922HC0','IMPULSOS ESTRATEGICOS E INNOVADORES SA DE CV'),
          ('IEE150615IP3','INGENIERIA ESPECIALIZADA EN ELECTRICIDAD Y MECANICA INDUSTRIAL S.A. DE C.V.'),
          ('IEF230413K27','COMPANIA DE INFRAESTRUCTURA EFICAZ SA DE CV'),
          ('IEF7911291F4','INSTRUMENTOS Y EQUIPOS FALCON SA DE CV'),
          ('IEG140326FG7','ING. ELECTRICA GAME SA DE CV'),
          ('IEGM700701','MARIO ILDEFONSO GABRIEL'),
          ('IEL140723M35','INGENIERIA ELECTROMECANICA DE LERMA IELMEX S.A. DE C.V.'),
          ('IEL990217RN8','INGENIERIA EN ELEVADORES SA DE CV'),
          ('IEL991006AK5','IDEAR ELECTRONICA, S.A. DE C.V.'),
          ('IEM031216AH3','INGENIERIA ESPECIALIZADA DEL MEDIO AMBIENTE, S.A. DE C.V.'),
          ('IEM040421RS4','INTERCOMUNICACIONES EMPRESARIALES SA DE CV'),
          ('IES180605847','INFRAESTRUCTURA ESCASIL SA DE CV'),
          ('IES210423PK0','INNOVACION EN EQUIPOS Y SERVICIOS MEDICOS ITEC S.A DE C.V'),
          ('IET130531LW2','INGENIERIA EN TELECOMUNICACIONES RUVASA SA DE CV'),
          ('IETN950102','NAHOMY ILLESCAS DE LA TORRE'),
          ('IEX660815RH1','INGENIERIA EXPERIMENTAL, S.A. DE C.V.'),
          ('IFC010802E36','IMPACTOS FRECUENCIA Y COBERTURA EN MEDIOS, S.A. DE C.V.'),
          ('IFC111215FQ2','INTEGRAL FMS CONSULTING BUSINESS, S.A. DE C.V.'),
          ('IFD220720L70','INFRAESTRUCTURA FDM SA DE CV'),
          ('IFE190926BF9','INDUSTRIAS FELMARR SA DE CV'),
          ('IFM100423333','INGENIERIA FERROVIARIA MANVICO SA DE CV'),
          ('IFT200127GH3','IRON FACT TECNOLOGIA E INFORMATICA SA DE CV'),
          ('IGE211104P41','INSTITUTO GALATEA EDUCACION EN MOVIMIENTO SC'),
          ('IGL050721I85','INTERCAMBIO GLOBAL LATINOAMERICA, S.A. DE C.V.'),
          ('IGO100325B24','INDUSTRIAS GOBEMEX, S.A. DE C.V.'),
          ('IGR100913US2','INDUSTRIAL GRIAL SA DE C.V.'),
          ('IGS1805168A3','ING-ARQ GRUPO DE SERVICIOS S.A. DE C.V.'),
          ('IGS2108092VA','INMOBILIARIA GRAY SHAPE SA DE CV'),
          ('IHG8212239Z4','INDUSTRIAS DE HULE GALGO SA DE CV'),
          ('IHI200318CG5','INDUSTRIAS HIDALMEX SA DE CV'),
          ('IHP170211NK3','INSTITUTO HISPALENSE EN POLITICA CRIMINAL Y CIENCIAS DE LA SEGURIDAD AC'),
          ('IHS9809171R9','INFRAESTRUCTURA HIDRAULICA Y SERVICIOS SA DE CV'),
          ('IIA061208FEA','MANTENIMIENTO Y CONSTRUCCIONES INOXIDABLES AJ SA DE CV'),
          ('IIA1606148V2','IMPACTO INGENIERIA Y CONSTRUCCION S.A. DE C.V.'),
          ('IIA9802126N3','INGENIERIA INTEGRAL, ARTE EN ARQUITECTURA SA DE CV'),
          ('IIB0609042E9','IG INNOVACIONES BIOMEDICAS SA DE CV'),
          ('IIC0512078U0','INGENIERIA INTEGRAL CONSULTORES MEXICO S.A DE C.V.'),
          ('IIC150622U93','IMPACTO EN IMAGEN Y COLOR S DE RL DE CV'),
          ('IID960305QS0','INGENIERIA INTEGRAL DALCO SA DE CV'),
          ('IIF150604FAA','INGENIERIA INTEGRAL FYD SA DE CV'),
          ('III230214II3','INEDICO INSTITUTO DE INTEGRACION E INNOVACION EDUCATIVA PARA EL DESARROLLO DE COMUNIDADES SC'),
          ('III9306015I5','INGENIERIA INTEGRAL INTERNACIONAL MEXICO S.A. DEC.V.'),
          ('IIN110318CF2','INS IMPULSORA DE NEGOCIOS SOSTENIBLES S DE RL DE CV'),
          ('IIN1110125F3','INFORMACION INTEGRAL 24/7, S.A.P.I. DE C.V.'),
          ('IIO050307G59','INGENIERIA INTEGRAL OLIVAL SA DE CV'),
          ('IIOC680229','CLAUDIA GABRIELA INIGUEZ OCHOA'),
          ('IIP060217FY1','IMPLEMENTOS INDUSTRIALES DE PROTECCION NOVA, S.A. DE C.V.'),
          ('IIP1102212M6','INTEGRIDAD DE INFRAESTRUCTURA DEL PACIFICO SA DE CV'),
          ('IIS140512PR5','ISM INNOVA SALUD MEXICO, S.A.P.I. DE C.V.'),
          ('IIT101216JW0','INT INTELLIGENCE AND TELECOM TECHNOLOGIES MEXICO, S.A. DE C.V.'),
          ('IJM1202227C6','INDUSTRIAS JOSMI DE MEXICO S.A DE C.V'),
          ('IJU190424VC7','INTEGRACIONES JURANGEL S.A. DE C.V.'),
          ('IKA231023QX6','IX KAAB SA DE CV'),
          ('ILA020311473','INFOESTRATEGICA LATINA, S.A. DE C.V.'),
          ('ILA220422SQ9','IMPULSORA LANCER S DE RL DE CV'),
          ('ILE0603023Z9','IMPLEMENTOS LOGISTICOS PARA EVENTOS, S.A. DE C.V.'),
          ('ILE211206TL7','IMPULSORA LEIV SA DE CV'),
          ('ILI1312171YA','INFINITUM LIMPIEZA SA DE CV'),
          ('ILM1610217Q8','IMP LEASING MX SA DE CV'),
          ('ILU841018F85','INDUSTRIA LUMIPARR SA DE CV'),
          ('ILV100920BP2','CASA EDITORIAL Y DE CONTENIDO POLITICO.MX S.A. DE C.V.'),
          ('IMA011213626','INTERLOMAS MUNDO AUTOMOTRIZ, S.A. DE C.V.'),
          ('IMA050111IJ2','IN MOBILE ARQUITECTOS S.A. DE C.V.'),
          ('IMA061013KI3','INDUSTRIAS MG & N, SA. DE C.V.'),
          ('IMA150429F31','INTEGRA MARKET & SERVICES S.A. DE C.V.'),
          ('IMA191031JD3','IMPRESIONES MARX SC DE RL DE CV'),
          ('IMB1602118C2','INGENIERIA Y MANTENIMIENTO BALAM SA DE CV'),
          ('IMC1610278U7','INTEGRAME MEXICO CONSULTORES, S.C.'),
          ('IMC200515SN0','IMCAMI SA DE CV'),
          ('IMC2305252J5','INNOVACION, MANTENIMIENTO Y CONSTRUCCION RUWAY SA DE CV'),
          ('IMC231122P19','INDUSTRIA Y MAQUILA LOS CIPRESES SC DE RL DE CV'),
          ('IMD190218RD0','INGENIERIA EN MEDICINA DE DIAGNOSTICO SA DE CV'),
          ('IME0111305W3','IMECAF MEXICO SC'),
          ('IME0808278T7','PIEL DE CONCRETO, S.A. DE C.V.'),
          ('IME1107058Q7','IFOOD MEXICO SA DE CV'),
          ('IME111025TP1','ANTEA MEXICO CONSULTORES SA DE CV'),
          ('IME120127J99','IMPERIO DE METAL, S.A. DE C.V.'),
          ('IME140826SA0','INGENIERIA MELESA SA DE CV'),
          ('IME141023V92','IMEM MEXICO S.A. DE C.V.'),
          ('IME220407E38','INVENTIVA MERKETING AND EVENTS, SA DE CV'),
          ('IME771021CS7','INSTALACIONES Y MANTENIMIENTO EN EQUIPO DE RADIO COMUNICACION SAPI DE CV'),
          ('IME890307M58','IMPRENTA DE MEDIOS, SA DE CV'),
          ('IME910214GD1','ENTIA DE MEXICO SA DE CV'),
          ('IME941111HZ5','INSTRUMENTACION MEDICA, SA DE CV'),
          ('IME960710JZ2','IMPULSO MEXICANO, S.A. DE C.V.'),
          ('IMH950310CS6','INGENIERIA Y MANTENIMIENTO HIDRAULICO SA DE CV'),
          ('IMI170120573','INGENIERIA Y MANTENIMIENTO INDUSTRIAL HERSO SA DE CV'),
          ('IMI7904066I8','INSTRUMENTOS MEDICOS INTERNACIONALES, S. A. DE C. V.'),
          ('IMM000111A22','INGENIERIA METALICA Y MAQUINARIA MEXICANA SA DE CV'),
          ('IMM090401L33','INSUMOS MEDICOS MAR DE CORTES SA DE CV'),
          ('IMM170417BD2','IMMERGRUN SA DE CV'),
          ('IMP020422IX7','IMPRENSEL, S.A. DE C.V.'),
          ('IMP1603037E7','IMPLEMEDIX S DE RL DE CV'),
          ('IMR160313475','INSTALACIONES Y MANTENIMIENTO DE REDES DE AGUA Y DRENAJE SA DE CV'),
          ('IMS0806061I5','INGENIERIA, MANTENIMIENTO Y SERVICIOS INTEGRALES EN LA CONSTRUCCION S.A. DE C.V.'),
          ('IMT210429QV5','INNOVACION MEDICA Y TECNOLOGIAS PARA LA SALUD MX, S.A. DE C.V.'),
          ('IMU070824CW4','INSTRUMENTAL MEDICO UNIVERSAL SA DE CV'),
          ('IMV040628UM1','IMPULSO METROPOLITANO, MANTENIMIENTO Y SERVICIOS INTEGRALES SA DE CV'),
          ('IMX200205EB4','ISMAIR M33 , S.A. DE C.V.'),
          ('INA1009203Q2','INAMBTEC S.A. DE C.V.'),
          ('INA770420DW1','INSTITUTO NACIONAL DE ADMINISTRACION PUBLICA, A.C.'),
          ('INB1810109A7','INBIOMEDIX S.A. DE C.V.'),
          ('IND1406166UA','INDHR SA DE CV'),
          ('INE1306262Q1','INSCOM NETWORKS S.A. DE C.V.'),
          ('INE150723BT2','INELBIO SA DE CV'),
          ('INE960319FQ9','INESPROC, S.A. DE C.V.'),
          ('INF020801JE1','INFORMULA, S.A. DE C.V.'),
          ('INF111230UJ5','INFACO SA DE CV'),
          ('INF121217LB3','INTELLIGENT NETWORKS FOR CRITICAL BUSINESS SA DE CV'),
          ('ING991201CS6','INTERNACIONAL DE NEGOCIOS GAME, S.A DE C.V'),
          ('INI210323V9A','INGENIERIA NIXURI S.A. DE C.V.'),
          ('INN190517392','INNOVURA S.A. DE C.V.'),
          ('INO130412LQA','INOVAGUA S.A DE  C.V'),
          ('INO151119GE7','INOFFICE, S.A. DE C.V.'),
          ('INS161108P18','INGENIERIA EN NEGOCIOS DE SANEAMIENTO Y CONSTRUCCION S. DE R.L. DE C.V.'),
          ('INS1905093U5','INSPIRELL, S.A. DE C.V.'),
          ('INS2007281C6','INSUAC S.A. DE C.V.'),
          ('INS9501253H1','INSTRUMEDICAL, S.A. DE C.V.'),
          ('INT001130R88','INTERCONECTA S.A. DE C.V.'),
          ('INT070903Q18','INTELLILABS SA DE CV'),
          ('INT0809221N6','INTEGRACLEAN, S.A., DE C.V.'),
          ('INT1207165P6','INTERLAMEX SA DE CV'),
          ('INT141112K68','IP NETWORKS TECHNOLOGIES SA DE CV'),
          ('INT160815BW6','INTECPROOF SA DE CV'),
          ('INT880518EF4','INTERMET, S.A. DE C.V.'),
          ('INT9103157U9','INTERCOVAMEX SA DE CV'),
          ('INT9711127C5','INTERECOLOGIA SA DE CV'),
          ('INV210204FF9','INGENIERIA, NEGOCIACION, VALUACION, ADMINISTRACION, REINGENIERIA ORGANIZACIONAL ESTRATEGICA, INNOVARE SAS DE C.V.'),
          ('IOL0601198J3','IP ON LINE S.A. DE C.V.'),
          ('IOM180911I20','INPUT OUTPUT COMPANY MEXICO S.A. DE C.V.'),
          ('ION120221R21','IONC SAPI DE CV'),
          ('IOP100129GR0','IQ ORGULLO DE PERTENENCIA, S.A. DE C.V.'),
          ('IOR940728KA0','INGENIERIA ORSA SA DE CV'),
          ('IOS010313EG7','IMPRESORES EN OFFSET Y SERIGRAFIA, S.C. DE R.L. DE C.V.'),
          ('IOT190329NU3','INDAGA ONBOARDING 360 SA DE CV'),
          ('IPA070912SU9','INGE-ARQUITECTURA DEL PAISAJE S.A. DE C.V.'),
          ('IPA120106PY1','INGENIERIA DE PROCESOS AMBIENTALES IPRAM, S.A. DE C.V.'),
          ('IPA160219CA5','INPA PUBLICIDAD ALTERNATIVA SA DE CV'),
          ('IPC2212141K1','INGENIERIA Y PROYECTOS CLA SA DE CV'),
          ('IPC970602348','INOVACION Y PROMOCION DE LA CONSTRUCCION SA DE CV'),
          ('IPD1101104SA','IMPRESORA DE PERIODICOS DIARIOS S. DE R.L. C.V.'),
          ('IPE960409PB7','IMPRESOS PERSAN SA DE CV'),
          ('IPF101210CC6','INDUSTRIA DE PRODUCTOS FORESTALES DE TEXCOCO S.A. DE C.V.'),
          ('IPI040607DHA','INDUSTRIAS PIKAJE, S.A. DE C.V.'),
          ('IPI860721MN1','INTERNACIONAL PROVEEDORA DE INDUSTRIAS, S.A. DE CV'),
          ('IPK0706256D4','IPKON S.A. DE C.V.'),
          ('IPL080617UC9','INGENIERIA Y PROYECTOS DE LA LAGUNA SA DE CV'),
          ('IPL230616UJA','INDIGO PLANNERS SA DE CV'),
          ('IPN210702KW4','IPNEXT SA DE CV'),
          ('IPO201207MS8','INFINITY POWERHOUSE SA DE CV'),
          ('IPP210823NV2','IGWT PPE SAPI DE CV'),
          ('IPS200113ET3','INNOVACION PERSONALIZADA SUSTENTABLE S.A. DE C.V.'),
          ('IPS220622TJ7','IEB PROYECTOS Y SUPERVISION SA DE CV'),
          ('IPV861210R33','INDUSTRIAL DE PINTURAS VOLTON, SA DE CV'),
          ('IRA230829NMA','IRRADIO RADIO S.C. DE C.V. DE R.L.'),
          ('IRC151203F8A','IMAGEN RADIO COMERCIAL S.A DE C.V.'),
          ('IRC220201ND6','IXTAPALLI RUTA 14 SA DE CV'),
          ('IRC2305085S7','IRCUM SA DE CV'),
          ('IRD110510GY4','INFRAESTRUCTURA PARA REDES DE DATOS Y ELECTRICAS, S.A. DE C.V.'),
          ('IRE120202RA4','IDEX RECUBRIMIENTOS SA DE CV'),
          ('IRE151204MYA','IQ RETAIL SA DE CV'),
          ('IRL211103IC9','IMAGEN Y REPUTACION EN LINEA , S.A. DE C.V.'),
          ('ISA071206P64','GREEN PATCHER MEXICO S DE R.L DE C.V.'),
          ('ISA1104085Z0','INMUEBLES SAGU, SA DE CV'),
          ('ISA171023647','INTEGRACION DE SERVICIOS APROCSEL, S. DE R.L. DE C.V.'),
          ('ISB170516N28','INNOVACION EN SISTEMAS DEL BAJIO SA DE CV'),
          ('ISB840628IB2','INDUSTRIAS SOLA BASIC S.A. DE C.V.'),
          ('ISC080722633','INTEGRACION DE SERVICIOS DE CONSULTORIA B&B SA DE CV'),
          ('ISC091217HC7','COMERCIALIZADORA ICIT S.A. DE C.V.'),
          ('ISC130822AM0','IMPACTO SOCIAL CONSULTORES, S.C.'),
          ('ISC170315US2','IMPORTADORA DE SUMINISTROS PARA LA CIENCIA E INVESTIGACION SA DE CV'),
          ('ISC961118870','INNOVACION Y SOLIDEZ CORPORATIVA S.A. DE C.V.'),
          ('ISD120509QH1','IMPULSORA DE SERVICIOS DICA S DE RL DE CV'),
          ('ISE0910263D5','INNOV SOLUCIONES ESTRATEGICAS S.A DE C.V.'),
          ('ISE1001062F1','INSTRUMENTACION Y SERVICIO EN ANALITICA SA DE CV'),
          ('ISE120328RV8','INGENIERIA Y SERVICIOS EJE DIEZ, S.A. DE C.V.'),
          ('ISE130214TM8','INGENIERIA SUSTENTABLE EN MANTENIMIENTO INSTALACIONES Y CONSTRUCCIONES SA DE CV'),
          ('ISE1608266Q8','INTENTICS SOLUCIONES EMPRESARIALES SA DE CV'),
          ('ISI200922SL4','ISAZA SOLUCIONES INTEGRALES SA DE CV'),
          ('ISI2307129F3','INTERGADORA DE SERVICIOS INDUSTRIALES MEXICANA 77 SAS'),
          ('ISI860331LQ4','IMPRESORA SILVAFORM, S.A DE C.V.'),
          ('ISI920603J77','IMPORTACIONES Y SUMINISTROS INDUSTRIALES S.A. DE C.V.'),
          ('ISL150410587','INTEGRADORA DE SERVICIOS Y LOGISTICA MGEM S.A. DE C.V.'),
          ('ISM111025JF9','INSUMOS Y SOLUCIONES MEDICAS S.A. DE C.V.'),
          ('ISM230704C11','ISMALEX107 SC DE RL DE CV'),
          ('ISO0601306W0','COMPANIA INTEGRA SOLUCIONES S.A. DE C.V.'),
          ('ISO201008IP1','IBEROMAX SOLUTIONS SA DE CV'),
          ('ISP231024MG3','INTEGRADMIN SPINDOLA S DE RL DE CV'),
          ('ISP971202AA6','INGENIERIA EN SISTEMAS Y PESAJE, S.A. DE C.V.'),
          ('ISS081217D7A','ISSITEC, S.A. DE C.V.'),
          ('ISS160922RJ5','INTEGRADORA DE SISTEMAS EN SEGURIDAD HEBRON S DE RL DE CV'),
          ('ISS911211PB6','INGENIERIA, SERVICIOS Y SISTEMAS APLICADOS, S.A DE C.V.'),
          ('IST210316A19','INTERCONTINENTAL SERVICES TLC S.A. DE C.V.'),
          ('ISV200908KFA','INNOVACIONES SUSTENTABLES DEL VALLE DE MEXICO, S.A. DE C.V.'),
          ('ITA061117787','INGENIERIA EN PROCESOS DE TRATAMIENTOS DE AGUA S.A. DE C.V.'),
          ('ITC001110EW3','INTEGRACION DE TELEFONIA Y COMUNICACIONES SA DE CV'),
          ('ITC091208618','INDUSTRIA TECNICA Y COMERCIAL LUNA, S.A. DE C.V.'),
          ('ITC220601TL0','INDUSTRIAS Y TECNOLOGIAS CHACON SA DE CV'),
          ('ITC9901123YA','I.T.C. INNOVACIONES TECNOLOGICAS CONSTRUCTIVAS SA DE CV'),
          ('ITD120829MI8','INGENIERIA TEMATICA Y DESARROLLOS SA DE CV'),
          ('ITE0804081VA','INTROM TEXTIL S.A. DE C.V.'),
          ('ITE1602177E2','INDUSTRIAL, TECNOLOGIAS Y EQUIPO MARINO INTEQ, S.A. DE C.V.'),
          ('ITE170224KG2','IQ TELECOMUNICACIONES SA DE CV'),
          ('ITE9701222Q9','INTEGRADORES DE TECNOLOGIA S.A. DE C.V.'),
          ('ITI121211AE2','IMAGEN TI SA DE CV'),
          ('ITI190417G20','INTEGRADORES EN TICS, SA DE CV'),
          ('ITI651002LG8','IMPULSORA TLAXCALTECA DE INDUSTRIAS, S.A. DE C.V.'),
          ('ITL220525RJA','INSTALACIONES TLANEXTLI SA DE CV'),
          ('ITM0803194W4','IN KEY TRADE MEXICO SA DE CV'),
          ('ITP840510DT4','INDUSTRIAL TECNICA DE PINTURAS, S.A. DE C.V'),
          ('ITR090220635','ITRA-CAS, S. DE R.L. DE C.V.'),
          ('ITR940411H70','INTERNATIONAL TRADING, S.A DE C.V'),
          ('ITS141208U80','INTEGRA 360 GRADOS STADIUMS LIVE SA DE CV'),
          ('ITS970417P73','INTERTEK TESTING SERVICES DE MEXICO SA DE CV'),
          ('IUC180312KX7','INFRAESTRUCTURA UCM S.A. DE C.V.'),
          ('IUM050218I74','IUMSA S.A. DE C.V.'),
          ('IVE160401495','IDEA VERTICAL SA DE CV'),
          ('IVS161020EK1','INDUSTRIA Y VINCULACION SOCIAL DE MEXICO SA DE CV'),
          ('IXI1607019Q6','INMOBILIARIA XIMAC SA DE CV'),
          ('IZZ181128410','INMU ZZE S. A. DE C. V.'),
          ('JAC050118A55','JE ASOCIADOS EN COMERCIO PROFESIONAL SA DE CV'),
          ('JAJ050824G65','JAJMA, S. DE R. L. DE C.V.'),
          ('JALH720324','HUMBERTO JAIME LOPEZ'),
          ('JALJ610802','JULIO GUSTAVO JASSO LOPERENA'),
          ('JAS071018125','JM ASESORES Y SERVICIOS SA DE CV'),
          ('JAS2201157Z9','JASJA SA DE CV'),
          ('JASJ790815','JAIME JARA DEL SOLAR'),
          ('JAT220808174','JARDIN ACALLI TEO SC DE RL DE CV'),
          ('JAX970905595','JAXAQUIM, S.A. DE C.V.'),
          ('JAY230215SK0','JAYOL SA DE CV'),
          ('JBI071108R12','JMT BIOMEDICAL SA DE CV'),
          ('JBI160121JL2','JG BIOMEDICAL S.A. DE C.V.'),
          ('JBU220429581','JORD BUSSINES SA DE CV'),
          ('JCA131210CRA','JJL CAMINOS S.A. DE C.V.'),
          ('JCA221111QP3','J&R CONSULTORES ADMINISTRATIVOS SA DE CV'),
          ('JCA221125DP2','JAEN CARTONERIA SC DE RL DE CV'),
          ('JCI230906DM8','JARDIN DE LOS CHIQUITINES SC DE RL DE CV'),
          ('JCO120209HKA','JEMACO CONSTRUCCIONES SA DE CV'),
          ('JCO141017TJ9','JANUPI CONSTRUCCIONES, SOCIEDAD ANONIMA DE CAPITAL VARIABLE'),
          ('JCO160112HP6','JERA CONSORCIO, S.A. DE C.V.'),
          ('JCO931215CI8','JASEV COMPUTACION S.A. DE C.V.'),
          ('JCR040721NU2','JET VAN CAR RENTAL, S.A. DE C.V.'),
          ('JCS050427GT1','JM CONSTRUCTORA Y SUPERVISION S.A. DE C.V.'),
          ('JCS100629QF9','JDG COMERCIALIZADORES Y SERVICIOS MICHOACANOS, S.A. DE C.V.'),
          ('JCS171011AB1','JGGH CONSTRUCCION Y SUPERVISION SAS DE CV'),
          ('JCS181121JK3','JOSADAN CONSTRUCCIONES Y SUMINISTROS SOCIEDAD ANONIMA DE CAPITAL VARIABLE'),
          ('JDM850910UD2','JARDINERIA 2000 S. A.'),
          ('JEC040429LS4','J.D.J. EQUIPO Y CONSTRUCCIONES SA DE CV'),
          ('JEL081120MV8','J.J ELECTROFERRI, S.A. DE C.V.'),
          ('JEN2106094W7','JSMK ENTERPRISES SA DE CV'),
          ('JER201213AS2','JEREMIAH 22.23 S.A. DE C.V.'),
          ('JEV220127FW3','J&J ESPACIOS DE VIVIENDA AVANZADA S.A. DE C.V.'),
          ('JHA010328FR1','JHADYD S.A. DE C.V.');
select * from tblProveedores
	where idStrRFCproveedor like 'JHA010328FR1'

--4o bloque de 1,000 proveedores

insert into tblProveedores(idStrRFCproveedor,
					        strRazónSocialProveedor)
	values('JHA050831PZ1','JACK HAMMER SA DE CV'),
          ('JIA080911816','JASS INFORMATIC ADMINISTRATIVE S.A. DE C.V.'),
          ('JIAG890624','GUADALUPE JIMENEZ AVILA'),
          ('JIAM811013','MARLENE JIMENEZ AVILA'),
          ('JIAV900818','VICTOR DANIEL JIMENEZ ARRIAGA'),
          ('JICC840118','CLAUDIA JIMENEZ CASTILLO'),
          ('JICR550419','RAYMUNDO JIMENEZ CRUZ'),
          ('JICR840513','ROBERTO JIMENEZ CONTRERAS'),
          ('JICR990427','RODRIGO JIMENEZ CALDERON'),
          ('JIFE720316','FELIX OCTAVIO JIMENEZ'),
          ('JIGM721020','MARISOL JIMENEZ GAMEZ'),
          ('JIGR510809','ROSA MARIA JIMENEZ GARCES'),
          ('JILL781010','LAURA LUZ JIMENEZ LUJAN'),
          ('JIMM990426','MARIELA IRLANDA JIMENEZ MENDOZA'),
          ('JIMR960113','RODRIGO JIMENEZ MENDOZA'),
          ('JIN001127IF4','JYM INGENIEROS SA DE CV'),
          ('JIN160620I71','JERA INDUSTRIAS S.A DE C.V'),
          ('JIRA680623','ALICIA JIMENEZ RAMIREZ'),
          ('JIS230707396','JCVM IMPLEMENTACIONES Y SERVICIOS SC DE RL DE CV'),
          ('JITA770414','ALEJANDRO JIMENEZ TELLEZ'),
          ('JITD780726','DAVID JIMENEZ TORRES'),
          ('JJI150507AU1','JUSTICIA JUVENIL INTERNACIONAL, MEXICO, AC'),
          ('JJM920909BM6','JOHNSON & JOHNSON MEDICAL MEXICO, S.A. DE C.V.'),
          ('JLC110211KC6','JAR LUMI CONSTRUCTORA S.A  DE C.V.'),
          ('JLG190412RT2','JABER LIMPIEZA EN GENERAL, SA DE CV'),
          ('JLO230911RV9','LA JOYA DE LOTO SAS DE CV'),
          ('JLS121217JU4','JOAD LIMPIEZA Y SERVICIOS, S.A. DE C.V.'),
          ('JMA170315NH3','JAME MANTENIMIENTO, SA DE CV'),
          ('JMC091027213','J+C MEXICANA DE COMERCIO Y CONSTRUCCION, S.A. DE C.V.'),
          ('JME910507HC7','JEOL DE MEXICO S.A. DE C.V.'),
          ('JMW160811PB1','JAMAC MOVING WORK SA DE CV'),
          ('JOC210430IJ4','JHV OBRA CIVIL Y SUMINISTROS MEXICO SA DE CV'),
          ('JOS911023HE3','JOSGAR S.A. DE C.V.'),
          ('JPE020516973','JULIA PEREDA SA DE CV'),
          ('JPM090217TI5','JESHOM PUBLICIDAD Y MERCADOTECNIA, S.A. DE C.V.'),
          ('JRI840903AF3','J. R. INTERCONTROL, S. A. DE C. V.'),
          ('JSA2110264J9','JRF STEEL & CONSTRUCTION SA DE CV'),
          ('JSE200527R47','JARU SERVICIOS ESPECIALIZADOS DE ALCANCE INTERNACIONAL SA DE CV'),
          ('JSO1505295P4','JCS SOLUCIONES S.A. DE C.V.'),
          ('JSU200713MN2','JRL SUPPLIERS S DE RL DE CV'),
          ('JTA210302KU7','JASS TECHNOLOGIES & SMART SOLUTIONS SA DE CV'),
          ('JTE980210IT8','JOMTEL TELECOMUNICACIONES, S.A. DE C.V.'),
          ('JTL020207TL4','JARDINES Y TRANSPORTES LUJAMBIO S.A. DE C.V.'),
          ('JUBE890406','EDUARDO JUAYEK BERNAL'),
          ('JUCS670707','SARA JUAREZ CANO'),
          ('JUOL520609','LUIS ENRIQUE JUNCO ORTIZ'),
          ('JUVA630112','MARIA ALICIA JUAREZ VEGA'),
          ('JUVL680601','LUIS URIEL JURADO VAZQUEZ'),
          ('JVD041110UC6','J V D CONSTRUCTORA E INMOBILIARIA SA DE CV'),
          ('KAL220319QKA','KALIBARRY S.A DE C.V'),
          ('KAM9607171Z1','KAMEJ S.A. DE C.V.'),
          ('KAR1303115R1','KARSOS, SA DE CV'),
          ('KBU150113RQ2','KOM BUSINESS, S.A. DE C.V.'),
          ('KCA150216KC6','KEY CAPITAL S.A.P.I. DE C.V.'),
          ('KCC980127M47','AT CAMIONES Y AUTOBUSES SA DE CV'),
          ('KCO0903098E6','KSM CONSTRUCCIONES SA'),
          ('KCO2007304F1','KALCHIVA CONSTRUCCIONES, S.A DE C.V.'),
          ('KCO920330QA8','KADE CONSTRUCCIONES SA DE CV'),
          ('KCY090218QQ4','KYOTO CONSTRUCCIONES Y PROYECTOS S.A. DE C.V.'),
          ('KES221006KY4','KESADI SA DE CV'),
          ('KGT220314E24','KUDANET GTC SA DE CV'),
          ('KID210303MC4','KIDAEM S. DE R.L. DE C.V.'),
          ('KIN960110SE4','KARISMA INGENIERIA, S.A. DE C.V.'),
          ('KIW0907306Z1','KIWILIMON S.A.P.I DE C.V.'),
          ('KKF23110988A','KUERPO KON FIGURA SC DE RL DE CV'),
          ('KMA230721E82','KAN MAK SA DE CV'),
          ('KMM96060518A','KING MAR MEXICANA SA DE CV'),
          ('KMO131216IR4','KIMCHI MOTORS SA DE CV'),
          ('KMS1704202Y2','KAAB MANTENIMIENTO Y SERVICIOS S.A DE C.V'),
          ('KOA170802IC3','KING OASIS S.A. DE C.V.'),
          ('KOX231110C92','KO729 SA DE CV'),
          ('KPE191220Q63','KAE PROYECCION EMPRESARIAL, SC'),
          ('KPJ0908144Z8','KARVS PRO JARDIN & AGRO SA DE CV'),
          ('KPP170321TX7','KIA PLANES Y PROYECTOS SA DE CV'),
          ('KRC210519KDA','KRCH SA DE CV'),
          ('KRE000125H33','KREMATISTIC SA DE CV'),
          ('KSO131122G30','KLIK SOLUCIONES EDUCATIVAS, S.A. DE C.V.'),
          ('KTD2309206L6','KUALI TONALI, DISTRIBUIDORA DE DULCES Y MATERIAS PRIMAS SC DE RL DE CV'),
          ('KTO911206MC6','KOL-TOV, S.A. DE C.V.'),
          ('KWM100824MC8','KIT WEAR DE MEXICO SA DE CV'),
          ('LAAN841013','NELLY LAURRABAQUIO ALCANTARA'),
          ('LAC160621BLA','L & C CONSTRUCTORES DE PUEBLA SA DE CV'),
          ('LACM790406','MISAEL ANTONIO LAVARIEGA DE LA CRUZ'),
          ('LAE190128BN8','LIDES ASESORIA ESPECIALIZADA, SC'),
          ('LAET801012','TANIA ITZEL LARA ESPINOZA'),
          ('LAFE980411','ERICK LARA FRIAS'),
          ('LAGC860814','CESAR AUGUSTO LARA GAMIZ'),
          ('LAGJ880629','MARIA DE JESUS LAGUNAS GONZALEZ'),
          ('LAHA820327','ALEJANDRO CRUZ LACUNZA HERNANDEZ'),
          ('LAHE671013','EDUARDO LARA HERNANDEZ'),
          ('LAL140909SV7','LEAL, ALTA LIMPIEZA Y MANTENIMIENTO, S.A. DE C.V.'),
          ('LAM151021434','LINKS & MASTERS CORPORATION S.A.P.I. DE C.V.'),
          ('LAM211108FQA','LAMAP, SA DE CV'),
          ('LAM211215TP1','LOGISTICA AMFA SA DE CV'),
          ('LAP9408085S6','LAPI S.A. DE C.V.'),
          ('LAQ790510FH2','LABORATORIOS ABC QUIMICA INVESTIGACION Y ANALISIS SA DE CV'),
          ('LAR110705BY4','LORD ARQUITECTOS S.A. DE C.V.'),
          ('LAS081205KA4','LASERTIME SA DE CV'),
          ('LAS180122TM0','LLASIME S.A. DE C.V.'),
          ('LAU160505CV4','LAUROK CO SA DE CV'),
          ('LBS181109QF9','LEAN BIM SOLUTIONS, S.A. DE C.V.'),
          ('LCB1003187Y3','LIBELLA CREATIVE BOUTIQUE SA DE CV'),
          ('LCF231011GNA','LABRANZA COSECHA Y FORMACION SC DE RL DE CV'),
          ('LCM190703IK6','LAJAS Y CALIZOS DE MEXICO, S.A DE C.V'),
          ('LCN151127179','LEGAL CONSULTANTS NIETO & ASSOCIATES S. DE R.L. DE C. V.'),
          ('LCN231103519','LIRIO''S COSMETIK NATURAL SC DE RL DE CV'),
          ('LCO100621D40','LEMAC CONSTRUCCIONES, S.A. DE C.V.'),
          ('LCO120330QK4','LUKEV CONSULTING SC'),
          ('LCO130115BC7','LEVERAGE CONSULTING, S.C.'),
          ('LCO141125EA4','LIMIFLUC CONSORCIO, S.A. DE C.V.'),
          ('LCO151110LZ3','LEMIG CONSTRUCTORES SA DE CV'),
          ('LCO2206205M0','LONGHORN COMERCIALIZADORA SA DE CV'),
          ('LCO231005J88','LOUDISS COMERCIALIZADORA SA DE CV'),
          ('LCO960110J83','LINOS CONSTRUCCIONES SA DE CV'),
          ('LDC2001153Q3','LEVKOS, DISENO Y CONSTRUCCION SA DE CV'),
          ('LDI230602UR7','LINEA DIAGONAL SA DE CV'),
          ('LDM0802084P8','LABORATORIOS DAI DE MEXICO SA DE CV'),
          ('LDP040430B38','LAPSOLITE DIVISION PRODUCTOS QUIMICOS S.A. DE C.V.'),
          ('LDT101216PA0','LABORATORIO DIESEL TIDSA S.A. DE C.V.'),
          ('LEB090730UH1','LEVEL EMOTIONAL BUSINESS SA DE CV'),
          ('LEBR870710','RAFAEL LEON BALDERAS'),
          ('LEG0705186F3','LEGUZ SA DE CV'),
          ('LEG080407PJ8','LEGNOMADERA SA'),
          ('LEGC800506','CHRISTIAN RAFAEL LEAL GARCIA'),
          ('LEI230612JF9','LUDOTECA Y ESTANCIA INFANTIL GABRIELA MISTRAL SC DE RL DE CV'),
          ('LEJI631204','IGNACIO LEON JAIME'),
          ('LEML911220','LUIS ENRIQUE LEDESMA MARTINEZ'),
          ('LEN150811ND2','LV CIA EDITORA DE NOTICIAS SA DE CV'),
          ('LEO210928AH8','LEO-MEDIK SA DE CV'),
          ('LEO310214293','EL LEON SA DE CV'),
          ('LERA600712','ARMANDO LEON REYES'),
          ('LES020821GB6','LITOGRAFIA Y EMPAQUES SOLIS SA DE CV'),
          ('LFA0002253N5','LATIN AGRO-FARMA SA DE CV'),
          ('LFO540716E98','LITHO FORMAS S.A. DE C.V.'),
          ('LFS161207DP3','LEASE AND FLEET SOLUTIONS S.A. DE C.V.'),
          ('LGA0111296B6','LIBRERIAS GANDHI SA DE CV'),
          ('LGS171211AA0','LAVANDERIA GOZU Y SERVICIOS SC DE RL DE CV'),
          ('LHE030917K1A','LIRA Y HERNANDEZ S.A. DE C.V.'),
          ('LHP220518146','LM HAUS PROYECTOS COMERCIALES SA DE CV'),
          ('LHS861215GAA','LAVANDERIA DE HOSPITALES Y SANATORIOS, S.A. DE C.V.'),
          ('LIA9708133A3','LD I ASSOCIATS, S.A DE C.V.'),
          ('LIB940603BC6','LOGISTICA INTERNACIONAL DE BIENES Y SERVICIOS SA DE CV'),
          ('LID131122TW6','LIDERAZGO, INTELIGENCIA Y DESARROLLO ESTRATEGICO REGIONAL, S.C.'),
          ('LIF1707192M8','L.E. INTERNATIONAL FUEL SUPPLY SA DE CV'),
          ('LIM1612221Z0','LIMPIACERO S. DE R.L. DE C.V.'),
          ('LIM180320M10','LIMPERSA SA DE CV'),
          ('LIM2311176F0','LIMANSU SA DE CV'),
          ('LIM231130469','LIMPIEZA INTEGRAL METROPOLITANA SUBTERRANEA SA DE CV'),
          ('LIM991216AU8','LIMASA, S.A. DE C.V.'),
          ('LIMA870310','ANUAR LIMA MUNGUIA'),
          ('LIMD850125','DULCE KARINA LICONA MARTINEZ'),
          ('LIN090430G35','L.R.H.G. INFORMATIVO, S.A. DE C.V.'),
          ('LIN1402276D2','LIREM INOVATION S. DE R.L. DE C.V.'),
          ('LINN941205','JOSE NOEL LINARES NAVARRO'),
          ('LIOM760209','JOSE MAURICIO LIMON ORTEGA'),
          ('LIP980519N41','LIPER S. A. DE C. V.'),
          ('LIS161019BV7','LUMIGA INGENIERIA Y SOLUCIONES S.A. DE C.V.'),
          ('LIVA870929','ALMA MARIANA LIEBANA VARELA'),
          ('LJA0303264L5','LABORATORIOS JAYOR, S.A. DE C.V.'),
          ('LLN1303115A9','LNG LIMPIEZA NUEVA GENERACION SA DE CV'),
          ('LLO190220UU2','LFG LOGISTICA S.A. DE C.V.'),
          ('LLO1911271TA','LASK LOGISTICS, SAS DE CV'),
          ('LLP100826QA3','LEGISPOL, LEGISLACION Y POLITICA CONSULTORES SC'),
          ('LMA230801Q55','MC LAB MARKETER SAS'),
          ('LMA230808RC4','LONGANIZA MARCIAL SC DE RL DE CV'),
          ('LMA850525MR6','LITHO MAREVA SA DE CV'),
          ('LME0205309V9','LAUKA MEXICANA SA DE CV'),
          ('LME080507LL0','LACAVI MERCADOTECNIA SA DE CV'),
          ('LME081212K3A','LUNZAM DE MEXICO SA DE CV'),
          ('LME100811DI9','LATINAMERICA MEETINGS SA DE CV'),
          ('LME200121GK2','LL MED S.A DE C,V,'),
          ('LME470317597','LLOYD MEXICANO S DE RL DE CV'),
          ('LMP2206128Y7','LIONHEART MANAGEMENT AND PROJECTS S.A DE C.V'),
          ('LMR200318LW6','LOGISTICA MEDICA REGIOMONTANA SA DE CV'),
          ('LNA080229371','LLANTISERVICIO NAUCALPAN, S.A. DE  C.V.'),
          ('LNC211130RP2','LARENS NEGOCIO COMERCIAL SA DE CV'),
          ('LNC7001211PA','LABORATORIO NACIONAL DE LA CONSTRUCCION, SA'),
          ('LNI9611119T4','LOGISTICA Y NEXOS INFORMATICOS SA DE CV'),
          ('LOAL801129','LIDIA LOPEZ ANDREANO'),
          ('LOBL610109','LEONOR CELIA LOPEZ BARAJAS'),
          ('LOCF610416','FELIPE PASCUAL LOPEZ CASTILLO'),
          ('LOCI760621','IVONNE MARIA DEL CARMEN LOPEZ CANAS'),
          ('LOCL771215','LARISSA ELIZABETH LOPEZ CAMACHO'),
          ('LOCO951222','OMAR ALFONSO LOBATO CECILIANO'),
          ('LOCX821222','XITLALI GUADALUPE LOPEZ CEJA'),
          ('LOD161118FN6','LODIFARMA, S.A. DE C.V.'),
          ('LODA880904','JOSE ARMANDO LOPEZ DUENAS'),
          ('LODC930416','CHRISTIAN JOSHUE LOPEZ DUENAS'),
          ('LOGC830923','CARLOS RICARDO LOPEZ GOMEZ'),
          ('LOGG840611','GABRIELA LOPEZ GARCIA'),
          ('LOGP940521','PAOLA LOPEZ GARCIA'),
          ('LOHE761211','MARIA EDITH LOPEZ HERNANDEZ'),
          ('LOI180608T19','LOIALT SA DE CV'),
          ('LOIE700916','EDGAR MIGUEL LOPEZ ISLAS'),
          ('LOJE601115','EMILIO ALBERTO LOPEZ JACOB'),
          ('LOJP571119','PONCIANO LOPEZ JUAREZ'),
          ('LOLA780508','ANGELICA LOPEZ LOPEZ'),
          ('LOLB530203','BLAS LOPEZ LUCAS'),
          ('LOLG720909','GORGONIO LOBATO LOPEZ'),
          ('LOLJ561205','JOEL OSCAR LOPEZ LOPEZ'),
          ('LOLM830411','MIGUEL ANGEL LOPEZ LOPEZ'),
          ('LOM2310238E2','LOMECLEAN19 SC DE RL DE CV'),
          ('LOMA750102','ALEJANDRO LOPEZ MARTINEZ'),
          ('LOMC710707','CLAUDIA LUCIA LOPEZ MONDRAGON'),
          ('LOMD810324','DANIEL LOPEZ MARTINEZ'),
          ('LOMG670327','GRISELDA LOPEZ MALDONADO'),
          ('LOML941113','LUIS ALEJANDRO LOPEZ MARTINEZ'),
          ('LOO121212AD4','LOONADMINISTRATIE SA DE CV'),
          ('LOP120315LY5','LNMBR OPERADORA S A P I DE CV'),
          ('LOPS801125','SANTIAGO LOPEZ PEREZ'),
          ('LOPS810406','SERGIO LOPEZ PEREZ'),
          ('LOQJ590721','JUAN CARLOS LOPEZ QUECHOL'),
          ('LORC671104','CARLOS LOZADA RAMIREZ'),
          ('LORD920515','DIANA LOPEZ ROMERO'),
          ('LOTM831008','MARCELA BERENICE LOPEZ TORRES'),
          ('LOVI950705','IVAN LOPEZ VILLALOBOS'),
          ('LPC231123889','LIMPIO PRONTO Y CLARO 2023 SC DE RL DE CV'),
          ('LPE071005MU5','LIMPIEZA PEGASO SA DE CV'),
          ('LQC920131M20','LABORATORIO QUIMICO CLINICO AZTECA S.A.P.I. DE C.V.'),
          ('LRE120424P16','LABORATORIO RENOVABLE S DE RL DE CV'),
          ('LRM150722R33','LEITNER ROPEWAYS MEXICO,S.DE R.L. DE C.V.'),
          ('LRS140212U14','LIRUN RS SA DE CV'),
          ('LSA130711NU8','LABORATORIOS SAAV S.A. DE C.V.'),
          ('LSA7004109L7','LABORATORIOS SAN ANGEL, S.A.'),
          ('LSE140129RT1','LIKHOM SERVICES S.A. DE C.V.'),
          ('LSI020430ESP','LANDER SIMULATION & TRAINING SOLUTIONS S.A.'),
          ('LSI090130BR5','LB SISTEMAS SA DE CV'),
          ('LSI960624287','LAREDO SUMINISTROS INTERNACIONALES SA DE CV'),
          ('LSL070626UE9','LOAD SOPORTE LOGISTICO, S.A. DE C.V.'),
          ('LSO141110A49','LUC SOLUCIONES SA DE CV'),
          ('LSO171005E72','LDR SOLUTIONS SA DE CV'),
          ('LSO201023UI7','LABORATORIO SOLINTICO SA DE CV'),
          ('LSO741128J68','LABORATORIOS SOLFRAN, S.A.'),
          ('LSR930909EA6','LLANTAS SAN RAFAEL S.A. DE.C.V.'),
          ('LST2008265R6','LANVIKA SERVICES AND TECHNOLOGY S.A. DE C.V.'),
          ('LTE1703143A6','LOSEMEX TENT SA DE CV'),
          ('LTE190725S41','LTEZ SA DE CV'),
          ('LTI921014AI7','LIMPIEZA TECNICA INDUSTRIAL S.A. DE C.V.'),
          ('LTI960220FP5','LAB TECH INSTRUMENTACION S.A DE C.V'),
          ('LTS130613GJ4','LIMPIA TAP SA DE CV'),
          ('LUAI810910','ISRAEL LUNA ARELLANO'),
          ('LUCA670613','ANTONIO DE LUCAS CARMONA'),
          ('LUDE730814','EDUARDO DE LUNA DUARTE'),
          ('LUK1405291J9','LUKSON SA DE CV'),
          ('LULE610131','EUGENIO ALBERTO LUGO LOPEZ'),
          ('LUOR760428','RAMIRO LUGO OLIVA'),
          ('LURL860417','LUIS FERNANDO DE LA LUZ RUIZ'),
          ('LURR740315','JOSE RAYMUNDO LUNA RAMOS'),
          ('LUSO970415','OSCAR AARON LUNA SANTIAGO'),
          ('LVA101118CY3','VANTAGE SERVICIOS INTEGRALES DE SALUD SA DE CV'),
          ('LVI190923KG4','LUBRICANTES LA VIGA SA DE CV'),
          ('MAA200618MU3','MIJE ARQUITECTOS Y ASOCIADOS SA DE CV'),
          ('MAA2010022T2','MECANICA AUTOMOTRIZ AUTONOVA S.A DE C.V'),
          ('MAAA760507','ANTONIO MARTINEZ ARROYO'),
          ('MAAD951204','DANIEL GUILLERMO MARQUEZ APOLINAR'),
          ('MAAI700814','MARIA IRINA MARTINEZ AVELAR'),
          ('MAAI860709','MARIA ISABEL MANCILLAS AGUILAR'),
          ('MAAL870812','LUIS ANGEL MARTINEZ AGUIRRE'),
          ('MAAM840709','MARISOL MADRAZO ADAME'),
          ('MABA690404','ABEL MARTINEZ BERBER'),
          ('MABA820506','ALEJANDRO RENE MALPICA BOTELLO'),
          ('MABF700929','FERNANDO MANDRI BELLOT'),
          ('MABM880421','MIGUEL ANGEL MARTINEZ BARRIOS'),
          ('MABO880212','OMAR SALVADOR MARTINEZ BRIONES'),
          ('MABS720104','SALVADOR MARTINEZ BARBOSA'),
          ('MAC1104274S9','MEX-COM, AGENCIA COMERCIAL TAXQUENA S.A. DE C.V.'),
          ('MAC180605EM9','MERAKI ASESORES CORPORATIVOS SAS DE CV'),
          ('MAC181024C80','MORALES ARELLANO CONSTRUCTORES SA DE CV'),
          ('MACB950615','BEATRIZ MARTINEZ CRUZ'),
          ('MACF850507','FERNANDO ROMAN MARQUEZ COLIN'),
          ('MACJ490805','JUAN MARGARITO MARIN CUELLAR'),
          ('MACL570225','MARIA DE LA LUZ MARTINEZ CENTENO'),
          ('MACP890511','PAOLA NAYELI MARTINEZ CALDERON'),
          ('MACR880418','RODRIGO MIGUEL MAGALLAN CRUZ'),
          ('MAD050404L99','MAGNUM AUDIO DIGITAL SA DE CV'),
          ('MAD100430HN3','MADASI S.A. DE C.V.'),
          ('MAD100507S80','MOBILIER ADN, S.A. DE C.V.'),
          ('MAD150604BYA','MAD ARQUITECTURA Y DISENO, S.A. DE C.V.'),
          ('MAD180803F62','MEDIA AEREA DRONE SOLUTIONS DEL NOROESTE SA DE CV'),
          ('MADJ671218','JORGE LUIS MARTINEZ DIAZ'),
          ('MADV940411','VICTOR HUGO MARROQUIN DIAZ'),
          ('MAEG681218','GLORIA OLIVIA MARTINEZ ESTEBAN'),
          ('MAG150109JH2','MAGRUBER SA DE CV'),
          ('MAG220927BM3','MAGLIETTA SA DE CV'),
          ('MAGA810619','ALMA MARTINEZ GUZMAN'),
          ('MAGA950531','ALINE NEFERTARY MARTINEZ GARCIA'),
          ('MAGI721102','IRGER MANCHINELLI GARCIA'),
          ('MAGJ590930','JULIO MARQUEZ GARIBAY'),
          ('MAGJ680109','JULIETA MARIN GONZALEZ'),
          ('MAGM820214','MARIO VALENTIN MARTINEZ GARCIA'),
          ('MAGP820112','PILAR MARTINEZ GONZALEZ'),
          ('MAGT720516','MARIA TERESA MARTINEZ GONZALEZ'),
          ('MAHC790901','CLAUDIA IVONNE MATEOS HERNANDEZ'),
          ('MAHC851104','CARLOS MARTINEZ HURTADO'),
          ('MAHI930325','ISAIAS MARTINEZ HERNANDEZ'),
          ('MAHR701209','RICARDO HIRAM MAWCINITT HERNANDEZ'),
          ('MAI160728JU3','METHIAL AICO S.A. DE C.V.'),
          ('MAI900112RW2','MAINBIT S.A. DE C.V.'),
          ('MAK181030692','MAKORP SA DE CV'),
          ('MAL0305138V8','MEDICA ASIST LAB S.A. DE C.V.'),
          ('MAL220307UZA','MIRTO ALFIE SA DE CV'),
          ('MALF961015','FELIPE MARTINEZ LORENZO'),
          ('MAM2210136JA','MAGENTA AMEYALLI SC DE RL DE CV'),
          ('MAMA650529','ARTURO MARTINEZ MONTES'),
          ('MAMA750710','ANA PATRICIA MARTINEZ MONTANE'),
          ('MAMA770415','ANAYANCI MARTINEZ MARQUEZ'),
          ('MAMA860118','JOSE ARCADIO MARIN MARIN'),
          ('MAMB600321','BERTHA MILAGROS MARTINEZ MARTINEZ'),
          ('MAMC680729','CASANDRA MARTINEZ MEJIA'),
          ('MAMG740923','GUILLERMO LADISLAO MARTINEZ MARTINEZ'),
          ('MAMI940120','ITZEL KARINA MALDONADO MENDOZA'),
          ('MAMJ730907','JOSE DE JESUS MARTINEZ MOGUEL'),
          ('MAMK911107','KAREN VIRIDIANA MARQUEZ MONCADA'),
          ('MAMM720426','MARTIN MARTINEZ MOLINA'),
          ('MAMN930709','NANCY ELIZABETH MACEDO MEDINA'),
          ('MAMS860603','SAUL MARTINEZ MEZA'),
          ('MAN1604079A2','MULTISISTEMAS ANCOR, SA DE CV'),
          ('MAN161012GZ5','MANAO S.A. DE C.V.'),
          ('MANC740902','CRISTOBAL MARTINEZ NAVA'),
          ('MAOF680914','FRANCISCA MARTINEZ ORTIZ'),
          ('MAOK771210','KARINA MARTINEZ ORTIZ'),
          ('MAOM660411','MIGUEL ANGEL MARTINEZ OCHOA'),
          ('MAOS010608','SEBASTIAN ALEJANDRO MARTINEZ OSTOA'),
          ('MAP160728P91','MAPE+TZIN S.A. DE C.V.'),
          ('MAPF700817','FERNANDO MAYA PEREZ'),
          ('MAQ180706P51','MAQUIRUNNER S.A. DE C.V.'),
          ('MAR031010LX7','MARLARA SA DE CV'),
          ('MAR140225CF3','MARTERA, S. DE R.L. DE C.V.'),
          ('MAR170203RP4','MITRA ARQUITECTURA SA DE CV'),
          ('MAR190812BJ5','MARLOX SA DE CV'),
          ('MAR980202AE6','MAQUINADOS ASOCIADOS RODRIGUEZ SA DE CV'),
          ('MARC601123','CLEMENTE MATA RODRIGUEZ'),
          ('MARE710122','MARIA ELENA MAZON RAMOS'),
          ('MARE780122','EDGAR ROGELIO MARTINEZ RIVERA'),
          ('MARM650326','MARIO ALBERTO MARTINEZ ROMERO'),
          ('MARR740703','ROGELIO MARTINEZ RODRIGUEZ'),
          ('MAS140814P84','MAINTENANCE & SERVICES DYTECH SA DE CV'),
          ('MAS151125V41','MASSIVECALLER, S.A. DE C.V.'),
          ('MAS160510TF7','MMGL ASOCIADOS S.A. DE C.V.'),
          ('MAS171018KKA','METODOS APLICADOS EN SUPERVISION Y CONSTRUCCION DE OBRAS, S.A.S.'),
          ('MAS210820P88','MAYAQUEN ASESORAS S DE RL DE CV'),
          ('MAS230524IM1','MASG ARQUITECTURA Y SERVICIOS SA DE CV'),
          ('MASC671203','CLAUDIA MARTINEZ SALGADO'),
          ('MASF720525','FERMIN OCTAVIO MARTINEZ SANCHEZ'),
          ('MASG730331','GABRIEL MARTINEZ SANCHEZ'),
          ('MASJ661229','JORGE DAVID MARES SERVIN'),
          ('MASR671111','JOSE ROSALINO MATLACALA SANCHEZ'),
          ('MAT1807168E2','MATERIALESPUE, S. DE R.L. DE C.V.'),
          ('MAV231010T44','MAVKRA SA DE CV'),
          ('MAV940318Q30','MIRANDA, ARANA, VELASCO, S.C.'),
          ('MAVE870605','EDUARDO IGNACIO MARTINEZ VAZQUEZ'),
          ('MAVT630720','TADEO MANCILLA VARGAS'),
          ('MAVV540428','MARIA VICTORIA MARTINEZ VARGAS'),
          ('MAX160318FL3','MAXILUEM SA DE CV'),
          ('MAZC830822','CARLOS JAVIER MARES ZARATE'),
          ('MAZJ931024','JUAN CARLOS MARQUEZ ZUNO'),
          ('MAZM490328','MIGUEL ANGEL MARTINEZ ZAVALA'),
          ('MBA0603109F6','EL MUNDO DE LAS BATERIAS SA DE CV'),
          ('MBA151020R9A','MERCASA DEL BAJIO, S.A. DE C.V.'),
          ('MBA960229SJ9','MARTINEZ BARRANCO S.A. DE C.V.'),
          ('MBA991209JB1','MANUELL BARRERA Y ASOCIADOS SA DE CV'),
          ('MBC180208PV9','MORRIS BERMUDEZ CONSULTORES, S.C.'),
          ('MBS121115FP4','MEDINA BOMBAS SUMERGIBLES, S.A. DE C.V.'),
          ('MBU210727ML7','M-T BUSINESS SA DE CV'),
          ('MCA050930IR3','MIGUEL CABALLERO, S. DE R.L. DE C.V.'),
          ('MCA1311264X7','MEDIOS CATTRI, S.A. DE C.V .'),
          ('MCA151113JQA','MLM COMUNICACION Y ASESORIA JURIDICA SC'),
          ('MCA1706121KA','MAXIDISTRIBUIDORA CAANAN, S.A. DE C.V.'),
          ('MCA190403TB4','MENARI CONSULTORES Y ASOCIADOS, S. DE R.L. DE C.V.'),
          ('MCC190606FM5','MCCH66 SA DE CV'),
          ('MCE141218I92','MANTENIMIENTOS Y CONSTRUCCIONES ESPECIALES JJJ SA DE CV'),
          ('MCE170814T10','MEJORA CONTINUA Y ESPECIALIDADES, S. DE R.L. DE C.V.'),
          ('MCE9011162E3','MONCAYO CEDILLO, S.A. DE C.V.'),
          ('MCG950808JT9','MATERIALES DE CONSTRUCCION GRADA S.A DE C.V'),
          ('MCI040220IY8','MUSIC CLUB INTERNATIONAL S DE RL DE CV'),
          ('MCI100504I19','MANTENIMIENTO CORPORATIVO INTEGRAL AUTOMOTRIZ COMAIN S. A. DE C. V.'),
          ('MCI120926RY7','ML COMERCIO INDUSTRIAL SA DE CV'),
          ('MCI141218FI8','MULTISOLUCIONES COMERCIALES INTEGRALES Y TI SA DE CV'),
          ('MCL9201074D9','MACRO CLIM S.A. DE C.V.'),
          ('MCM071212NS8','MANTENIMIENTO Y CONSTRUCCIONES MALVIN S.A. DE C.V.'),
          ('MCM8906284HA','MC MICROCOMPUTACION, S.A. DE C.V.'),
          ('MCN180628V26','MANTENIMIENTO CORPORATIVO NLMH SA DE CV'),
          ('MCO081211BX0','MONERA COMUNICACION SC'),
          ('MCO0910131R5','MAZARE CONSTRUCCIONES SA DE CV'),
          ('MCO131114AAA','MERSY CORP, S.A. DE C.V.'),
          ('MCO161019VC1','MAIVSA DEL NORTE SA DE CV'),
          ('MCO180413258','MASERIC CONSTRUCCIONES SAS DE CV'),
          ('MCP080902PG2','MAGEDA CERAMICOS Y PORCELANATTOS, S.A. DE C.V.'),
          ('MCP231201G71','MANTENIMIENTO Y CONSTRUCCION PYR SA DE CV'),
          ('MCR2301258F9','MHPJ COLLISION REPAIR CENTER SA DE CV'),
          ('MCR2307156V5','MIEL DE LA CRUZ SC DE RL DE CV'),
          ('MCS101213GB5','MANTENIMIENTO Y CONSTRUCCIONES SALVIA SA DE CV'),
          ('MCT201111LQ8','MERAKI CTYC SA DE CV'),
          ('MCU201229CX1','MEXIBUS 4 SA DE CV'),
          ('MCZ130819S14','MATERIALES PARA LA CONSTRUCCION ZATULE SA DE CV'),
          ('MDA020422N82','MERCURY DATA, SA DE CV'),
          ('MDA230812G99','MANUALIDADES Y DECORACIONES ARTE MEXA SC DE RL DE CV'),
          ('MDB120716PW5','MEDIOS DIGITALES BE S.A. DE C.V.'),
          ('MDE040308893','MAS DEPORTES S.C.'),
          ('MDH230703HH4','MUEBLES DHO SC DE RL DE CV'),
          ('MDI121106JI9','MENSAJES DINAMICOS S DE RL DE CV'),
          ('MDI161018DE7','MAKIA DISTRIBUCIONES SA DE CV'),
          ('MDI220726QD2','MIKSAVANFRA DESARROLLADORA INMOBILIARIA SA DE CV'),
          ('MDI891030IH9','MEDICAL DIMEGAR, S.A. DE C.V.'),
          ('MDI931014D37','MAQUINAS DIESEL S.A. DE C.V'),
          ('MDI9507197Q6','MEGA DIRECT SA DE CV'),
          ('MDI991214A74','MILENIO DIARIO, SA DE CV'),
          ('MDL181002Q76','MODAS D.L. SC DE RL DE CV'),
          ('MDO1308224X3','MATERIALES DORGUES, S.A. DE C.V.'),
          ('MDR0704049N5','MDREIECK S.A. DE C.V.'),
          ('MDS140826ER9','MEGAWEB, DISENO DE SOFTWARE, MANTENIMIENTO, VENTA Y RENTA DE EQUIPOS DE COMPUTO, CONSUMIBLES Y EQUIPO DE OFICINA SA DE CV'),
          ('MDU850918SU1','MULTI - DUC S.A DE C.V.'),
          ('MEAA980531','ALITZEL LEILANY MEJIA AVILES'),
          ('MEC141021K54','MULTIDIVINORT, EXPORTACIONES Y CONSTRUCCIONES, S.A. DE C.V.'),
          ('MEC180301J9A','MECANICORE S.A. DE C.V.'),
          ('MECC590716','JOSE CARMEN MEDINA CERON'),
          ('MECI970405','IAN ARTURO MENDEZ CENTENO'),
          ('MECN790901','NORMA BELEN MEZA CORTES'),
          ('MECR580617','REYNALDA MENDOZA CANDIA'),
          ('MED050930EB8','MAT EDUCA, S.A. DE C.V.'),
          ('MED090630739','MEDINGENIUM S.A. DE C.V.'),
          ('MED111026J78','MEDIKAL-MUNERIS, S.A. DE C.V.'),
          ('MED180619DS0','MEDISULT SA DE CV'),
          ('MED200224UR9','MEDEASY S.A DE C.V'),
          ('MED9705163K2','MEDAM S. DE R.L. DE C.V.'),
          ('MED990811UU3','MEDIXSA, S.A. DE C.V.'),
          ('MEE070112RXA','MATERIALES ELECTRICOS EMSA, S.A. DE C.V.'),
          ('MEE130531E46','COMPANIA MUEBLERA EXCELENCIA EDUCATIVA, S.A. DE C.V.'),
          ('MEG210211TW3','MEGAFESELISO S DE RL DE CV'),
          ('MEG940526CV6','MEGAMED, S.A. DE C.V.'),
          ('MEGA570514','JOSE ANTONIO MEDINA GUTIERREZ'),
          ('MEGA990910','ADRIAN ALEJANDRO MENDOZA GONZALEZ'),
          ('MEGC700124','CLAUDIA MENDEZ GUZMAN'),
          ('MEGF970227','JOSE FRANCISCO MEDINA GARRIDO'),
          ('MEGM840127','MIRIAM MENDOZA GUTIERREZ'),
          ('MEHV880731','VIVIANA ALEXIA MENDEZ HERNANDEZ'),
          ('MEI070718GX1','MANTENIMIENTO E INSTALACION DE SISTEMAS ELECTRICOS Y COMUNICACIONES SA DE CV'),
          ('MEI101019LD7','MALSA EQUIPOS INDUSTRIALES S.A DE C.V'),
          ('MEIM550222','MARGARITA MENDOZA ITURBE'),
          ('MEJA711201','ARTURO MENDEZ JIMENEZ'),
          ('MEJJ980612','JOHAN VLADIMIR MEDINA JUAREZ'),
          ('MEJN691031','NEMESIO ALEJANDRO MENDEZ JIMENEZ'),
          ('MEK130213A16','MEKKARAIL SA DE CV'),
          ('MEL050909128','MELJCROM, S.A. DE C.V.'),
          ('MEL890707GJA','MATERIALES ELKA, S.A. DE C.V.'),
          ('MELA720908','ADELA MENDOZA LOPEZ'),
          ('MELA870411','ADALBERTO MENDEZ LOPEZ'),
          ('MELA910512','ADRIAN ROBERTO MEDINA LOPEZ'),
          ('MELE780202','ERICA DEL CARMEN MENDOZA LEAL'),
          ('MELE820321','MARIA EUGENIA MENDOZA LOPEZ'),
          ('MELV460728','VICTOR MANUEL MENDOZA LEIJA'),
          ('MEMJ760505','JUAN LUIS MENDOZA MARTINEZ'),
          ('MEMM690725','MARCOS JUAN CARLOS MENDEZ MARTINEZ'),
          ('MEOR650811','RAYMUNDO MEJIA OLGUIN'),
          ('MEP220914Q39','MTK EVENTOS Y PUBLICIDAD SAME TIME S DE RL DE CV'),
          ('MEPC701105','CARLOS ERNESTO MENDEZ PENA'),
          ('MEPL701013','LEYLA VALENTINA MENDEZ DE LA PAZ PEREZ'),
          ('MEQG940306','GABRIELA ALEJANDRA MENDOZA QUINTERO'),
          ('MER161103V74','MERCADAM S.A DE C.V.'),
          ('MER210323S26','MERCATORES SA DE CV'),
          ('MER210621AIA','MERCAPIB SA DE CV'),
          ('MERA730512','ALMA ROSA MENDOZA ROSAS'),
          ('MERD591008','DAVID GERARDO MERLOS RUBIO'),
          ('MERE780827','JOSE EDUARDO MEDINA RAMIREZ'),
          ('MES2002052H8','MYM ESPECIALISTAS EN SERVICIOS Y MANTENIMIENTO SA DE CV'),
          ('MESL901101','LIZBETH ARELI MENDEZ SANTOS'),
          ('MET090525UB6','METRINETWORK SA DE CV'),
          ('MET220629TZ8','METZMONT SC DE RL DE CV'),
          ('METG791021','GERARDO MENDOZA TAPIA'),
          ('METI730122','ISAIAS MEJIA TALAMANTES'),
          ('METL761219','JOSE LUIS MENDOZA TABLERO'),
          ('MEV150219DY0','MED EVOLUTION SAPI DE CV'),
          ('MEV990804MB5','MULTISERVICIOS Y EVENTOS S.A. DE C.V.'),
          ('MEVM940819','MIRIAM MEDINA VAZQUEZ'),
          ('MEVR720606','RAMIRO MEZA VANEGAS'),
          ('MEX9509068F4','MEXICAN EXPORTNET, S.A. DE C.V.'),
          ('MEYM780820','MARICELA MENDEZ YANEZ'),
          ('MEZA790721','ALEJANDRA MENDOZA ZETINA'),
          ('MFI131018573','MESCALINA FILMS S DE RL DE CV'),
          ('MGE010612QK4','MASS GEOSCIENCES SA DE CV'),
          ('MHS161013JR3','METRO HEALTH SERVICES, S.A. DE C.V.'),
          ('MHS840626BI9','MOLINO HARINERO SAN BLAS SA DE CV'),
          ('MHU1807262A2','MULTIBIS HURSUA, S.A. DE C.V.'),
          ('MIA080818341','MANTENIMIENTO INTEGRAL ALER DE MEXICO SA DE CV'),
          ('MIC100415435','MEN''S INTERNATIONAL COLLECTION SA DE CV'),
          ('MIC110509LM1','MICSE S.A DE C.V'),
          ('MIC230715366','MICTECACIHUATL SC DE RL DE CV'),
          ('MIC870515C72','MICROSCOPIOS S.A. DE C.V.'),
          ('MIC9611127P7','MICROSAFE SA DE CV'),
          ('MICO610126','OSCAR MIRANDA CHAVEZ'),
          ('MID1306043R9','METROLOGIA INTEGRAL Y DIAGNOSTICOS ELECTRICOS SA DE CV'),
          ('MID151203UC6','MECANICA INTEGRAL Y DINAMICA SA DE CV'),
          ('MIG140117692','MIGUEL A, S.A. DE C.V.'),
          ('MIGA840329','ANA LAURA MIRANDA GOMEZ'),
          ('MIGL880629','JOSE LUIS MIRANDA GUERRA'),
          ('MII180629DF6','MABE INGENIERIA INDUSTRIAL S.A. DE C.V.'),
          ('MIL091207GJ6','MILVOCES, SA DE CV'),
          ('MIM0811108T2','MAS INFORMACION CON MAS BENEFICIOS S.A. DE C.V'),
          ('MIM240528568','MEDAV INGENIERIA Y MANTENIMIENTO INTEGRAL SAS DE CV'),
          ('MIN030826LU4','MITSU INTERLOMAS, S.A. DE C.V.'),
          ('MIN080502SD9','MERCATUS INTERNACIONAL SA DE CV'),
          ('MIN1101219S3','MARDIC INGENIEROS S.A DE C.V.'),
          ('MIN1312097P8','MENCAMEX INDUSTRIAL S.A. DE C.V.'),
          ('MIN170223H32','MEXIT INFRAESTRUCTURA SA DE CV'),
          ('MIN2205093S2','MAWA INTEGRAL SA DE CV'),
          ('MIP150320QR2','MARKETING INTEGRAL PP SA DE CV'),
          ('MIRC840918','CHRISTIAAN MIRANDA ROMERO'),
          ('MIT140812BB8','MEDICAL IT S.A.P.I DE C.V.'),
          ('MJI230505944','MARCOS JD INGENIERIA SAS DE CV'),
          ('MLA190920833','MAGNO LAMBDA, S.A. DE C.V.'),
          ('MLC2206098C4','MAGNO LABORATORIO CLINICO SA DE CV'),
          ('MLI0610289M7','MR. LIMPIEZA S.A. DE C.V.'),
          ('MLL190207B29','COMERCIO Y LOGISTICA LEDZA SA DE CV'),
          ('MLU1310041X6','MULTISISTEMAS EN LIMPIEZA U&C S.A. DE C.V.'),
          ('MMA191108E18','MARSAN MANTENIMIENTO SA DE CV'),
          ('MMC0610127Z8','MIA MEXICANA DE CONSULTORES EN INGENIERIA Y ARQUITECTURA SA DE CV'),
          ('MMD2307269V5','MAHE MANTENIMIENTO Y DESARROLLO SAS DE CV'),
          ('MME050801N85','MG MEDICAMENTOS SA DE CV'),
          ('MME070126FLA','MAINEQ DE MEXICO, S.A. DE C.V.'),
          ('MME220823QN6','MBA MEZCLILLEROS SA DE CV'),
          ('MME780801FSA','MAICO DE MEXICO SA DE CV'),
          ('MME920427EM3','METLIFE MEXICO, S.A. DE C.V.'),
          ('MME9704157Q9','MF DE MEXICO, S.A. DE C.V.'),
          ('MMG890419AHA','MULTINACIONALES MARTINEZ GREY SA DE CV'),
          ('MMI0504014K0','MAXXIAMERICA MEXICO INDUSTRIAL SA DE CV'),
          ('MMI190509KU5','MOBILIARIOS MIFFLIN, S.A. DE C.V.'),
          ('MMM1408288E7','MOBIUS MEDICAL MEXICO, S.A. DE C.V.'),
          ('MMO161213R80','MCB MOTORES, S.A. DE C.V.'),
          ('MMP1703163I4','METROPOLITAN MOVING PACKAGES SA DE CV'),
          ('MMP200706TM9','MANTENIMIENTO MAAP PRODUCTOS SAS'),
          ('MMS0210147V2','MAFE MEDICAL SERVICE SA DE CV'),
          ('MMS080408J5A','MULTISERVICIOS MS S DE RL DE CV'),
          ('MMS210218M95','M&L MEDICAL SERVICES SA DE CV'),
          ('MMS220602NZ0','MS MEDICAL SUPPLIES S.A. DE CV'),
          ('MNA220815DMA','MOLES NAZARETH SC DE RL DE CV'),
          ('MNE980724MJ8','MVS NET, S.A. DE C.V.'),
          ('MNI230531IAA','MODA NIKTHE SC DE RL DE CV'),
          ('MNN170629PG0','MUTA 99 S.A DE C.V'),
          ('MOAM891124','MARIO ALBERTO MONTANO AYALA'),
          ('MOBA800801','ANABEL MONTES BERISTAIN'),
          ('MOBD860521','DIDIER MORENO BOLANOS'),
          ('MOBR590608','RODERICO MORALES BARTOLON'),
          ('MOCM650504','MONICA MONROY CRUZ'),
          ('MODF681029','FABIOLA MONTES DIAZ'),
          ('MOFL000312','LUIS MARIO MORA FRANCO'),
          ('MOGA630424','MARIA ALEJANDRA MONTERRUBIO GARCIA'),
          ('MOGA910429','ALEJANDRO MONERRIS GALLART'),
          ('MOGJ881005','JESICA ARIADNA MORALES GONZALEZ'),
          ('MOIA700410','MARIA DE LOS ANGELES MONTIEL ISLAS'),
          ('MOLA870302','ANTONIO BERNARDO MORALES LAZARO'),
          ('MOM9411042GA','M&A OIL CO DE MEXICO S.A. DE C.V.'),
          ('MOMA780407','ADRIANA MORALES MERCADO'),
          ('MOME810415','JOSE ELIAS MONTES MORA'),
          ('MOME830425','EDUARDO ALEJANDRO MORALES MUNOZ'),
          ('MOMJ840220','JONATHAN SAID MORALES MONTERRUBIO'),
          ('MOMY010720','YANN ARIEL MORENO MEJIA'),
          ('MON220928340','MONTGARRI SA DE CV'),
          ('MONL800203','JOSE LAZARO MONDRAGON NUNEZ'),
          ('MOPJ921102','JOSUE IVAN MONDRAGON PIMENTEL'),
          ('MORS920828','SANDRA LIZBETH MORENO ROMERO'),
          ('MOTJ870717','JONATHAN MALCO MORENO TOLENTINO'),
          ('MOV090827UU8','MOVIMEDICAL, S.A. DE C.V.'),
          ('MOV200928TG8','MOVURON SA DE CV'),
          ('MOZH890523','HECTOR GABRIEL MORALES ZAVALA'),
          ('MPC910220EX3','MANTENIMIENTO PREVENTIVO Y CORRECTIVO S.A. DE C.V.'),
          ('MPD1908083T6','MATERIALES PETREOS DON JUAN SA DE CV'),
          ('MPE020401RI7','MAXIMOTOS PEDREGAL, S.A. DE C.V.'),
          ('MPE2211034K5','MARQUESITAS LA PENINSULA SC DE RL DE CV'),
          ('MPE980514784','MAQUINADOS PROFESIONALES Y ESPECIALIZADOS, S.A. DE C.V.'),
          ('MPH050707HJ8','MEDICAL PHARMACEUTICA S.A. DE C.V.'),
          ('MPH1801119B4','MEDICAL PRECISION HEALTH C&MP SA DE CV'),
          ('MPM181106B11','MATERIALES Y PROCEDIMIENTOS DE MEXICO SA DE CV'),
          ('MPO130121K46','MENSAJE POLITICO S DE RL DE CV'),
          ('MPO211112NUA','MACH POWER S DE RL DE CV'),
          ('MPR120724RW8','COMPANIA MEXICANA DE PROTECCION S DE RL DE CV'),
          ('MPS050222UV3','METODOS Y PROCEDIMIENTOS SOSSA SA DE CV'),
          ('MPS1909107Q4','MATERIAS PRIMAS Y SEMILLAS SAN ROMAN SC DE RL DE CV'),
          ('MPU130508BI2','MAKE PUBLICITY SA DE CV'),
          ('MPU150821LYA','MEVEZ PUBLICIDAD SA DE CV'),
          ('MRA240729EI6','EL MUNDO DE LOS REGALOS ANNYLU SC DE RL DE CV'),
          ('MRE020410HT4','MEDICAL RECOVERY S.A. DE C.V.'),
          ('MRE170410P18','MAQUISERVICIOS RESANCIL, S.A. DE C.V.'),
          ('MRE911025QI5','MED RENT S.A.DE C.V'),
          ('MRM221122TK6','MULTISERVICIOS Y REFACCIONES MAZTER SA DE CV'),
          ('MRN201202SZ9','MAXIMA RECORD NEGOCIOS S DE RL DE CV'),
          ('MRO8509133I9','MARGEN ROJO, S.C.'),
          ('MRO940415BL0','MUEBLES ROAL SA DE CV'),
          ('MSA060629PI0','MENSAJERIA Y SERVICIOS ARROBA S.A. DE C.V.'),
          ('MSC1103018G8','MEDICA SANTA CARMEN S A P I DE CV'),
          ('MSC1507138X2','MEDERI SOLUTIONS CO. S.A. DE C.V.'),
          ('MSC170215V20','MANUFACTURAS SERKA CONTINENTALES, S.A. DE C.V.'),
          ('MSC191023QX9','MEXI SUPREMA CHIC SC DE RL DE CV'),
          ('MSD150227EPA','MEK 618 S.A DE C,V'),
          ('MSE100525EY1','MANPRO SERVICIOS SA DE CV'),
          ('MSI160418AJ0','MONAVI SISTEMAS, S.A. DE C.V.'),
          ('MSI221011MG5','M5 Y SOSA INSTALACIONES Y PROYECTOS ELECTRICOS SAS DE CV'),
          ('MSL1705123Y2','MULTI SOLUCIONES LAZHER SA DE CV'),
          ('MSM000331K72','MOODY S LOCAL MX SA DE CV INSTITUCION CALIFICADORA DE VALORES'),
          ('MSM090720NG9','METRO SOLARIS MEXICO, SA DE CV'),
          ('MSM200723HE7','MULTISERVICIOS SMILE MAX SA DE CV'),
          ('MSO041214E7A','MOORE OROZCO MEDINA, S.C.'),
          ('MSO201228Q78','MAIN SOURCE, S.A. DE C.V.'),
          ('MSS210524SX4','MOVE 76 SA DE CV'),
          ('MSS230421F49','M&I STORAGE SOLUTIONS SA DE CV'),
          ('MST0710315N0','MULTI SISTEMAS Y TECNOLOGIA S.A. DE C.V.'),
          ('MST1201266K9','MONTACARGAS Y SERVICIOS TOTALES SA DE CV'),
          ('MST191126S99','MIREL EL SABOR DE TU ELECCION SA DE CV'),
          ('MST230712J43','MJR STUDIO SC DE RL DE CV'),
          ('MSY220518S47','MST SYSTEMS SA DE CV'),
          ('MTA051013QM0','MARTINEZ TREVINO Y ASOCIADOS S.A. DE C.V.'),
          ('MTA190930DRA','MILESTONE TALLER DE ARQUITECTURA SC DE RL DE CV'),
          ('MTC150708I89','MANTIC TREE CONSULTING SC'),
          ('MTC1710249K4','MANTENIMIENTO TECNOLOGICO Y DE COMUNICACIONES MUTAP SAS DE CV'),
          ('MTD2310167ZA','MUJERES TRABAJANDO POR EL DEPORTE SC DE RL DE CV'),
          ('MTE150924MB9','MEDICA TEYCO S.A. DE C.V.'),
          ('MTE9909144K1','CREATIVIDAD E INTEGRACION EN SERVICIOS MEDICOS S.A. DE C.V.'),
          ('MTI150220UA2','MAN TICO, S.A. DE C.V.'),
          ('MTJ230706IT9','MOLINO Y TORTILLERIA JUANITOS SC DE RL DE CV'),
          ('MTM1012136B6','MARKET TREND MEXICO, S.A. DE C.V.'),
          ('MTN040706LVA','MTNET SERVICES SA DE CV'),
          ('MTS2302092V4','MEX-A 360 DISTRIBUIDORA Y COMERCIALIZADORA SA DE CV'),
          ('MTU771230BL4','OMNIBUS DE ALBA S.A. DE C.V.'),
          ('MTV760226G73','COMPANIA MEXICANA DE TRASLADO DE VALORES SA DE CV'),
          ('MUAS741004','SANDRO ALFREDO MUNOZ ANZURES'),
          ('MUFR530128','RAFAEL MUNOZ FRAGA'),
          ('MUGJ830808','JESAEL MUNGUIA GALLEGOS'),
          ('MUHJ910907','JULIO CESAR MUNOZ HUERTA'),
          ('MUL0107258Y4','MULTISENAL, S.A. DE C.V.'),
          ('MUL0711147NA','MULTIMEDIOS S.A. DE C.V.'),
          ('MUMF630826','FERNANDO MURILLO MEJIA'),
          ('MUNJ810915','JAVIER MUNOZ NAJERA'),
          ('MUP1011053G1','MOBILIARIO URBANO DE PLASTICO, SA. DE CV.'),
          ('MUPL990126','LUIS DANIEL MUNOZ PABLO'),
          ('MURM910223','MARTHA MUNOZ ROJO'),
          ('MUSI561014','IRMA MUNOZ SANCHEZ'),
          ('MUT060712DD8','METAL UTILITY, S.A. DE C.V.'),
          ('MUVA601025','MARIA DE LOS ANGELES MUNOZ VALENCIA'),
          ('MUX1610208Y1','MUXAYA,S.A. DE C.V.'),
          ('MVA230711F23','EL MARINERO VC ACAPULCO SC DE RL DE CV'),
          ('MVI140307P50','MEDICAL VIVE, S.A. DE C.V.'),
          ('MVI901119PR5','MARTINEZ VILLEGAS S.A. DE C.V.'),
          ('MXO030626G58','MODAS XOLOTZYN SC DE RL DE CV'),
          ('MYC000113M62','MYCARD, S.A. DE C.V.'),
          ('MZA230829RT8','MUJERES ZAPATISTAS & TLALPENSES S.P.R. DE R.L.'),
          ('NAC930927HK1','NATHAL ACTUARIOS Y CONSULTORES SA DE CV'),
          ('NAD221108BJ8','NATARDEX ADMINISTRADORES SA DE CV'),
          ('NAGB860112','BRENDA JATZIRI NAVARRO GARCIA'),
          ('NAI070928PY6','NASA ALTA INGENIERIA, S.A. DE C.V.'),
          ('NAJD700208','DELFINO NAVARRETE JIMENEZ'),
          ('NAOV880823','VICTORIA NANNI OLIVERA'),
          ('NASJ890123','JHOVANY NAPOLES SALDANA'),
          ('NAV9911121E0','NEGOCIOS AVANTE, S.A. DE C.V.'),
          ('NCE130716CY4','"NETA CERO", SOCIEDAD ANONIMA PROMOTORA DE INVERSION DE CAPITAL VARIABLE'),
          ('NCE941107Q87','NORMALIZACION Y CERTIFICACION NYCE, S.C.'),
          ('NCI090422GI9','NETWORKS CONSULTING AND INFORMATION SECURITY, SA DE CV'),
          ('NCL900821664','NEXOS-SOCIEDAD, CIENCIA Y LITERATURA SA DE CV'),
          ('NCT091124HJ8','NUEVA CHEIS TECNOLOGIA, S.A. DE C.V.'),
          ('NDL110512BN5','N4 DESIGN LAB SA DE CV'),
          ('NEC140318DRA','N&N EXPERTOS EN CONSTRUCCION S.A DE C.V'),
          ('NEI1207173G0','NEGOCIOS E IMPORTACIONES SIA SA DE CV'),
          ('NEI991223L3A','NEGOCIACIONES EMPRESARIALES INDUSTRIALES S.A. DE C.V.'),
          ('NEJA850324','ANA LILIA NERI JUAREZ'),
          ('NEO000526RY7','NEOLOGY, S. DE R.L. DE C.V.'),
          ('NEPG621008','GUADALUPE MARIBEL NEGRETE PATRICIO'),
          ('NER170104E51','NERCAMEX SA DE CV'),
          ('NER841126MD7','EL NERVION, S.A. DE C.V.'),
          ('NET0706259X2','NETSHELL S.A. DE C.V.'),
          ('NEU080526GV2','NEUTRATEC, S.A. DE C.V.'),
          ('NGE151001B43','NARASA GRUPO EMPRESARIAL SA DE CV'),
          ('NHI071008JY7','NEXT HQ INTEGRATION SERVICES SA DE CV'),
          ('NHO170614M8A','NEUMEDICA HOMECARE, S.A. DE C.V.'),
          ('NIAN820629','NAYELY NIEVES ATILANO'),
          ('NIBO920210','OSCAR NINO BERNAL'),
          ('NIC121018PL1','NICELA, S.A. DE C.V'),
          ('NIC1902228RA','NAB INGENIERIA Y CONSTRUCCION SA DE CV'),
          ('NIM110722S97','NEO INGENIERIA DE MOBILIARIO SA DE CV'),
          ('NIN070822711','NAVI INTERNACIONAL S. DE R.L.'),
          ('NIN070901EJ7','NABOHI INTERNACIONAL S.A. DE C.V.'),
          ('NIN091125IK3','NOGVER INGENIERIA S.A. DE C.V.'),
          ('NIO191218AG4','NIOHR S.A. DE C.V.'),
          ('NIRE610614','JOSE ELISEO NIEVES RODRIGUEZ'),
          ('NISA820624','ADOLFO ISAAC NIETO SOTO'),
          ('NIVR790411','RICARDO NIETO VELAZQUEZ'),
          ('NLT231130HJ5','NEXO LOGISTICO, TRANSPORTE Y COMUNICACION SAS DE CV'),
          ('NME090805237','NEOLINX DE MEXICO, S.A. DE C.V.'),
          ('NME170802UM0','NOVIGADO DE MEXICO S DE RL DE CV'),
          ('NME200611MG9','NET ME SAPI DE CV'),
          ('NME7304015T2','NEC DE MEXICO, S.A. DE C.V.'),
          ('NMP210218PU0','NETWORK MARKETING PRODUCTION SA DE CV'),
          ('NNM040713CM7','NOVO NORDISK MEXICO SA DE CV'),
          ('NNM060629M8A','NETJER NETWORKS MEXICO, S.A. DE C.V.'),
          ('NNM1410032T8','NOW NEW MEDIA SAPI DE CV'),
          ('NOD140214EI6','9 ONCE DISTRIBUIDORA S.A. DE C.V.'),
          ('NPA0704126T6','NANO PINTURAS Y ACABADOS CATALIZABLES SA DE CV'),
          ('NRE050823LY4','NAYAH REAL ESTATE SA DE CV'),
          ('NSE1706233K9','NXR SERVICIOS SA DE CV'),
          ('NSE230523TP0','NEGRA SEMILLA SC DE RL DE CV'),
          ('NSS1310016H1','ALNEAD CENTER SA DE CV'),
          ('NSS171130N36','NAAD SOLUTIONS SALES SA DE CV'),
          ('NSU1803052D0','NICHO SUSTENTABILIDAD URBANA SA DE CV'),
          ('NTR200327CR7','NUUKLEO TREUN S.A. DE C.V.'),
          ('NTS050128947','LA NUEVA TELEVISION DEL SUR, C.A.'),
          ('NTS1308166V4','NDMX TECNOLOGIA SERVICIOS Y CONSULTORIA SC'),
          ('NUB1210024EA','NUBECOM S.A DE C.V'),
          ('NUT920513ND2','NUTRIPAVO SA DE CV'),
          ('NVE160401DC0','NORMATIVIDAD Y VERIFICACIONES SA DE CV'),
          ('NWI230703IU6','NOBRUS WINGS SC DE RL DE CV'),
          ('NYO2307267Y5','NOVEDADES YOSELINE SA DE CV'),
          ('NZC220420U4A','NET ZERO CITIES S A P I DE CV'),
          ('OAC2304242Z7','OXLAJUJ ARQUITECTURA , INGENIERIA Y SERVICIOS SA DE CV'),
          ('OACO901203','OSCAR ORTA CASTELLANOS'),
          ('OACS870608','SAUL OCAMPO CAMPERO'),
          ('OAFR780305','REFUGIO OCAMPO FITZ'),
          ('OAGJ730911','JUAN GABRIEL ORTA GARCIA'),
          ('OAI161214M17','OPERADORA Y ADMINISTRADORA DE INFORMACION Y EDITORIAL, S.A. DE C.V.'),
          ('OAR190212NH6','O & R FEMARE SERVICIOS SA DE CV'),
          ('OAR190620GY3','ORTO ARA SC DE RL DE CV'),
          ('OAR191217PJA','OLINKA ARQUITECTURA S.A. DE C.V.'),
          ('OAV140211SE9','ORTIZ & VIVEROS CONSTRUCCIONES S.A. DE C.V.'),
          ('OBS0703089Q7','EL OBSERVADOR SA DE CV'),
          ('OCC061013LE3','OPERADORA COYOACAN DE CENTROS DE SALUD SA DE CV'),
          ('OCD090218RS3','OBRAS Y CONSTRUCCIONES DIARAM SA DE CV'),
          ('OCD2307285K8','OSHUN DE LA CDMX SC DE RL DE CV'),
          ('OCF060623E85','OBRAS CIVILES FARRET ASOCIADOS S.A. DE C.V.'),
          ('OCJ140708666','OCHO CONSULTORES DE JALISCO S.A. DE C.V.'),
          ('OCM070108ES4','OPERADORA COMERCIAL M S DE RL DE CV'),
          ('OCO1107209E0','OJIVA CONSULTORES, S.A. DE C.V.'),
          ('OCO1507017M8','OSVIC COMERCIALIZADORA, S.A. DE C.V.'),
          ('OCR200304V95','OCRID S.A. DE C.V.'),
          ('OCS150330TX9','OPERADORA COMERCIAL Y DE SERVICIOS GIEMMA SA DE CV'),
          ('OCV1212047N4','OVM CORPORATIVO VERSATIL SC'),
          ('ODI131219185','ODICALP SA DE CV'),
          ('ODI201229H64','OBLEKCOMP DIGICAST S.A. DE C.V.'),
          ('ODI9706069B3','OPERADORA DI, S.C.'),
          ('OEB1604265Y9','OPERADORA DE EVENTOS Y BANQUETES FLORENCIA SA DE CV'),
          ('OECI950720','ITZELTH ORTEGA CHAVEZ'),
          ('OECJ730203','JORGE OCCELLI CARRANCO'),
          ('OEGE750217','EDUARDO OJEDA GURROLA'),
          ('OEGV810827','VICTOR DANIEL OLVERA GARCIA'),
          ('OEI1411147K3','OCA ENSAYOS, INSPECCION Y CERTIFICACIONES MEXICO S.A. DE C.V.'),
          ('OEJA730719','ARCENIA ORTEGA JIMENEZ'),
          ('OELE751115','ENRIQUE OLVERA LANDAVERDE'),
          ('OERH791008','HUGO OCEGUEDA RUIZ DE ESPARZA'),
          ('OERJ800510','JAIME OLVERA RODRIGUEZ'),
          ('OERP641021','MARIA DEL PILAR ORTEGA RODRIGUEZ'),
          ('OES150716HT7','OPERADORA ESUASA SA DE CV'),
          ('OFE860318V58','O FARRILL EQUIPO PARA OFICINAS SA DE CV'),
          ('OFM110913JF1','OPERADORA DE FERROCARRIL Y MANEJO DE RELLENOS SA DE CV'),
          ('OGA170313PY4','OPERADORA GASMON SA DE CV'),
          ('OGM200305FL0','OCA GLOBAL MEXICO VERIFICACION Y CERTIFICACION S.A. DE C.V.'),
          ('OGM210413SZ5','OGMAR SA DE CV'),
          ('OGO0909299K8','ONE GOURMET S DE RL DE CV'),
          ('OGP060214H55','OPERADORA GAS PREMIUM, S.A. DE C.V.'),
          ('OHE061113QT4','OPERADORA HEDIS SA DE CV'),
          ('OHG160311L79','OPERADORA DE HOSPITALES GTM S.A.P.I. DE C.V.'),
          ('OIA160428I25','ORTHOPEDICA IMPLANTS & MEDICAL AND INNOVATION S.A DE C.V.'),
          ('OIAL661128','JOSE LUIS OLIVAS ALBA'),
          ('OIAR610922','JOSE ROBERTO OLIVA ALVAREZ'),
          ('OIBJ790821','JACINTO ISRAEL ORTIZ BALLESTEROS'),
          ('OIC231114N50','OMCAP INGENIERIA Y CONSTRUCCION SA DE CV'),
          ('OICA600102','MARIA AUXILIO ORTIZ CARRILLO'),
          ('OICT770610','TADEO ARMANDO ORTIZ CLEMENTE'),
          ('OID120209KU5','OBRAS  IDEALES SA DE CV'),
          ('OIEB690228','BEATRIZ SANDRA ORTIZ ESCAMILLA'),
          ('OIFR680321','ROSA MARIA OVIEDO FLORES'),
          ('OIGV760809','VERONICA ORTIGOZA GARNICA'),
          ('OIJE781127','ERIK ORTIZ JAIMES'),
          ('OIME960810','EYMI YAZMIN ORTIZ MARTINEZ'),
          ('OIN0808155L5','OLIN INFRAESTRUCTURA, S.A. DE C.V.'),
          ('OIPK970831','KEVIN GUILLERMO ORTIZ PACHECO'),
          ('OIX200811IN2','OMORFI 20I SA DE CV'),
          ('OIZD910924','DANIEL ORIHUELA ZAGAL'),
          ('OLA07022036A','OXENFORD LATINOAMERICA S.A. DE C.V.'),
          ('OLL2307037E8','OH LA LA LASHES Y BROWNS SC DE RL DE CV'),
          ('OLS221006AN9','EL OMBLIGO DE LA LUNA SOLUCIONES DE LIMPIEZA SC DE RL DE CV'),
          ('OME1310237E2','OFITODO MANTENIMIENTO EN EQUIPOS S.A. DE C.V.'),
          ('OMG210630Q87','ORIGINAL MEDIA GROUP SOCIEDAD ANONIMA DE CAPITAL VARIABLE'),
          ('OMG2302019M8','OFEM MEDIA GROUP OMG SA DE CV'),
          ('OMI0809106X7','OMIVAL S.A. DE C.V.'),
          ('OMR020305HK4','OK MARKETING RESEARCH, S.C.'),
          ('OMS2106119R7','OPERADORA MERCANTIL SEGMED, S.A. DE C.V.'),
          ('OMT9306023A6','OPERADORA MEXICANA DE TELEVISION S,A DE C.V.'),
          ('ONA1601194M4','ORO NEGRO ASFALTOS, S.A. DE C.V.'),
          ('ONA890406I57','ONACON S.A. DE C.V.'),
          ('ONL970307321','ONLINET S.A. DE C.V.'),
          ('ONO180206EV8','OBBA NI OLORUN COMERCIALIZADORA S.A. DE C.V.'),
          ('OOGL820928','LISEL LANDI OROZCO GOMEZ'),
          ('OOLE850613','ENRIQUE ANTONIO OSORIO LOPEZ'),
          ('OOMM631122','MARCO ANTONIO OCHOA MARTINEZ'),
          ('OOMR710430','RAFAEL OCHOA MALDONADO'),
          ('OOSJ790817','JORGE EDUARDO OSORIO SANCHEZ'),
          ('OOSY660406','YOLANDA OROPEZA SANCHEZ'),
          ('OOTA760411','ALEJANDRA OROZCO TORRES'),
          ('OPC901115CI8','OFIEQUIPOS PC SA DE CV'),
          ('OPE090303QU0','OPENSTOR SA DE CV'),
          ('OPG150707MU0','ORANGE PUBLISHING GROUP S.C.'),
          ('OPH1709147R9','ORANGE PHARMA SA DE CV'),
          ('OPI1607213R5','OPIT S DE RL DE CV'),
          ('OPR150513LV3','OMNI PRINTER S.A. DE C.V.'),
          ('ORA2003038V6','OPORTUNIDADES RAL, S.A. DE C.V.'),
          ('ORA220826314','OROPEZA Y RODRIGUEZ ASOCIADOS SA DE CV'),
          ('ORM071112L92','ORION REGISTRAR MEXICO SA DE CV'),
          ('OSA130409M48','OPERADORA SAFRAT, S.A. DE C.V.'),
          ('OSA220408HQ2','OBRAS Y SERVICIOS ASOCIADOS AURIGA SA DE CV'),
          ('OSE131022DS2','OMNIA SECURITA, S.A. DE C.V.'),
          ('OSE1703159X9','OPERADORA DE SERVICIOS DE ENTRETENIMIENTO KAPPA S.A DE C.V'),
          ('OSE200724PJA','ONE SHOT EVENTOS Y PRODUCCIONES S.A DE C.V.'),
          ('OSM160921I24','OPERADORA DE SERVICIOS MEDICOS ML, S.A. DE C.V.'),
          ('OSO181112KGA','OSR SOLUTIONS SA DE CV'),
          ('OSP101215S90','OKA SPORTS S.A DE C.V.'),
          ('OSS030908U29','OPERADORA DE SERVICIOS SM, S.A. DE C.V.'),
          ('OST9505115I6','OFI-STORE SA DE CV'),
          ('OTA150320MY6','OMP TECNOLOGIA & SERVICIOS SA DE CV'),
          ('OTC2110278I2','ORGANIZACION TECNOLOGICA Y CULTURAL SA DE CV'),
          ('OTM040607K75','IDEMIA MEXICO, S.A. DE C.V.'),
          ('OTO010706SH6','OT PROYECTOS Y SERVICIOS SA DE CV'),
          ('OTS220720TW7','OPERADORA TRES SANTIAGO SA DE CV'),
          ('OVE110714TX7','OVEISHON S.A DE C.V'),
          ('OVI0711078PA','OPERADORA VIVANCO S DE RL DE CV'),
          ('OWX230424A19','OFFSET W SA DE CV'),
          ('OXL220503B78','OXLIFE S.A. DE C.V.'),
          ('PAC1102013N0','PROMOTORA Y ASESORIA COMIN SA DE CV'),
          ('PAC210210MG2','PROYECTOS ARQUITECTONICOS 5 DE MAYO SA DE CV'),
          ('PAEL851230','JOSE LUIS PAZ ESQUIVEL'),
          ('PAG2110291S7','PAGGAAWA SA DE CV'),
          ('PAJF841006','FELIPE PACHECO DE JESUS'),
          ('PAL120109KDA','PTV AMERICA LATINA, S.A. DE C.V.'),
          ('PAL2103123M9','PROMOTORA ALDICAM S.A. DE C.V.'),
          ('PAL230630NT7','PILL ALERT SA DE CV'),
          ('PAM930405KY6','PRO AMBIENTE S.A. DE C.V.'),
          ('PAMI820824','ISRAEL PALACIOS MOTA'),
          ('PAMT551221','TOMAS PALACIOS MARTINEZ'),
          ('PAN230714617','PAPELERIA ANDYXEL SC DE RL DE CV'),
          ('PAN910613PB0','PAPELERA ANZURES, S.A. DE C.V.'),
          ('PANH780511','HUGO ENRIQUE PRAXEDIZ NUNEZ'),
          ('PAP02031125A','PROFESIONALES EN ADMINISTRACION PUBLICA, S.C.'),
          ('PAP140320IXA','PARTNERS & PEREZ SA DE CV'),
          ('PAP170628275','P&R ADMINISTRACION Y PROYECTOS SA DE CV'),
          ('PAP211019553','PAPABIS SAS DE CV'),
          ('PAPA940502','ALAN ISRAEL PALACIOS PINA'),
          ('PAPA970713','AMERICA PALACIOS PENA'),
          ('PAPP690831','PATRICIA PASTOR PERALTA'),
          ('PAR010704DV1','PARAMETRIA S.A. DE C.V.'),
          ('PAR041108DC8','PINTURAS DE ALTO RENDIMIENTO SA DE CV'),
          ('PAR101014M79','PARNASAMEX S.A. DE C.V.'),
          ('PAR1608152R0','PROYECTOS ARIAC S.A DE C.V.'),
          ('PARA680903','ARMANDO PANTALEON ROMERO'),
          ('PAT191202BP1','SOCIEDAD PATORT SA DE CV'),
          ('PAT220615KF9','PEREZ DE ALBA TRADE & DISTRIBUTIONS SA DE CV'),
          ('PATL631111','JOSE LUIS PARDO TAMES'),
          ('PAVR700726','ROCIO ARACELI PABLO VELA'),
          ('PAX150918BV5','PROYECTOS A3 SA DE CV'),
          ('PBJ070220EU1','PAPELERA BJ, S.A. DE C.V.'),
          ('PBM1011237L2','PUBLICIDAD BURDEOS, MARKETING CREATIVO SA DE CV'),
          ('PBM240612MG0','PALOMITAS Y BOTANAS MADDOX SC DE RL DE CV'),
          ('PBR210810FJ8','PRODISERV BIENES RAICES SA DE CV'),
          ('PBS150911853','PRESTADORA DE BIENES Y SERVICIOS FESKAL SA DE CV'),
          ('PBT040413CQ9','PAK BIOMEDLAND TECH CARE S.A. DE C.V.'),
          ('PCA210422R86','PROMOABASTECEDORA CAREMM SA DE CV'),
          ('PCC210715G29','PURITITO CORAZON CREACIONES ARTESANALES SC DE RL DE CV'),
          ('PCE160219KK1','PROYECTO CENTRICO, S. C.'),
          ('PCG130531H54','PROMOTORA Y COMERCIALIZADORA GLOBAL DE TECNOLOGIA SA DE CV'),
          ('PCI0607265U3','PROGRAMACION Y CONTROL INDUSTRIAL SA DE CV'),
          ('PCI190617956','PROACTION COMERCIAL INT S.A DE C.V.'),
          ('PCL061004A82','PROMOTORA DE CONSTRUCCION Y LIMPIEZA RENTBA SA DE CV'),
          ('PCL110516K48','PRECISION EN CORTES LASSER SA DE CV'),
          ('PCM130315HS1','PINTURAS COLEGIO MILITAR, S.A. DE C.V.'),
          ('PCM1705243S9','PTK COMERCIALIZADORA MEXICANA, S.A. DE C.V.'),
          ('PCO0006285S5','PROYEKTA CONSTRUCTORA, S.A. DE C.V.'),
          ('PCO031009J34','PEGUT CONSTRUCCIONES SA DE CV'),
          ('PCO050531M79','PROMOIMAGEN CORPORATIVA S,A. DE C,V.'),
          ('PCO080603JS6','PUBLICACIONES COMUNITARIAS S.A. DE C.V.'),
          ('PCO0908282H9','PROAUDIO COMERCIALIZADORA S DE RL DE CV'),
          ('PCO120724BP0','PROVEEDORA CONDADO S.A. DE C.V.'),
          ('PCO140207QL7','PATRIDAN COMERCIAL SA DE CV'),
          ('PCO180209DN5','PATRECO COMERCIALIZADORA, S. DE R.L. DE C.V.'),
          ('PCO18082419A','PINA & DURAN CONSULTORIA SA. DE CV.'),
          ('PCO191021SW0','COOPERATIVA PANIFICADORA LA CONCHITA SC DE RL DE CV'),
          ('PCO210421CP4','PEZAZUL COMERCIAL SAS DE CV'),
          ('PCO761025DL4','PILOTES DE CONTROL, S.A.'),
          ('PCO960118J39','PEAJES Y CONTROLES, S.A. DE C.V.'),
          ('PCO960910QK1','PROFESIONALES EN COMPUTACION SA DE CV'),
          ('PCO961015Q61','PC OMEGA S.A. DE C.V.'),
          ('PCR041126PR1','PROYECTOS Y CONSTRUCCIONES R-B-V, SA DE CV'),
          ('PCR1912038U5','PANADERIA CHUCHO LA RANA SC DE RL DE CV'),
          ('PCS190716687','PROYECTO, CONSTRUCCION Y SUPERVISION LP, S.A. DE C.V.'),
          ('PCT2103093X4','PUNTO CLAVE DE TUS IDEAS SA DE CV'),
          ('PCW090429JK2','PROFESIONALES EN COMERCIALIZACION WERDENE S.A. DE C.V.'),
          ('PDC020708G21','PDL 360 SA DE CV'),
          ('PDC041116D67','PROYECCION Y DISENO EN CONSTRUCCION SA DE CV'),
          ('PDC110704EI1','PROCESADORA Y DISTRIBUIDORA LOS CHANEQUES, S.A. DE C.V.'),
          ('PDC1509147Z3','PROSPER DISTRIBUIDORA Y COMERCIALIZADORA, S. DE R.L. DE C.V.'),
          ('PDD181218PYA','PROYECTOS Y DISENOS DOVAL SA DE CV'),
          ('PDI140924T71','PECUZ DIST S DE RL DE CV'),
          ('PDL200511F49','PRODUCCIONES Y DISENOS LENYT SA DE CV'),
          ('PDM190222UN2','PUBLICIDAD DIGITAL Y MEDIOS DE TABASCO SA DE CV'),
          ('PDR161027FL3','PLANEACION Y DESARROLLOS ROONE SA DE CV'),
          ('PDT1811266W1','PASTELERIA DULZOR TRADICIONAL SC DE RL DE CV'),
          ('PDU970701JY6','PINTURAS DURASOL, S.A DE C.V.'),
          ('PEA120330KH0','PROFESIONALES EN ENSENANZA ADIESTRAMIENTO Y CAPACITACION DE EXCELENCIA PEACE, S.C.'),
          ('PEB221107PM0','PROMOTORA DE EVENTOS Y BANQUETES ELENI SA DE CV'),
          ('PEBG580227','GUSTAVO MANUEL PEREZ BARRON'),
          ('PEC081111F28','PROFESIONALES EN ELECTROMECANICA, CLIMATIZACION Y SERVICIOS DE MANTENIMIENTO GRUPO XERIOUS S.A. DE C.V.'),
          ('PECA771207','ARTURO PEREZ CASTELLANOS'),
          ('PECM861027','MARTHA KARINA SARAI PENA CARRERA'),
          ('PECV891117','VICTOR MANUEL PEREZ COBOS'),
          ('PED1310292Y4','PROFESIONALES EN ESTRATEGIAS DE DESARROLLO JJ S.A DE C.V'),
          ('PED140331KM6','PEDALIER?S S.C.'),
          ('PEDJ761115','JORGE PEREZ DORANTES'),
          ('PEDX000316','AXEL EDUARDO PEREZ DURAN'),
          ('PEE160114138','PERIODICO ESPECIALIZADO EN ECONOMIA Y FINANZAS SA DE CV'),
          ('PEE990930JS6','PYROFETTI EFECTOS ESPECIALES, S. A. DE C. V.'),
          ('PEEC820510','CHRISTIAN MIGUEL PEREZ ESPINO'),
          ('PEEM870413','JOSE MIGUEL PEREZ ESQUIVEL'),
          ('PEG090807V88','PLANEACION Y ESTRUCTURAS GUDI SA DE CV'),
          ('PEHE960116','ENRIQUE ALEJANDRO PEREZ HERNANDEZ'),
          ('PEI080423A41','PROYECTOS E INGENIERIA CHRONOS S.A. DE C.V.'),
          ('PELC850906','CARLOS MANUEL PEREZ LARA'),
          ('PELS800113','SUSANA JANET PEREZ LETECHIPIA'),
          ('PELU620612','LUIS PENALOZA MOLINA'),
          ('PEMJ730320','JUAN PEREZ MAQUEDA'),
          ('PEMR441018','RAFAEL PEREZ MANCILLA'),
          ('PEMS760513','SALVADOR PEREZ MALDONADO'),
          ('PEN151123QY7','PUBLICA ENTERTAINMENT, S. A. DE C. V.'),
          ('PENA930529','AGUSTIN FERNANDO PENA NAVA'),
          ('PENX830224','EDER PEREZ NAVA'),
          ('PEPA910312','ANGELICA YADIRA PEREYRA PIEDRAS'),
          ('PERB810713','BIANCA PESCADOR RODRIGUEZ'),
          ('PERC830503','CHRISTIAN PEREZ ROBLEDO'),
          ('PERL660906','LISANDRA EVELYN PEREZ RODRIGUEZ'),
          ('PERO730325','OLGA LIDIA PERALTA RODRIGUEZ'),
          ('PERP900209','PABLO PENA RODRIGUEZ'),
          ('PERR720403','RICARDO ROMAN PENA ROJAS'),
          ('PERY820611','YANET SUSANA PEREZ RAMIREZ'),
          ('PES140206JC2','PAIDEIA ESTUDIOS SOCIALES Y DIGITALES SC'),
          ('PES150417E28','PAISAJE Y ESTRUCTURA SA DE CV'),
          ('PES240202E71','PRODUCTORA DE EVENTOS SISTEM EME SC DE RL DE CV'),
          ('PET170118G72','PETRICI S.A. DE C.V.'),
          ('PET2205025W8','PETRIGGIO S DE RL DE CV'),
          ('PET981215U6A','RGC SUPPLY, S.A. DE C.V.'),
          ('PEVA880324','ANA GABRIEL PEREZ VALENCIA'),
          ('PEVA960219','ALEJANDRO PEREZ VAZQUEZ'),
          ('PEX950214E7A','PRODUCTOS DE EXCELENCIA S.A DE C.V'),
          ('PEX961112RA5','PROMEX EXTINTORES S.A DE C.V.'),
          ('PFI901211EN7','PAN FIILLER, S.A. DE C.V.'),
          ('PFR231103IJ0','PONTE EN FORMA Y RESPIRA CLARO CUIDANDO TU ENTORNO SC DE RL DE CV'),
          ('PGA130909MQ8','PIGUDI GASTRONOMICO S.A DE C.V'),
          ('PGF110803FV4','PRO-FAJ HIDRO LIMPIEZA S.A. DE C.V.'),
          ('PGY200403SZ8','PROPOSAL GYSA, S.A DE C.V'),
          ('PHA950926AZ6','PHARMACUR, S.A. DE C.V.'),
          ('PHD170818QE6','PRODUCTOS HOSPITALARIOS DISTRIMED, S. DE R.L. DE C.V.'),
          ('PHM870907PP0','PARKER HANNIFIN DE MEXICO SA DE CV'),
          ('PHP160805360','PROMOTORA HIPER POWER S. DE R.L. DE C.V.'),
          ('PIA190404TK0','PTAH INFRAESTRUCTURA ARQUITECTONICA SA DE CV'),
          ('PIA190628RJ3','PROMOCIONALES E IMPRESOS AMERICA S.A DE C.V.'),
          ('PIC050217666','PROVEEDORA INTEGRAL EN COMERCIO TERCER MILENIO S.A. DE C.V.'),
          ('PIC0603132BA','PROYECTOS DE INGENIERIA Y CONSTRUCCION PEGASO SA DE CV'),
          ('PIC100412SI7','PICVA SA DE CV'),
          ('PIC210303NPA','PROYECTO INNO CONSTRU Y TECNO SA DE CV'),
          ('PICB960608','BRENDA LIZBETH PICHARDO CAMACHO'),
          ('PICL550721','MARIA DE LA LUZ PINEDA CEDILLO'),
          ('PID180724IW4','PROVEEDORA DE INSUMOS DIAZ OAXACA SA DE CV'),
          ('PID1808108U9','PUBLICIDAD IMPRESA Y DIGITAL, DIP SA DE CV'),
          ('PID210312D39','PARCO INGENIERIA Y DESARROLLO SA DE CV'),
          ('PIE040213899','PROVEEDORA INTEGRAL DE EMPRESAS, S.A. DE C.V.'),
          ('PIE040928RA1','PRODUCTOS INDUSTRIALES ELECTRICOS Y NEUMATICOS SA DE CV'),
          ('PIE070316F91','PROYECTOS INSTALACIONES ELECTROMECANICAS RG SA DE CV'),
          ('PIE190313LS7','PLANNEN IMPLEMENTACIONES EMPRESARIALES SC'),
          ('PIE820928A83','PROCESAMIENTO DE INGENIERIA ESTRUCTURAL, S.C.'),
          ('PIES930305','SILVIA PINEDA ESCOBAR'),
          ('PIG140711UQ7','PROMOTORA E INFRAESTRUCTURA GB, S.A. DE C.V.'),
          ('PIHL630423','JOSE LUIS PICAZO HERRERO'),
          ('PII041029HB2','PROVEEDORA DE INGENIERIA INSTALACION E INFRAESTRUCTURA, S.A. DE C.V.'),
          ('PIM0603084G0','PROVEEDORES INTEGRALES MEDINA, S.A. DE C.V.'),
          ('PIM0705114J8','PUBLICIDAD INTERACTIVA MANDARIN SA DE CV'),
          ('PIM1009074F9','PIMECSA SA DE CV'),
          ('PIM961128EU8','PROYECTOS INSTALACIONES Y MANTENIMIENTO ELECTROMECANICO SA DE CV'),
          ('PIMI921213','ITSEL VIRIDIANA PINEDA MENDEZ'),
          ('PIMJ950813','JAVIER LENIN PLIEGO MORALES'),
          ('PIMM811025','MIGUEL ANGEL PINA MARTINEZ'),
          ('PIN001024CS5','POLARIS INDUSTRIES S.A. DE C.V.'),
          ('PIN1105265X1','PALANKAR INGENIERIA S.A. DE C.V.'),
          ('PIN121127923','PLANET INFRAESTRUCTURA S.A. DE C.V.'),
          ('PIPB941017','BLANCA MARGARITA PINA PALACIOS'),
          ('PIR071218720','PIRCSA SA DE CV'),
          ('PIR8706295F3','PROVEEDORA DE LA INDUSTRIA RESTAURANTERA, S.A.'),
          ('PIRE850313','EMMANUEL PRIETO ROJO'),
          ('PIRS940604','SULIKEY NAIBELY PICAZO RAMIREZ'),
          ('PIRV040709','VANESSA PINA ROJAS'),
          ('PIS200129QA0','PROYECTOS EN INGENIERIA Y SERVICIOS INMOBILIARIOS GAUDI S.A. DE C.V.'),
          ('PIV220218CP3','PROCEDIMIENTOS INTELIGENTES DEL VALLE SA DE CV'),
          ('PIX190516TA3','PIXKITEC SA DE CV'),
          ('PJO2402071D4','PROYECTO JOTAEMEMUSIC SC DE RL DE CV'),
          ('PKA2304188G4','PAPELERIA KATHERINE SC DE RL DE CV'),
          ('PKS191014SF0','PRODUCCIONES KENDO STAR SC DE RL DE CV'),
          ('PLA001003GM8','PLASTINYEC S.A. DE C.V.'),
          ('PLA090914TJ9','PLAYCLUB, S.A. DE C.V.'),
          ('PLA200715AV6','PERFIL LATTICCE S DE RL DE CV'),
          ('PLC8912068K2','PLACAS DE LAMINA Y CALCOMANIAS OFICIALES S.A DE C.V.'),
          ('PLE9608124QA','PAPER LESS SA DE CV');

select * from tblProveedores
	where idStrRFCproveedor like 'PLE9608124QA';

select * from tblProveedores
	where idStrRFCproveedor like 'PLH86093081A';

--5o bloque de 1,000 proveesores
insert into tblProveedores(idStrRFCproveedor,
					        strRazónSocialProveedor)
	values('PLH86093081A','PAPELERIA LOZANO HERMANOS,S.A. DE C,V,'),
          ('PLL190702HP6','PROYECTOS Y LOGISTICA LEZMAR S DE RL DE CV'),
          ('PLR231013DU3','PL-RUTA24 SC DE RL DE CV'),
          ('PLS171129KM9','PANADERIA LA LUNA DE SAN GREGORIO SC DE RL DE CV'),
          ('PLS231207QT7','PRODUCTOS DE LIMPIEZA SHEZULMAD SC DE RL DE CV'),
          ('PLU100127RB3','PRODUCTOS LUDICA S.A. DE C.V.'),
          ('PMA060406NQA','POP MANUFACTURING SA DE CV'),
          ('PMA111213FE4','PROFESIONALES EN MANEJO, ASESORIA Y TRATAMIENTO EMPRESARIAL SA DE CV'),
          ('PMA850830G22','PROVEEDORA MEXICANA DE ARTICULOS DE CURACION Y LABORATORIO SA DE CV'),
          ('PMC190709CA5','PAQUETERIA Y MENSAJERIA CONSEGNE,S.A. DE C.V.'),
          ('PME020221GZ5','PROMEX MEXICANA, S.A. DE C.V.'),
          ('PME050509DE5','PHARMATH DE MEXICO, S.A. DE C.V.'),
          ('PME051206NG5','PUBLICACIONES METROPOLITANAS SAPI DE CV'),
          ('PME110722UH7','PLANMEDIA MEX S.A. DE C.V.'),
          ('PME1210241N5','DISENO Y EDIFICACIONES RAMKA S.A. DE C.V.'),
          ('PME140212SA5','PRW MEDICAL S.A. DE C.V.'),
          ('PME160404DF1','PICO MEDIA SA DE CV'),
          ('PME160701EHA','PROECOLIM DE MEXICO S.A. DE C.V.'),
          ('PME210510RV2','PROFESIONALES EN MANTENIMIENTO DE EQUIPOS PROME SA DE CV'),
          ('PME811211B20','PLUXEE MEXICO, S.A. DE C.V.'),
          ('PME970722H58','PROCABLES DE MEXICO, S. DE R.L. DE C.V.'),
          ('PMH1310319M7','PROGREDI MH S DE RL DE CV'),
          ('PMI190121Q43','PUBLICIDAD MAKE IT BIG S.A. DE C.V.'),
          ('PMI210913U62','PUBLICIDAD Y MEDIOS IMPRESOS 33 SC DE RL DE CV'),
          ('PMM090727C33','PRODUCTOS MEDICOS Y MATERIALES PARA LA SALUD S.A. DE C.V.'),
          ('PMS080625LS8','PROVEEDORA MEDICA SAMPERIO S.A. DE C.V.'),
          ('PMS811203QE6','PRODUCTOS METALICOS STEELE, S.A. DE C.V.'),
          ('PMY100128PGA','PROYECTOS MATERIALES Y ESTRUCTURALES, SA DE CV'),
          ('PNE191003443','PASTELERIA NECUHTIC SC DE RL DE CV'),
          ('PNV170907M99','PASS NOTICIAS, VIAJES Y NEGOCIOS SAS DE CV'),
          ('POC161202276','PROYECTOS Y OBRA CIVIL SOANA, S.A. DE C.V.'),
          ('POCC710516','CARMELA PORRAS CORNEJO'),
          ('POE2210247M2','PRODUCTORES DE ORIENTACION EMPRESARIAL SA DE CV'),
          ('POEA880314','ASZAEL DIDIER POZOS ESCALONA'),
          ('POG160614F18','PROMOTORA Y OPERADORA GAM STAR S.A. DE C.V.'),
          ('POL1203011L5','POLIACTIVE SA DE CV'),
          ('POM1408286W4','LA POLITICA ONLINE MEXICO SA DE CV'),
          ('POM950704NH3','PROYECTOS Y OBRAS DE INFRAESTRUCTURA DEL CENTRO SA DE CV'),
          ('POMG860608','GUADALUPE PONCE MATEOS'),
          ('POMJ670108','JORGE LUIS POSADAS MAGANA'),
          ('PONA700307','AMADO GUILLERMO POZO NAVARRO'),
          ('POR020529UI4','PORTAHIGIENICOS, S.A. DE C.V.'),
          ('PORO910928','OSCAR JOVANY PORTILLO REYES'),
          ('POS220610CS2','PINTURAS OSO SA DE CV'),
          ('POS2404036L3','PERCHEROS DE ORO SAMPER SC DE RL DE CV'),
          ('POZ200729S4A','COOPERATIVA POZOTITLAN SC DE RL DE CV'),
          ('PPA010301EI0','SOCIEDAD DE PRODUCTORAS Y PRODUCTORES AVENEROS Y TRANSPORTISTAS DE FORRAJES Y SEMILLAS PARRES TLALPAN S DE SS'),
          ('PPA110610UL3','PROVEEDORA PAES S.A. DE C.V.'),
          ('PPA1705097U4','PUNTOORC PRODUCCIONES Y ASOCIADOS SA DE CV'),
          ('PPD1002155Y2','PLADESU PLANEACION PARA EL DESARROLLO SUSTENTABLE, S.C.'),
          ('PPE140121LL1','PROMO PEDREGAL SA DE CV'),
          ('PPE170804IH5','PROYECO, PROYECTOS, EJECUCION Y CONTROL DE OBRAS S.A. DE C.V.'),
          ('PPE180607D96','PAPELERIA Y PUBLICIDAD ELITE SA DE CV'),
          ('PPE190502675','PREMIER PEAK SC'),
          ('PPO030220N40','PRODUCTORES DE PLANTAS ORNAMENTALES VIVEROS ESPINOSA SC DE RL DE CV'),
          ('PPO070725F64','PROFESSIONAL PHARMACY OCCIDENTE S.A DE C.V'),
          ('PPP121221CG9','PUBLICIDAD PROMOCION Y PRODUCCION SC'),
          ('PPP230717JM5','PEI PER PLEINS B&D SC DE RL DE CV'),
          ('PPR030314JZ0','AL PUNTO PROMOSERVICIOS SA DE CV'),
          ('PPS000308P34','PROYECTOS PRODUCTOS Y SERVICIOS INDUSTRIALES  S.A. DE C.V.'),
          ('PPS1909035Y5','PROVEEDORA DE PRODUCTOS Y SERVICIOS MALINOA SA DE CV'),
          ('PRA040907N61','PLASTICOS RACO S. DE R.L. DE C.V.'),
          ('PRA0803136P5','PARADA Y RAMIREZ, ASOCIADOS SC'),
          ('PRA130808QSA','PINTURAS Y RECUBRIMIENTOS ANAJOT S.A.  DE C.V.'),
          ('PRA180707KH3','PRAGFOR SA DE CV'),
          ('PRA180828884','PRANATEC SA DE CV'),
          ('PRA211217BM8','PRANTEK S.A. DE C.V.'),
          ('PRC1110175Q6','PROTOCOLOS REDES Y COMUNICACIONES SA DE CV'),
          ('PRE1711156G3','PROVEEDORA DE REFACCIONES Y EQUIPO VICAN, S. DE R.L. DE C.V.'),
          ('PRE190205S86','PREVEIR, S.A. DE C.V.'),
          ('PRE990204QN2','EL PALACIO DEL RESCATISTA S. A. DE C. V.'),
          ('PRI1905026Z6','PRIMANEXT S.A. DE C.V.'),
          ('PRM211004V16','P25 RED MEXICO SA DE CV'),
          ('PRM2307192J6','PASTELERIA Y REPOSTERIA MAVANI SC DE RL DE CV'),
          ('PRO0602033C7','PROPORLAND SA DE CV'),
          ('PRO0804072R0','PROMEXAR SA DE CV'),
          ('PRO1304166C6','PRODHEXAR SA DE CV'),
          ('PRO130830PR3','PRODILACSA, S.A. DE C.V.'),
          ('PRO1503278EA','PROINMETT S.A DE C.V.'),
          ('PRO1512165Q1','PRODISUR, S.A. DE C.V.'),
          ('PRO180702GL9','PROESP SA DE CV'),
          ('PRO190509NZ0','2+2 PROMOCIONALES, S.A. DE C.V.'),
          ('PRO190712IV1','PRODIO S.A. DE C.V.'),
          ('PRO820519TM6','PROQUIGAMA, S.A. DE C.V.'),
          ('PRO840423SG8','PROPIMEX S DE RL DE CV'),
          ('PRO9608304I6','PRODUCTOS ROCHE, S.A. DE C.V.'),
          ('PRU190529AF0','PRUVITY, S.A. DE .C.V.'),
          ('PRY030903KR4','PROYECTOS RESIDENCIALES YAMA SA DE CV'),
          ('PSA0804236U6','PRODUCTOS SALOMON S.A. DE C.V.'),
          ('PSA1510198D5','PNF SERVICIOS AMBIENTALES S.A. DE C.V.'),
          ('PSA190913DEA','PANADERIA SANTIN SC DE RL DE CV'),
          ('PSA2311096F2','PROVEEDORA DE SERVICIOS ADMINISTRATIVOS Y CONTABLES DEL PACIFICO S DE RL DE CV'),
          ('PSB221223LU8','PRODUCTOS Y SERVICIOS BANZANI SA DE CV'),
          ('PSC110314TLA','PROFESIONALES EN SERVICIOS DE CONTROL Y MANEJO DE PLAGAS S DE R.L. DE C.V.'),
          ('PSC210210CW9','PLATAFORMA SOCCER CRACKS S DE RL DE CV'),
          ('PSC211025CB0','PRESTADORA DE SERVICIOS COMERCIALES Y ESPECIALIZADOS ORMENE SAS'),
          ('PSE1410092F3','PROYECTS SEINCO SA DE CV'),
          ('PSE891129GS1','PRODUCTOS SEREL, S.A. DE C.V.'),
          ('PSI1402201B6','PRODUCTOS Y SERVICIOS INTEGRALES ESPECIALIZADOS XOCO SA DE CV'),
          ('PSI230807IWA','PURIFICADORA LAS SIRENITAS SC DE RL DE CV'),
          ('PSI890302K66','PERIFERIOS Y SISTEMAS S.A. DE C.V.'),
          ('PSK190708KG3','PREVENCION Y SOLUCIONES K-B SA DE CV'),
          ('PSL110210BC6','PRODUCTOS Y SERVICIOS LACARO S.A DE C.V'),
          ('PSM160301VA2','PERSISTENT SYSTEMS MEXICO SA DE CV'),
          ('PSN1711107C4','PROVISION DE SERVICIOS NECRON SA DE CV'),
          ('PSO140408AM7','PALMERSA SOLUTIONS SA DE CV'),
          ('PSO210129DS3','PROTECTION SYSTEM OVERALL COMPANY SA DE CV'),
          ('PSO210705KZ2','PLANETS SOLUTIONS SA DE CV'),
          ('PSP210618JE6','PROMOTORA SUSTENTABLE PANACEA S.C. DE R.L. DE C.V.'),
          ('PSS120607EA9','PROVEEDORA DE SOLUCIONES DEL SUR S.A. DE C.V.'),
          ('PSS1405223G8','PROVEEDORA DE SERVICIOS DE SALUD Y EQUIPO PARA HOSPITALES S.A. DE C.'),
          ('PSS150325L43','PRODUCTOS Y SERVICIOS SEVIRIZA S.A. DE C.V.'),
          ('PSS230825SU1','PIZZAS SHANY DE SAN PABLO SC DE RL DE CV'),
          ('PSS990127RE5','POWER SYSTEMS SERVICE, S.A. DE C.V.'),
          ('PST170922EU8','PKR SOLUCIONES TECNOLOGICAS S.A. DE C.V.'),
          ('PSU230709SY6','PAPELERIA SUXIEM SC DE RL DE CV'),
          ('PSU841201673','POLIETILENOS DEL SUR, S.A. DE C.V.'),
          ('PTE170724TZ4','POLMHERD TECHNOLOGIES SA DE CV'),
          ('PTI151101TE5','PEMEX TRANSFORMACION INDUSTRIAL'),
          ('PTO080526UNA','PROGRESO TOTOLTEPEC SC DE RL DE CV'),
          ('PTO160308SE0','PRIME TOP S A P I DE CV'),
          ('PTP2003112T2','PROFESIONALES EN TRANSPORTE PRO RIDE SA DE CV'),
          ('PTR080730J62','PREVISION DEL TRABAJO SA DE CV'),
          ('PTR950406QK1','PULLMAN TRAVEL, S.A. DE C.V.'),
          ('PTS080314NI7','PROFESSIONAL TECHNICIAN SERVICES, S.A. DE C.V.'),
          ('PTS141014RJ2','PROTECH 360 MEXICO S.A. DE C.V.'),
          ('PTS1506196K9','PRODUCCIONES TU SABE SA DE CV'),
          ('PUB1901153P2','PUBLICOM-NET, S.A. DE C.V.'),
          ('PUN9104057V2','PESA UNIFORMES SA DE CV'),
          ('PUN9810229R0','SI VALE MEXICO, S.A. DE C.V.'),
          ('PVT080430518','PROYEKTO 20 30, S.A. DE C.V.'),
          ('PXI130222DN1','PROVEEDORA XITLE ANAHUAC S.A. DE C.V.'),
          ('PYD070213446','PROYECTO Y DISENO TANGERINA SA DE CV'),
          ('PZA211116B23','PROYECTO ZAFIR S DE RL DE CV'),
          ('QAT900824CH1','QUINTA ARRIBA TRANSMISIONES Y DIFERENCIALES SA DE CV'),
          ('QCL1612202X2','QUIMICA CLARIMEX SA DE CV'),
          ('QCT210518IG3','QUARA COMUNICACIONES Y TECNOLOGIA, S.A. DE C.V.'),
          ('QEN240222J3A','QUIKA ENERGY S DE RL DE CV'),
          ('QIN221107M95','QICHAO INTERNATIONAL SA DE CV'),
          ('QIN830721DP9','QIMO INTERCONTINENTAL, S. A. DE C. V.'),
          ('QMG061108N30','QUANTUM MEDICAL GROUP, S.A. DE C.V.'),
          ('QMR230517PK1','QUANTUM MANTENIMIENTO Y REPARACION EN GENERAL SA DE CV'),
          ('QMS061004V2A','QUALITY MEDICAL SERVICE, SA DE CV'),
          ('QPI151008ER6','QUALITY PRO IMPORT, SA DE CV'),
          ('QPL980424K9A','Q PLUS S.A. DE C.V.'),
          ('QPT120521SA6','QUALITY PRO TRANSLATIONS, SA DE CV'),
          ('QSE141010V49','Q&A SERVICES S.A DE C.V.'),
          ('QSQ170830HN9','QITSA SOLUCIONES QUIMICAS, S.A. DE C.V.'),
          ('QUCL630506','LEO GABRIEL QUIROZ CHOPERENA'),
          ('QUCV730316','VICTOR QUINTERO CORTES'),
          ('QUHJ711021','JAIME AGUSTIN QUINTANAR HELGUEROS'),
          ('QUI220714BZ1','QUIRORT SA DE CV'),
          ('QUI830214R52','QUIMIVER, SA DE CV'),
          ('QULM520118','MIGUEL ANGEL QUEZADA LUGO'),
          ('QULM860331','MEGUMI MIDORI LIBIA QUINTERO LOPEZ'),
          ('QUM200224L51','QUERETANOS URBANIZANDO MEXICO SA DE CV'),
          ('QZA200828NE1','QUINTA ZACATEPEC SA DE CV'),
          ('RAAY791116','YIZA LIZETHE RAMIREZ AYALA'),
          ('RAC2306083N9','REPOSTERIA Y ANTOJITOS CUAUHTENCO SC DE RL DE CV'),
          ('RAEJ780123','JUANA IRIS RAMOS ESLAVA'),
          ('RAFF620419','FRANCISCA GUADALUPE RAMIREZ FLORES'),
          ('RAG070621553','RAGYC SA DE CV'),
          ('RAGA660104','ANTONIO RAMIREZ GUTIERREZ'),
          ('RAGR720630','ROGELIO RAMIREZ GUERRERO'),
          ('RAI171218FJ9','RGM ARMOR INTERNACIONAL SA DE CV'),
          ('RALA640602','ANA MARIA RAMIREZ LOPEZ'),
          ('RALG750221','MARIA GUADALUPE RAMOS LEPE'),
          ('RALW920429','WENDY MONSERRAT RAMIREZ LOPEZ'),
          ('RAM2306267Q8','RESTAURANTE AROMA DE LA MONTANA JC SC DE RL DE CV'),
          ('RAMA750521','JOSE ANTONIO RAMIREZ MEJIA'),
          ('RAMH650505','HILARIO RAMIREZ MORENO'),
          ('RAML710121','LUIS ADRIAN RAMIREZ MOCTEZUMA'),
          ('RAOA000217','ANDREA DORIA RAMIREZ OLMOS'),
          ('RAP191129APA','RADAR APP S.A.P.I. DE C.V.'),
          ('RAPF560822','FILIBERTO RAMIREZ PEREZ'),
          ('RAPM860426','MARCIAL OCTAVIO RAMIREZ DE LA PENA'),
          ('RAR0709279U8','RBY ARQUITECTOS, S.A. DE C.V.'),
          ('RARE990627','EDGAR ISAIAS RAMIREZ RANGEL'),
          ('RARJ481207','J. EUQUIMIO RAMIREZ RODRIGUEZ'),
          ('RARL691111','LEONARDO RAMIREZ ROMERO'),
          ('RAS2205043F6','SOCIEDAD RIOS & SHROEDER SA DE CV'),
          ('RAS221107N46','RMS & SONS SA DE CV'),
          ('RATE871118','EDUARDO RAMON TREJO'),
          ('RAU030408SK8','RODADIESEL AUTOMOTRIZ, S.A. DE C.V.'),
          ('RAU1612064M4','ROSCOR AUTOMOTRIZ SA DE CV'),
          ('RAVR770115','RODRIGO RAMOS ELORDUY VILLELA'),
          ('RAY230504E52','RAYTOK SA DE CV'),
          ('RAYS961002','SANDRA ITZEL RAMOS YBARRA'),
          ('RAZA890224','AURORA MADELINE RAMOS ZAMUDIO'),
          ('RBB110720F39','RECREATEC BB SA DE CV'),
          ('RBI230209CY6','RMV BIO SA DE CV'),
          ('RBO240503QA5','RACCON BOTANAS SC DE RL DE CV'),
          ('RCA201105CLA','RELEVIUM CARE S.A. DE C.V.'),
          ('RCA2308071PA','RESTAURANTE Y CAFETERIA EL AJOLOTE SC DE RL DE CV'),
          ('RCC091112EI9','ROMA Y CONDESA CONSULTORES SC'),
          ('RCE191113UY1','RESTAURANTE CAFETERIA EDUROSAN SC DE RL DE CV'),
          ('RCE191202TV2','REAL CONSTRUCTION AND ENGINEERING S.A DE C.V.'),
          ('RCI160311CJ0','RESTAURA CONSERVACION INMUEBLE SA DE CV'),
          ('RCL2312142H6','REBE CARE OF LIFE SC DE RL DE CV'),
          ('RCO010901MP3','RAGAMEX CONSTRUCTORES SA DE CV'),
          ('RCO020422431','LA RED CORPORATIVO S.A DE C.V'),
          ('RCO040910D53','REM COMUNICACION SA DE CV'),
          ('RCO090225NTA','RUYIRO CONSTRUCTORA S.A DE C.V'),
          ('RCO140324542','ROMICA CONSTRUCCIONES SA DE CV'),
          ('RCO181106GJ2','ROJJER CONSULTORES S.A. DE C.V.'),
          ('RCO220812UZ4','RWOLF CONSTRUCTORA SA DE CV'),
          ('RCR1811161S3','RANCHO CROM SC DE RL DE CV'),
          ('RCS161128C26','ROAL CUERVO SERVICIOS S.A. DE C.V.'),
          ('RCU211013JA0','RM CUSTOM, S.A. DE C.V.'),
          ('RDI1409266B0','ROCKS DIGITAL S A P I DE CV'),
          ('RDI841003QJ4','RADIOMOVIL DIPSA SA DE CV'),
          ('RDL160129LB0','RECURSOS DINAMICOS Y LIDERAZGO, S.A. DE C.V.'),
          ('RDS220425GM0','RED DIGITAL SEGURIDAD, TECNOLOGIA Y COMUNICACION SAS DE CV'),
          ('RDU091110BN2','RECREO DESARROLLO URBANO, S.A. DE C.V.'),
          ('RDV970721A39','RECONSTRUCTORA DIESEL VALSAN S.A. DE C.V.'),
          ('REC211126K24','SERVICIO INTEGRAL TECNICO DE AERONAVES SA DE CV'),
          ('REC9901064W1','RECUPER SA DE CV'),
          ('RECA800801','MARIA DE LOS ANGELES REYES CABRERA'),
          ('RECG621122','GERARDO REYES CERRITOS'),
          ('RECJ880106','JOSE JUAN RENTERIA DE LA CRUZ'),
          ('RECS710817','SERGIO YONY REYES CEDILLO'),
          ('REG160602B19','REGUICA SA DE CV'),
          ('REGS711018','SILVIA REGALADO GODINEZ'),
          ('REM8810176J7','RADIOLOGIA Y ELECTRONICA DE MEXICO, S.A. DE C.V.'),
          ('REMG771220','GREGORIA REYES MARTINEZ'),
          ('REN2210122B4','RENCERVID SC DE RL DE CV'),
          ('REOO980731','OLINDA PAOLA REYES ORTEGA'),
          ('REPA610321','AGUSTIN REYES PEREZ'),
          ('RERA890709','ARCELIA NOEMI REYES RODRIGUEZ'),
          ('RERD851104','DANIEL MAURICIO REYNADA RAMOS'),
          ('RERO830417','OSCAR REYES ROJAS'),
          ('RESE970212','ENRIQUE GABRIEL REYES SUAREZ'),
          ('RET130808TL2','RECORRIENDO EN TERRITORIO NACIONAL SA DE CV'),
          ('REVE870220','EDUARDO RAFAEL REYES VAZQUEZ'),
          ('REVO730322','JOSE OCTAVIO REYES VARGAS'),
          ('REY161213HGA','REYLAZ S.A. DE C.V.'),
          ('RGE230522CQ7','RESMA GEMINIS SAS DE CV'),
          ('RGR100322I38','REQUERIMIENTOS GLOBALES ROSAL, S.A. DE C.V.'),
          ('RHA230420GL6','RHAMNOSE SA DE CV'),
          ('RIAJ670319','JOSE RICO ALONSO'),
          ('RICA630706','JOSE ALFREDO RIVERA CALDERON'),
          ('RICC441205','CRISPIN RIVERA CARRILLO'),
          ('RICG480229','MARIA GUADALUPE RIVERA CASTREJON'),
          ('RICG751124','GUADALUPE GILDA RIVAS CORTES'),
          ('RID200608RU9','RIDAAG, S.A. DE C.V.'),
          ('RIGF650816','FILIBERTO RIVERA GUZMAN'),
          ('RIGJ870227','JUAN RIVERO GUERRERO'),
          ('RIHI730602','ISMAEL RIVERA HERNANDEZ'),
          ('RIL091206U83','CAVSA MCL SA DE CV'),
          ('RIM190328L37','RR IMPRESOS SA DE CV'),
          ('RIMJ510621','JESUS RIOS MARTINEZ'),
          ('RIML870603','LUIS FABIO RIVERA MORA'),
          ('RIMM871210','MARISOL RIVERA MORALES'),
          ('RIMR720319','JOSE RAUL RIVERA MARTINEZ'),
          ('RIN040823510','ROCHER INGENIERIA, S.A. DE C.V.'),
          ('RIN130322FEA','REACTOR INGENIERIA SA DE CV'),
          ('RIN1511036L7','ROKAL INFRAESTRUCTURA SA DE CV'),
          ('RIN200528SJ3','RECICLALO INNOVACION SOCIAL SA DE CV'),
          ('RIN890824FMA','RETO INDUSTRIAL S.A. DE C.V.'),
          ('RIN930127G69','ROCISE INTERNACIONAL, S.A. DE C.V.'),
          ('RIOG700303','GABRIELA DEL RIO OLAGUE'),
          ('RIP211020SV5','R3 INVESTIGACIONES PERIODISTICAS SA DE CV'),
          ('RIP230714C54','RODMAR IMPRESION Y PUBLICIDAD SC DE RL DE CV'),
          ('RIPJ880404','JORGE RIOS PACHECO'),
          ('RIPM721225','MAGDALENA DEL RIO PARTIDA'),
          ('RIRC830205','CLAUDIA RICO RAMOS'),
          ('RIT140613IX9','RCUBICA IT S.A DE C.V'),
          ('RITA571003','JOSE ANTONIO RIVERA TREJO'),
          ('RJA230808NJ9','EL RINCON DE LA JACARANDA SC DE RL DE CV'),
          ('RJD920618NC0','R.J.D. ASOCIADOS S.C.'),
          ('RJO1905145R6','RANCHO JOSHUA SC DE RL DE CV'),
          ('RJX150220BU8','R3J3 SA DE CV'),
          ('RLV110413SG6','REFACCIONARIA Y LUBRICANTES VERNALDO SA DE CV'),
          ('RMA1212193Q2','ROYAL MANCHURIAN SA DE CV'),
          ('RMA180524SQ1','ROKKA MAYORISTA SA DE CV'),
          ('RME000724TW7','RBP METALURGIA S.A. DE C.V'),
          ('RME1301216Q7','RCTI DE MEXICO S. DE R.L. DE C.V.'),
          ('RME150211EK2','REBSTOCK MEXICO S.A. DE C.V.'),
          ('RME2112147B1','RAISE MEXICO SA DE CV'),
          ('RME910124M26','RADIOCOMUNICACION MANTENIMIENTO Y EQUIPO, S.A. DE C.V.'),
          ('RME9712052T0','RISO DE MEXICO SA DE CV'),
          ('RMM030114R48','RECY METALES DE MEXICO S.A. DE C.V.'),
          ('RMT840830GV1','RECONSTRUCCION Y MANUFACTURA EN TRANSPORTES SA DE CV'),
          ('RNE220719GB0','ROSA NEW S DE RL DE CV'),
          ('ROAA970401','ANDRES ROSAS AVINA'),
          ('ROAB880511','BRENDA ROJAS ARANDA'),
          ('ROAD920728','DANIEL ALEJANDRO ROLDAN ALMARAZ'),
          ('ROAI041024','INGRID RODRIGUEZ ANGELES'),
          ('ROAL710107','LUCIA RODRIGUEZ ALVISO'),
          ('ROAM930116','MARIANO AURELIO RODRIGUEZ ARIAS'),
          ('ROBD730205','DAVID CARLOS ROMERO BACCONNIER'),
          ('ROBL770425','LUIS IGNACIO ROSALES BARRIOS'),
          ('ROBR770503','ROSA MARIA ROSAS BERISTAIN'),
          ('ROC130508460','ROCHASA, S.A. DE C.V.'),
          ('ROC210316V21','REDISTRIBUCION ORGANIZACIONAL PARA EL CONSUMIDOR S DE RL DE CV'),
          ('ROC990413JM0','ROCVA SA DE CV'),
          ('ROCC680128','CESAR RODRIGUEZ CERVANTES'),
          ('ROCD650222','DAVID RODRIGUEZ CARDOSO'),
          ('ROCE840701','MARIA ESTHER RODRIGUEZ CABRERA'),
          ('ROCK910912','KARLA VERONICA RODRIGUEZ CHAVEZ'),
          ('ROCM860821','MARCO ANTONIO ROMERO CASTRO'),
          ('RODB840314','BRENDA YOLANDA RODRIGUEZ DIAZ'),
          ('ROEM840504','MONICA LUCIA RODRIGUEZ ESTRADA'),
          ('ROFG810707','GISEL YAROSLIF RODRIGUEZ FRANCO'),
          ('ROGA880802','ANA PAOLA ROSALES GONZALEZ'),
          ('ROGF740804','FRANCISCO JAVIER RODRIGUEZ GUERRERO'),
          ('ROGJ800905','JORGE ARMANDO ROCHA GUTIERREZ'),
          ('ROGK870211','KARLA FABIOLA RODRIGUEZ GARCIA'),
          ('ROGL860811','LESLY ANTONIA RODRIGUEZ GARCIA'),
          ('ROGV760421','VICTOR ALEJANDRO ROSALES GARCIA'),
          ('ROHG590323','GUSTAVO FIDEL ROJAS HERNANDEZ'),
          ('ROHG640712','GILBERTO GUSTAVO ROMERO HERNANDEZ'),
          ('ROHL770111','LUIS ROMERO HERNANDEZ'),
          ('ROI1810086S3','ROIDI SA DE CV'),
          ('ROJM870727','MARTHA DEL CARMEN RODRIGUEZ JIMENEZ'),
          ('ROLA700508','JOSE ANTONIO RODRIGUEZ LADRON DE GUEVARA'),
          ('ROLI750426','IVAN ALEJANDRO RODRIGUEZ LIZARRAGA'),
          ('ROLM841026','MANUEL DE JESUS RODRIGUEZ LAGUNES'),
          ('ROM190529JZ8','ROMES-CONSTRUARTE, SOCIEDAD ANONIMA DE CAPITAL VARIABLE'),
          ('ROMB830525','BENITO DE LA ROSA MEDINA'),
          ('ROMD840708','DIEGO RODRIGUEZ MONTALVO'),
          ('ROMF880311','FERNANDO DAVID RODRIGUEZ MEZA'),
          ('ROMG651127','GRACIELA LORENA ROCHA MADRID'),
          ('ROMJ820419','JUAN ROJAS MENDEZ'),
          ('ROML930830','LADY JANETH ROBLES MARTINEZ'),
          ('ROMO790727','ODETH RODRIGUEZ MARES'),
          ('ROMP590808','PABLO RODRIGUEZ MORENO'),
          ('ROMT650830','TOMAS ROSALES MARTINEZ'),
          ('ROOA700311','ALEJANDRO RODRIGUEZ OROZCO'),
          ('RORD770906','DAYHANA TERESITA ROSADO RAMIREZ'),
          ('RORG590201','MA GUADALUPE ROBLEDO RICARDO'),
          ('RORJ830711','JUAN CARLOS ROBLES RUMBO'),
          ('RORM900712','MIGUEL ANGEL ROSAS RODRIGUEZ'),
          ('RORR860627','ROBERTO RODRIGUEZ RAMIREZ'),
          ('ROS0602073KA','ROSPLAN, S.A. DE C.V.'),
          ('ROS200824HB4','COOPERATIVA ROSALINO Y COMPANIA SC DE RL DE CV'),
          ('ROSM680626','MINERVA RODRIGUEZ SANCHEZ'),
          ('ROSR690127','RICARDO RODRIGUEZ SEGURA'),
          ('ROSS881121','SERGIO ANTONIO ROJAS SANCHEZ'),
          ('ROT2202015L8','ROTERSON, S.A. DE C.V.'),
          ('ROVL610811','LUIS ROA VEGA'),
          ('ROVV720707','VERONICA RODRIGUEZ VIVEROS'),
          ('ROVZ830227','ZAIRA NAYIB RODRIGUEZ VAZQUEZ'),
          ('ROZG601212','MARIA GUADALUPE RODRIGUEZ ZAMORA'),
          ('RPA211210HR4','RIVERA PADILLA Y ASOCIADOS CONTADORES PUBLICOS S.C.'),
          ('RPI130308RL4','REIKI PROMOTORA INMOBILIARIA SA DE CV'),
          ('RPM080304IZ4','RTC PUBLICIDAD Y MANTENIMIENTO MOVIL DE MEXICO SA DE CV'),
          ('RPS070921JR9','REAL POWER SYSTEMS MEXICO S.A. DE C.V.'),
          ('RPT990203RI5','REMOLQUES Y PLATAFORMAS DE TOLUCA S.A. DE C.V.'),
          ('RPU150618EX5','RH DEL PUERTO SA DE CV'),
          ('RPU190531CG6','RHINO PORT UNLIMITED S.A. DE C.V.'),
          ('RPX200812C8A','RADIO PUBLICIDAD XHMEXICO, S.A. DE C.V.'),
          ('RRE1711097Z2','RUIDO EN LA RED SA DE CV'),
          ('RSC160229FM3','RECNO SOLUCIONES EN TECNOLOGIA S.A. DE C.V.'),
          ('RSI140306A28','ROCK SOIL INGENIERIA GEOTECNICA SA DE CV'),
          ('RSI2303108E8','REDIIS SIGLO XXI SA DE CV'),
          ('RSM1509292Q8','REMI SERVICIO MEXIQUENSE SA DE CV'),
          ('RSM230811TH5','RELAA SERVICIOS EN MANTENIMIENTO ESPECIALIZADO PARA LA INDUSTRIA MEXICANA SA DE CV'),
          ('RSO0601167F9','REMA SOLUTIONS, S.A. DE C.V.'),
          ('RSO110727BG3','R3M SOLUCIONES S.A DE C.V'),
          ('RSO130308BF8','RIPER SOLUTIONS S.A. DE C.V.'),
          ('RSO181106QI4','RIJO SOLUCIONES S.A. DE C.V.'),
          ('RST140517D48','RED SINERGIA DE TELECOMUNICACIONES S.A. DE C.V.'),
          ('RTA130109UV6','RED TS ADVANCED SISTEMS S.A DE C.V'),
          ('RTE040625HF8','ROOT TECHNOLOGIES SC'),
          ('RTE190515I16','RCM TELECOM S.A DE C.V.'),
          ('RTI081215LF1','REGIE T INTERNACIONAL SA DE CV'),
          ('RTI140205BAA','RECUPERACIONES TINAJERO S.A. DE C.V.'),
          ('RTM180723UI6','REDES TELECONECTADAS MEXICANAS SA DE CV'),
          ('RTS210827JD7','RUPARE TECNOLOGIA Y SERVICIOS S.A. DE C.V.'),
          ('RTS211201RR2','REFLEXUM 360 SA DE CV'),
          ('RTU820122CL3','RIO TUERTO SA DE CV'),
          ('RTV180613GZ3','RR TELEVISION Y VALORES PARA LA INNOVACION SA DE CV'),
          ('RUAR760316','RAUL ANDRES RUIZ ANTILAF'),
          ('RUCE950106','EDUARDO CESAR RUEDA COVIAN'),
          ('RUGD631022','DELFINA RUIZ GARCIA'),
          ('RUGH550224','HILDA RUIZ GARNICA'),
          ('RUGJ640419','JUAN MANUEL RUANO GONZALEZ'),
          ('RUPM740216','MARIA MARGARITA RUIZ PEREZ'),
          ('RUT090617MV9','RUTTEIN S.A. DE C.V.'),
          ('RVA2201125N3','REYCO DEL VALLE S.A. DE C.V.'),
          ('RVE971128537','REC 21 S.A. DE C.V.'),
          ('RVT061213GP8','RED VIRTUAL EN TELECOMUNICACIONES, S. DE R.L. DE C.V.'),
          ('RWC160705493','ROGIL WORLDWIDE CARGO SA DE CV'),
          ('RWE1808022Z2','REPUBLICA WEB, S.A. DE C.V.'),
          ('RZO980527KM2','REPRESENTACIONES ZAR  OCAMPO, S.A. DE C.V.'),
          ('RZS9003238P5','RENOVADORA ZUCA DEL SURESTE S.A. DE C.V.'),
          ('S&S021003TBA','SOFTWARE & SERVICES INTEGRATION S DE RL DE CV'),
          ('SAA2006187V6','SOLUCIONES Y ABASTO ACTIVOS, S.A DE C.V'),
          ('SAAC640202','MARIA CANDELARIA SALINAS ANAYA'),
          ('SAAC791213','CRISTIAN FRANCOIS SANTARRIAGA ARCE'),
          ('SAAF770814','MARIA FAVIOLA SANCHEZ AGUILAR'),
          ('SAAR820531','RICARDO SAUCEDO ALBARRAN'),
          ('SAB071219T93','SERVICIOS ADMINISTRADOS BSS SA DE CV'),
          ('SAB210122KJ2','IP TOTAL SOFTWARE SA DE CV'),
          ('SAB240216HN6','SOLUCIONES ABDIN SA DE CV'),
          ('SAB240321PS9','SABEICO SA DE CV'),
          ('SABM771201','MOISES EDUARDO DE JESUS SANCHEZ BORJA'),
          ('SACA700802','MARIA DE LOS ANGELES SANCHEZ CAMPOS'),
          ('SACL880730','LUIS ALBERTO SANGINES CASTELAR'),
          ('SACM801027','MARCO ANTONIO SAAVEDRA CRUZ'),
          ('SACR800421','RAQUEL SANTIAGO CRUZ'),
          ('SAD050124Q50','SEGUROS AZTECA DANOS, S.A. DE C.V.'),
          ('SAD9906187N2','SISTEMA ADOBE S.A. DE C.V.'),
          ('SADG930608','GISELLE SANCHEZ DIAZ'),
          ('SADL810612','LESLY DEL CARMEN SALAZAR DZUL'),
          ('SAE1105181E5','SOLUCIONES EN ADMINISTRACION Y EVALUACION SC'),
          ('SAE1703243K6','SISTEMAS AMBIENTALES ESTRATEGICOS SAE, S.A. DE C.V.'),
          ('SAF1102106B3','SAFELINK S DE RL DE CV'),
          ('SAF980202D99','SEGUROS AFIRME S.A. DE C.V. AFIRME GRUPO FINANCIERO'),
          ('SAGA520730','JOSE ABEL SANCHEZ GARCIA'),
          ('SAGA770510','ARTURO SANDOVAL GARCIA'),
          ('SAGC580720','CARLOS SANCHEZ GOMEZ'),
          ('SAGE540713','ENRIQUE SALINAS GUZMAN'),
          ('SAGF781130','JOSE FERNANDO SANCHEZ GUTIERREZ'),
          ('SAGG860531','MARIA GRACE SALAMANCA GONZALEZ'),
          ('SAGJ860321','JORGE DANIEL SANTIAGO GIRON'),
          ('SAGL860721','LUIS ALBERTO VANNER SANCHEZ GARIBAY'),
          ('SAH130304RR4','SERRANO & HR ARQUITECTOS, S.A. DE C.V.'),
          ('SAH2005156V1','SERVICIOS ADMINISTRATIVOS HIKMA SC'),
          ('SAI130326V68','SOLLERTIS ASESORIA INTEGRAL S. A. DE C. V.'),
          ('SAI1811126B7','SERVICIOS INTEGRALES RAUZEJ SA DE CV'),
          ('SAI210716P71','SERVICIOS DE ADMINISTRACION INTEGRAL Y DESARROLLO EMPRESARIAL CERVOR SA DE CV'),
          ('SAJM560819','MIGUEL ANGEL SANCHEZ JIMENEZ'),
          ('SAL060503T37','SERVICIO AUTOMOTRIZ LEMARC SA DE CV'),
          ('SAL140312IE6','SYNE ALCANTE S.A. DE C.V.'),
          ('SAL140403DV2','SALU2 SA DE CV'),
          ('SALE530527','EDUARDO SANCHEZ LEOS'),
          ('SALG741001','GERARDO EDSON SALAZAR LOYA'),
          ('SALJ710611','JUAN MANUEL SANCHEZ LAZCANO'),
          ('SALK850812','KRISTEL ARELY SALINAS LOPEZ'),
          ('SAM120126482','SERVICIOS AMBIENTALES MEGA, S.A. DE C.V.'),
          ('SAM941010K68','SERVICIOS DE ASESORIA EN MEDIOS DE COMUNICACION GS SA DE CV'),
          ('SAM970716DX0','SERVICIO AUTOMOTRIZ MAP SA DE CV'),
          ('SAMC790914','CARLOS MAURICIO SALAZAR MENDIOLA'),
          ('SAME840413','ERIKA SANDOVAL MEDINA'),
          ('SAMH691123','HECTOR FRANCISCO SANTILLAN SANTILLAN'),
          ('SAMM651103','MARTIN SANTIAGO MONDRAGON'),
          ('SAN070511T77','SURMAN ANZURES, S.A. DE C.V.'),
          ('SAN1211168C3','SANEADREN SA DE CV'),
          ('SAN170515G72','SUCILLA & CO SA DE CV'),
          ('SANC700624','CLAUDIA SALAZAR NAJERA'),
          ('SAOI690912','ISAI SANCHEZ ORTIZ'),
          ('SAP120507UW0','SOLUCIONES AMBIENTALES PROBIO, S.A. DE C.V.'),
          ('SAP200605M11','SOMNIUS AP PUBLISHER SA DE CV'),
          ('SAP230509GK2','SERVICIOS AVANZADOS DE PROCESAMIENTO DE INFORMACION, TECNOLOGIA Y OTROS S A P I DE CV'),
          ('SAP230524CI6','SOLUCIONES AUTOMATIZADAS PARA PASAJEROS EN AEROPUERTOS S DE RL DE CV'),
          ('SAPA920126','JOSE ALBERTO SAN PABLO PADRON'),
          ('SAPC710713','CARLOS SANCHEZ PICAZO'),
          ('SAPJ800916','JESUS IVAN SANCHEZ PUEBLA'),
          ('SAPJ971117','JESUS OCTAVIO SALGADO PELAYO'),
          ('SAQ930512U10','SIGMA-ALDRICH QUIMICA S DE RL DE CV'),
          ('SAR0210119D5','SEGUROS ARGOS, S.A. DE C.V.'),
          ('SAR031106IH7','SERVICIO AUTOMOTRIZ RODRIGUEZ, S.A. DE C.V.'),
          ('SAR120326LJ0','SERVICIOS ADMINISTRADOS RODHE, S.A. DE C.V.'),
          ('SAR1707319S0','SOUL ARQUITECTOS S.A. DE C.V.'),
          ('SAR220311B66','SARGRO SA DE CV'),
          ('SAR980126MU8','SERVICIOS AUDIO REPRESENTACIONES Y ARTISTAS S.A DE C.V'),
          ('SARE711012','EDUARDO SALCEDO RODRIGUEZ'),
          ('SARM770908','MAGDALENA NORMA SAAVEDRA REYES'),
          ('SARR650829','RUBEN SANCHEZ RAMIREZ'),
          ('SAS080218TY5','SO ARQ SOLUCIONES TECNICAS EN ARQUITECTURA, S.A. DE C.V.'),
          ('SAS170316P78','SOMNOS & STYLUS S.A. DE C.V.'),
          ('SAS980210F21','SMC Y ASOCIADOS, S.A. DE C.V.'),
          ('SASC930409','CESAR JESUS SANCHEZ SANCHEZ'),
          ('SASD890424','DANIEL ALEJANDRO SANCHEZ SERRANO'),
          ('SAT000126A43','SATELSA SA DE CV'),
          ('SAT160122L70','SOLUCIONES, APOYO TECNOLOGICO Y EDIFICACIONES S.A. DE C.V.'),
          ('SAT230722JT5','SUPLEMENTOS ALIMENTICIOS TONITA SC DE RL DE CV'),
          ('SAT8410245V8','SEGUROS ATLAS, S.A.'),
          ('SATM680412','MAREN SARTORIUS THEYSON'),
          ('SAUI040911','ISRAEL SANCHEZ URBINA'),
          ('SAV211028BW8','SAVEZU, S.A. DE C.V.'),
          ('SAVA880919','ANA PATRICIA SARABIA VILLANUEVA'),
          ('SAVI970203','INGRID YAZMIN SAUCEDO VEGA'),
          ('SAY1802285H9','SOLUCIONES AMBIENTALES YAAX S.A DE C.V.'),
          ('SAYA620827','ARMANDO SALAZAR YANEZ'),
          ('SAZ000925N86','SEGUROS AZTECA, S.A. DE C.V.'),
          ('SBA160412574','SUMINISTROS BARAK SA DE CV'),
          ('SBB080710QN0','SERVICIOS BIOMEDICOS BAZAFI SA DE CV'),
          ('SBC190715VC4','SOCONUSCO BARRA DE CAFE SC DE RL DE CV'),
          ('SBE1808312PA','SKY BUSINESS EMPRESARIAL SA DE CV'),
          ('SBG971124PL2','SEGUROS BANORTE S.A. DE C.V., GRUPO FINANCIERO BANORTE'),
          ('SBI1704254D0','SOLUCIONES BIOKAVI, S.A. DE C.V.'),
          ('SBP180622EY3','SOLUCIONES PARA EL BIENESTAR PATRIMONIAL S.C. DE R.L. DE C.V.'),
          ('SBR130327HU9','SERVICIOS BROXEL SAPI DE CV'),
          ('SBT0208302D3','SERVICIOS BIOMEDICOS Y TECNOLOGICOS, S.A. DE C.V.'),
          ('SCA140708DY2','SISTEMAS EN CONSTRUCCION AMBIENTAL ECO-MEX, S.A. DE C.V.'),
          ('SCA150311BW7','STRUCTA CARAVEO, S.A DE C.V.'),
          ('SCA210512D16','SOLEDAD Y CARRASCO SC'),
          ('SCA220527N43','SERVICIOS DE CONSULTORIA Y ADMINISTRACION ARGIS SA DE CV'),
          ('SCC100204BTA','3S CONSTRUCTORA Y CONSULTORIA SA DE CV'),
          ('SCC2003194S4','SERVICIOS CORPORATIVOS CADMIO SA DE CV'),
          ('SCC2005214D7','SOCIOS CONSULTORES Y CONSTRUCTORES BVJJ SA DE CV'),
          ('SCD1703037G4','SOLUCIONES CONSTRUCTIVAS Y DURABLES S.A. DE C.V'),
          ('SCE061130779','SINERGIA CORPORATIVO EMPRESARIAL INTEGRAL SA DE CV'),
          ('SCF090701BH2','SERVICIOS EN CONSTRUCCION Y FLETES TOVAR SA DE CV'),
          ('SCF210723J66','SERVICIOS COMESTIBLES FREDERICK SC DE RL DE CV'),
          ('SCI001208M74','SCITUM S.A. DE C.V.'),
          ('SCI150923JP0','SILVERA CIENCIA E INGENIERIA, S.A. DE C.V.'),
          ('SCI1609054N1','SOLUCIONES CORPORATIVAS DEL ISTMO, S.A. DE C.V.'),
          ('SCK070618C21','SERVICIOS CORPORATIVOS KEMPER, S.A. DE C.V.'),
          ('SCM0907237JA','SUPERVISION CONSTRUCCION Y MANTENIMIENTO ESPINOZA, S.A. DE C.V.'),
          ('SCM120309T89','SOLUCIONES Y CONSULTORIA MENDOZA S DE RL DE CV'),
          ('SCO070131DS8','SIMBRON CONSTRUCCIONES SA DE CV'),
          ('SCO100429BAA','SENAL CORPORATIVO S DE RL DE CV'),
          ('SCO150801FT2','SECYM CONSTRUCCION SA DE CV'),
          ('SCO1605057J9','SERVICIOS CORLOPEZ SA DE CV'),
          ('SCO170213MTA','SAUROT COMERCIAL, S.A. DE C.V.'),
          ('SCO170602MK4','SERRAVI COMERCIALIZADORA, SA DE CV'),
          ('SCO180830SU0','SAFIX CONSTRUCCIONES SA DE CV'),
          ('SCO190710K17','SHAJESA CONSTRUCCIONES S.A DE C.V'),
          ('SCO9807319VA','SEI CORPO SA DE CV'),
          ('SCP0701095W8','SINERGIA EN CONSTRUCCION Y PROYECTOS SA DE CV'),
          ('SCP201118AL3','SERVICIOS DE CONSTRUCCION PIX A IM, S.A. DE C.V.'),
          ('SCR050513EC3','SISTEMAS DE COMPUTO Y REDES INALAMBRICAS SA DE CV'),
          ('SCS000407QK6','SISTEMA CV SIETE, S.A. DE C.V.'),
          ('SCS190328757','SICONEX, CONSTRUCTORA Y SUPERVISION S.A DE C.V'),
          ('SCS190829VC5','SCSILAV, S.A. DE C. V.'),
          ('SCY2201196X7','SOLUCIONES CONSTRUCTIVAS YESHA SA DE CV'),
          ('SDA970718PK2','SISTEMAS DATABOX, S.A. DE C.V.'),
          ('SDD070419B92','SERVICIOS Y DISENOS DIGITALES S.A. DE C.V.'),
          ('SDD111020MS5','SEA DESARROLLO DE INFRAESTRUCTURA S.A. DE C.V.'),
          ('SDE050203A12','SERVICIOS DOMESTICOS ELECTROMECANICOS S.A DE C.V'),
          ('SDE160817RY4','SORMAN DESARROLLOS EMPRESARIALES S.A.DE C.V.'),
          ('SDI081013410','SERVICIOS DINAMICOS INTELIGENTES S.A DE C.V'),
          ('SDI1512153A2','SOPORTE DINAMICO S.A DE C.V.'),
          ('SDM0502215K7','SALUD Y DESARROLLO MUNICIPAL S.A. DE C.V.'),
          ('SDM080819CM5','SISTEMAS Y DISENOS MOVILES SA DE CV'),
          ('SDM2201178GA','SEVEN DAYS MKT DIGITAL SAS'),
          ('SDM221221KNA','SUPER DON MERCADO SC DE RL DE CV'),
          ('SDO220224P2A','SUMINISTROS DOXIE SA DE CV'),
          ('SDR181025975','SERVICIOS DRUSS SA DE CV'),
          ('SDT9105246L8','HOLA INNOVACION, S.A. DE C.V.'),
          ('SDU2007137J1','SENALES Y DESARROLLO URBANO SA DE CV'),
          ('SEB1502102P4','SERVICIOS Y EVENTOS BK, S.A. DE C.V.'),
          ('SEC111217V91','SISTEMAS ECOTECNOLOGICOS SA DE CV'),
          ('SEC210921KAA','SERVICIOS ESPECIALIZADOS DE CONSTRUCCION GOGRA SA DE CV'),
          ('SEC950816RXA','SCHUNK CARBON TECHNOLOGY S.A DE C.V.'),
          ('SECI800120','ISAAC SERRANO COLIN'),
          ('SED170119NP7','SOLUCIONES EMPRESARIALES DALI S.A. DE C.V.'),
          ('SEE050830UXA','SOLUCIONES EN ELECTRONICA ESPECIALIZADA Y DE POTENCIA SA DE CV'),
          ('SEE980811HS7','SISTEMAS ELECTRICOS Y ELECTRONICOS CELECSIS SA DE CV'),
          ('SEG120306892','SEGIVAN SA DE CV'),
          ('SEG2011063H2','SOLUCIONES EMPRESARIALES GESECA SA DE CV'),
          ('SEG231107T98','SEGUBASA SA DE CV'),
          ('SEGB820626','BERENICE SEGOVIA GARCIA'),
          ('SEGS890209','SILVIA SERRALDE GARCIA'),
          ('SEI061220CC8','SISTEMAS E INSTRUMENTOS PARA LABORATORIO Y HOSPITALES S.A. DE C.V.'),
          ('SEI091006Q22','SERVICIOS ESPECIALIZADOS EN LA INDUSTRIA SEIN S.A. DE C.V.'),
          ('SEI141002NR9','SEIMAC S.A. DE C.V.'),
          ('SEI930315MW9','SISTEMA DE ENERGIA ININTERRUMPIDA S.A. DE C.V.'),
          ('SEJ160323NN1','SOLUCIONES EMPRESARIALES JEDH S.A. DE C.V.'),
          ('SEK190416ND7','SOLUCIONES EMPRESARIALES KLEE SA DE CV'),
          ('SEL090205G83','SERVICIOS ESPECIALIZADOS EN LIMPIEZA HR SA DE CV'),
          ('SEL170705MA2','SERVICIOS EJECUTIVOS LUNA S.A DE C.V.'),
          ('SELJ880702','JESSICA LILIANA SEPULVEDA LEGORRETA'),
          ('SEM110428MU5','SIN EMBARGO S DE RL DE CV'),
          ('SEM1905233X6','SOLUCIONES Y EQUIPOS MEDICOS RIED, S.A. DE C.V.'),
          ('SEM680801193','SEMEX, S.A. DE C.V.'),
          ('SEP150224TZ4','SERVICIOS EJECUTIVOS EN PROTECCION, EQUIPAMIENTO Y ASESORIAS EN PROTECCION CIVIL, S.A. DE C.V.'),
          ('SEP230905QI9','SEPASEC SA DE CV'),
          ('SEP960401BVA','SEPSA SA DE CV'),
          ('SEPR611218','RICARDO SERRANO PADILLA'),
          ('SER070306K25','SERCONESSA S.A. DE C.V.'),
          ('SER101008FM8','SERVERWARE S.A DE C.V.'),
          ('SER111013SS3','SOLUCIONES EMPRESARIALES RODARTE, S.A. DE C.V.'),
          ('SERL880629','LUIS VICENTE SERRANO RODRIGUEZ'),
          ('SES0305069R7','SESITI S.A. DE C.V.'),
          ('SES070925CE8','SI EQUIPO Y SERVICIOS, S.A. DE C.V.'),
          ('SES190527H60','SERVICIOS ESPECIALIZADOS DE SEGURIDAD PRIVADA E INVESTIGACION PRIVADA HYDRA, S.A. DE C.V.'),
          ('SES2402271X8','SERVICIOS PARA EVENTOS SOCIALES CECY SC DE RL DE CV'),
          ('SES980211E63','SERVICIOS ECOLOGICOS SIGLO XXI S. A. DE C. V.'),
          ('SEVO821007','OBED SEGUNDO VICTORIANO'),
          ('SEW0906082Z9','SEWARE S.A DE C.V.'),
          ('SEX1803061A2','SANVEL EXPORTACIONES SA DE CV'),
          ('SFA180907PU8','SERVICIOS FARADA, S. DE R.L. DE C.V.'),
          ('SFD1808015XA','SISTEMAS FINANCIEROS DE DESARROLLO INDUSTRIAL VALHELKIN SA DE CV'),
          ('SFL200210FE8','SERVAN FL SOCIEDAD ANONIMA DE CAPITAL VARIABLE'),
          ('SFM950310A25','SERVICIO FARMEDICAL DE MEXICO SA DE CV'),
          ('SFO120315BG9','SCIENTIKA FOCUS SA DE CV'),
          ('SFR220718SC9','SURTI FRUVER SAS DE CV'),
          ('SGA231012NW7','SERVICIO GONCARS ABZ SA DE CV'),
          ('SGS1307221V8','SMART GOVERNMENT SOLUTIONS S.A.P.I. DE C.V.'),
          ('SHA1709073H3','SANO Y HAWAIANO S DE RL DE CV'),
          ('SHB2403272Y1','SERVICIO HIDRAULICO BALS SC DE RL DE CV'),
          ('SHE210823II0','SANTEK HEALTH, S.A. DE C.V.'),
          ('SHI010130GF6','SOLUCIONES EN HARDWARE INTELIGENTE, S.A. DE C.V.'),
          ('SHN061205CY2','SE HABLA NOBABEL SC'),
          ('SHO021011RR3','SHOWCO S A P I DE CV'),
          ('SHR1209036YA','SGB HUMAN RESOURCES S.C.'),
          ('SIA000218IB2','SUMINISTROS PARA LA INDUSTRIA Y EL AUTOTRANSPORTE S.A. DE C.V.'),
          ('SIA100414UF5','SERVICIO INTEGRAL AUTOMOTRIZ, DIVISION LLANTAS SA DE CV'),
          ('SIA1310025A0','SOLUCIONES EN INFORMATICA APLICADA Y COMUNICACIONES, S.A. DE C.V.'),
          ('SIA190312P70','SISTEMAS INTEGRALES ALTECK SAS DE C.V.'),
          ('SIA190808RK7','SERVICIOS INDUSTRIALES Y ASES PROTECTA, S.A. DE C.V.'),
          ('SIA940408THA','SOLUCIONES INTEGRALES AMR SA DE CV'),
          ('SIB050603RK4','SOLUCIONES INTEGRALES PARA BIBLIOTECAS Y ARCHIVOS S.A DE  C.V'),
          ('SIB190207U88','SERVICIOS INDUSTRIALES BATIA SA DE CV'),
          ('SIB220323QJ1','SOLUCIONES INTEGRALES BAYON S.A. DE C.V.'),
          ('SIBJ790427','JHONATAN ALEJANDRO SIUROB BARCENAS'),
          ('SIC061114RX5','SOLUCIONES INFORMATICAS Y CONSULTORIA TECNOLOGICA PROFESIONAL SA DE CV'),
          ('SIC2102264H0','SERVICIOS INSTITUCIONALES CORBAN, S. DE R. L. DE C.V.'),
          ('SIC2306206I9','SERVICIO INTEGRAL EN CONSTRUCCION DIAOS SA DE CV'),
          ('SIC910712V50','SISTEMAS INTEGRALES  COMPUTARIZADOS, SA DE CV'),
          ('SID010326TX0','SISTEMAS INTEGRALES DE DIAGNOSTICO S.A. DE C.V.'),
          ('SID101206DV8','SIDESYS S DE RL DE CV'),
          ('SID131030EN9','SISTEMAS INMERSIVOS DIGITALES S DE RL DE CV'),
          ('SID180116JK2','SOLUCIONES INTEGRALES EN DESAZOLVE RAGABE S.A. DE C.V.'),
          ('SID180920TG3','SERVICIOS INTEGRADOS Y DISTRIBUCION ZALCO S.A. DE C.V.'),
          ('SID210503I91','SIDERISK, S.C.'),
          ('SIE080805D39','SERVICIOS DE INGENIERIA ESPECIALIZADA UFARA, S.A. DE C.V.'),
          ('SIE1006168U4','SELTIK INDUSTRIA ECOLOGICA S.A. DE C.V.'),
          ('SIE210915S13','SERVICIOS INTEGRALES ECOLOGICOS DE LIMPIEZA Y SANEAMIENTO S.A. DE C.V.'),
          ('SIE921027736','SUMINISTROS INDUSTRIALES ESPECIALIZADOS S.A DE C.V.'),
          ('SIF060309180','SOLUCIONES INTEGRALES DE FLUIDOS, S.A. DE C.V.'),
          ('SIF0611154G2','SOLUCIONES INTEGRALES EN FUMIGACION, S.A. DE C.V.'),
          ('SIF990310IE6','SERVICIO INTEGRAL EN FORMAS S.A. DE C.V.'),
          ('SIFR650824','RAMON SILVA FLORES'),
          ('SIG050720CQ6','SIGMETRIC SA DE CV'),
          ('SIG100326LR8','SISTEMAS DE INTELIGENCIA GEOGRAFICA APLICADOS S.C.'),
          ('SIG170328EF2','SERVICIOS IDEALES PARA LA GESTION AMBIENTAL SA DE CV'),
          ('SIG1904254AA','SOLUCIONES EN INTEGRACION GRUPO IMAGEN S.A. DE C.V.'),
          ('SIG200221GT3','SERVICIOS INTEGRALES GRUPO LEDVEN SAS DE CV'),
          ('SIG800922LR2','SISTEMAS DE INFORMACION GEOGRAFICA SA DE CV'),
          ('SIH2302022D7','SERVICIOS INTEGRALES HE CHAPE SA DE CV'),
          ('SII070502B24','SERVICIOS INTEGRALES DE INGENIERIA Y ARQUITECTURA ROMA, S.A. DE C.V.'),
          ('SII170322EQ4','SOLUCIONES INTEGRALES E INNOVACION TECNOLOGICA SUSTENTABLE SA DE CV'),
          ('SIJJ890518','JULIO CESAR SILVA JUAREZ'),
          ('SIK171213240','SERVICIOS INTEGRALES KONA DE MEXICO, S.A. DE C.V.'),
          ('SIK231122MT4','SOLUCIONES INTEGRALES KYEEL SA DE CV'),
          ('SIL160727HV7','SILENT4BUSINESS S.A. DE C.V.'),
          ('SIL1802168A2','SOLUCIONES INTEGRALES LESSIRG SA DE CV'),
          ('SIL180426AWA','SOLUCIONES INTEGRALES LUHOFER, S.A. DE C.V'),
          ('SIL240206AU4','SPA MI ILUSION SC DE RL DE CV'),
          ('SIM010926F5A','SISTEMAS INTEGRALES EN EL MANEJO DE RESIDUOS INDUSTRIALES S DE RL'),
          ('SIM060620RU9','SERVICIOS INTEGRALES EN MEDICION E HIGIENE, S.A. DE C.V.'),
          ('SIM070418RG5','SERVICIOS INTEGRALES EN MANTENIMIENTO SA DE CV'),
          ('SIM131218RMA','SOLUCIONES INTEGRALES PARA EL MEDIO RURAL S.A. DE C.V.'),
          ('SIM171006QB6','SIMLAE S. DE R.L. DE C.V.'),
          ('SIM171215V43','SHAVIAN IMPRESOS SC DE RL DE CV'),
          ('SIM200717PA3','SOLUCIONES INTEGRALES EN MANTENIMIENTO INDUSTRIAL SIMTECH SA DE CV'),
          ('SIM2402289U1','SERVICIO INTEGRAL EN MANTENIMIENTO 2023 SC DE RL DE CV'),
          ('SIM881017I91','SERVICIOS DE INGENIERIA EN MEDICINA S.A. DE C.V.'),
          ('SIN111124HB0','SEYSA INTERNACIONAL SA DE CV'),
          ('SIN150807M39','SINERGMAN, S. DE R.L. DE C.V.'),
          ('SIN160120KFA','SCI INNOVATION S.A. DE C.V.'),
          ('SIN160316AUA','SOLUCIONES INMESOL S.A. DE C.V.'),
          ('SIN1806126N9','SINDRE SC'),
          ('SIN9408027L7','SEGUROS INBURSA, S.A., GRUPO FINANCIERO INBURSA'),
          ('SINC780424','CARLOS ALBERTO SILVA NOYOLA'),
          ('SIP150612753','SERVICIOS INTEGRALES PARNO, S.A. DE C.V.'),
          ('SIP230209G21','SHUKRAN INSUMOS PROVEEDURIA Y EQUIPO SA DE CV'),
          ('SIP230718JZ3','SITT INGENIERIA Y PROYECTOS SAS DE CV'),
          ('SIR1302218B7','SOLUCIONES INMOBILIARIAS RAMIREZ SA DE CV'),
          ('SIR220609IA9','SERVICIOS INTEGRALES RETIMAR, S.A DE C.V.'),
          ('SIR99022694A','SOLUCIONES INTEGRALES PARA REDES Y SISTEMAS DE COMPUTO, S.A. DE C.V.'),
          ('SIS060619V37','SENERMEX INGENIERIA Y SISTEMAS S.A DE C.V.'),
          ('SIS180816139','SPP INSTITUCION DE SEGUROS SA DE CV'),
          ('SIS210218QW1','SOLUCIONES INNOVADORAS DEL SURESTE, S.A. DE C.V.'),
          ('SIT150925BW3','SOLUCIONES EN INGENIERA Y TECNOLOGIAS DEL AGUA S.A DE C.V.'),
          ('SIV1803214J5','SERVICIOS INTEGRALES 21422 SA DE CV'),
          ('SJO911216KC9','SERVICIOS JORO S.A. DE C.V.'),
          ('SJR180208MM6','SENALPROYECT JR, S.A.S.'),
          ('SLA180305GA3','SERVICIOS LAMDA S. DE R.L. DE C.V.'),
          ('SLA200420NUA','SLADER S.A. DE C.V.'),
          ('SLA940208720','SUMINISTROS LARY, S.A. DE C.V.'),
          ('SLE0804026R5','SILTECSA LIMPIEZA Y EQUIPOS, S.A. DE C.V.'),
          ('SLH231027AQ7','SERVICIOS DE LIMPIEZA DE HOSPITALES MARGEL SC DE RL DE CV'),
          ('SLI2110299T2','SERG LIM SA DE CV'),
          ('SLO190621BJ6','SUCRE LOGISTICA Y OPERACION DE EVENTOS S.A. DE C.V.'),
          ('SLR151209QN2','SONORIZACIONES Y LOGISTICA RIVERA, S.A. DE C.V.'),
          ('SMA100210GW9','SINCRONIA MEDICA APLICADA, S.A. DE C.V.'),
          ('SMA1401242F7','SAFE MARKETING S DE RL DE CV'),
          ('SMA200520N35','SERVICIOS MARNARBRA SA DE CV'),
          ('SMA221011SQ2','SHAMASH MX ARQUITECTURA Y CONSTRUCCION SA DE CV'),
          ('SMC031119155','SUMINISTROS MEDICOS DEL CENTRO SA DE CV'),
          ('SMC190122CR9','SUMINISTRO DE MATERIALES Y CONSTRUCTORA VITAR SA DE CV'),
          ('SMC2203165C9','SERVICIOS DE MANTENIMIENTO Y CONSTRUCCION SIRUES S.A. DE C.V.'),
          ('SMD150819KC7','SOCIAL MEDIA DS, S.C.'),
          ('SME001012RI2','STAR MEDICA SA DE CV'),
          ('SME040223T23','SONDA MEXICO SA DE CV'),
          ('SME0605228I8','SELECTO MEDICA SA DE CV'),
          ('SME0608184Z2','SANIPAP DE MEXICO S.A DE C.V.'),
          ('SME080404NR1','SST DE MEXICO S.A. DE C.V.'),
          ('SME0911244Q9','SIX MED SA DE CV'),
          ('SME14022637A','SINERGECIA MEXICANA, S.A. DE C.V.'),
          ('SME140725Q62','SANYCONTROL DE MEXICO S.A. DE C.V.'),
          ('SME480730UA4','SUPERGAS DE MEXICO SA DE CV'),
          ('SME741219F83','STEREOREY MEXICO SA'),
          ('SME870519RU6','SHEMY MEXICANA S.A. DE C.V.'),
          ('SME9002277T7','SINTEG EN MEXICO SA DE CV'),
          ('SME910904AE2','SERVIPRO DE MEXICO, S. A. DE C. V.'),
          ('SME940408510','SAP MEXICO, S.A. DE C.V.'),
          ('SMG150129NV9','SERVICIOS MERCANTILES GARBE SA DE CV'),
          ('SMG171114KK0','SUMINISTRO Y MANTENIMIENTO GREENLEAF S.A. DE C.V.'),
          ('SMG2109018X1','SYT MEXICO''S GLOBAL SYSTEM, S.A. DE C.V.'),
          ('SMH2211082L7','SERVICIOS MEDICOS Y HOSPITALARIOS X MI SA DE CV'),
          ('SMH2309053B9','SERVICIO MECANICO Y HOJALATERIA GANGOS SC DE RL DE CV'),
          ('SMI110407T68','SISSA MONITORING INTEGRAL SAPI DE CV'),
          ('SMI930706B67','SERVICIOS MOTRICES INTEGRALES, S. A. DE C.V.'),
          ('SML1110241M8','SERVICIOS MEDICOS Y LABORATORIOS,S.A. DE C.V.'),
          ('SMN210722832','SERVICIOS DE MANTENIMIENTO NAKI SA DE CV'),
          ('SMO080218UC0','SAGITARIO MOVIL, S.A. DE C.V.'),
          ('SMO1809112J6','SIEMENS MOBILITY S DE RL DE CV'),
          ('SMO881004UQ1','SELTA MUEBLES PARA OFICINAS S.A. DE C.V.'),
          ('SMS150622DG5','SKELEX MEDICAL SERVICES SA DE CV'),
          ('SMS230330BB5','SENERMEX MOBILITY SERVICIOS ESPECIALIZADOS SA DE CV'),
          ('SNA1306072R1','SOLUCIONES NETKEY ADVANTE S.A DE C.V'),
          ('SNA210219JC0','SERVICIO DE NANOLIMPIEZA S.A. DE C.V.'),
          ('SNE120524FK9','STAIN NETWORK SA DE CV'),
          ('SNE1412112B1','SF NETWORKS S.A DE C.V'),
          ('SNE190618BY6','SANKUAL NEGOCIOS SA DE CV'),
          ('SNL220808I38','EL SABOR DE NUESTRA LOCURA SC DE RL DE CV'),
          ('SNO970923Q7A','SERTRES DEL NORTE S.A. DE C.V.'),
          ('SOC060502RJ9','A + E OMEGA CONSTRUCCIONES SA DE CV'),
          ('SOCF521110','FIDEL SORIA CARRANZA'),
          ('SOF231005857','SOFICLEAN SA DE CV'),
          ('SOF8003242E4','SOFTEC, S.C.'),
          ('SOHG720515','GABRIEL SOSA HERNANDEZ'),
          ('SOL200722FJA','SOCIEDAD COOPERATIVA SIHUATL OLLIN, S.C. DE R.L. DE C.V.'),
          ('SOML481024','LAURA ESTELA SOLIS MUNGUIA'),
          ('SOMR730919','RODRIGO SOLIS MARTINEZ'),
          ('SOR200430Q4A','SUMINISTROS ORECUL SA DE CV'),
          ('SORM920824','MONICA AUREA SOTELO REBELO'),
          ('SOS860512BR4','SERVICIOS ORGANIZADOS SISTEMA 2000 SA DE CV'),
          ('SOSL670717','LINA GRACIELA SOLANO SANTIBANEZ'),
          ('SOSR881110','RAFAEL SAHITD SOSA SANCHEZ'),
          ('SPA040629MN0','SERVICIOS Y PROYECTOS DE ACTUALIZACION TECNOLOGICA SA DE CV'),
          ('SPA0709112J8','SOLUCIONES PROFESIONALES Y ASOCIADOS, ZMM, S.C.'),
          ('SPA111014DJ5','STRONG PARTS, S.A. DE C.V.'),
          ('SPA140305UE4','123 HAZLO SA DE CV'),
          ('SPA2109032Z1','SECURITY PRIVATE, ADVERTISING AND EVENTS, HADES SA DE CV'),
          ('SPB150911B21','SERVICIOS PROFESIONALES BERZEQUIM SA DE CV'),
          ('SPC170615TXA','S4U PROFESSIONAL COMMAND CENTER S A P I DE CV'),
          ('SPF160624E8A','SISTEMAS DE PISOS FLOTADOS OLIMPO SA DE CV'),
          ('SPI211111L29','SERGEN PRO INTEGRADORA DE SERVICIOS, SA DE CV'),
          ('SPO061222QC7','SOLUCIONES POLO, S.A. DE C.V.'),
          ('SPO220726DS1','SERVICIO POPLOP SA DE CV'),
          ('SPO830427DQ1','SEGUROS EL POTOSI S.A.'),
          ('SPP000125CX3','SISTEMAS PROFESIONALES DE PINTURA, SA DE CV'),
          ('SPR0811104I4','SERVICIOS PROMEXMA SA DE CV'),
          ('SPR1404088SA','SIM, PROFESIONALES SA DE CV'),
          ('SPR211217214','SERVICIOS PROFESIONALES RO-TRENDGO SA DE CV'),
          ('SPR230428CD8','SUNEGOCIO Y PROYECTOS SA DE CV'),
          ('SPR950828523','SEGURITECH PRIVADA, S.A. DE C.V.'),
          ('SPS130325239','SEGURIDAD PRIVADA STIER SA DE CV'),
          ('SPT100521DD7','SECURITY PLUS TECHNOLOGY PRIVATE MALUGO SA DE CV'),
          ('SPT110511BC1','SEGURIDAD PRIVADA TEL AVIV SA DE CV'),
          ('SPU190926US4','SEFE PUBLICIDAD, S.A. DE C.V.'),
          ('SPU920708K99','SONOMEX PUBLICIDAD, S.A. DE C.V.'),
          ('SPV980727JK3','SANIPROF OPERADORA, S.A. DE C.V.'),
          ('SQT19102373A','SE QUI TEXCALLI SC DE RL DE CV'),
          ('SRA050901BR6','SOLUCIONES RAGU SA DE CV'),
          ('SRE1701165EA','SBM REVE SA DE CV'),
          ('SRE210322ID0','SECOND RESPONSE, S.A. DE C.V.'),
          ('SRE2205031D4','SME REINNOI SA DE CV'),
          ('SRR190502AV9','SERVICIO REFACCIONES Y REPARACIONES DE EQUIPOS PARA DESAZOLVE VAZQUEZ ASOCIADOS, SA DE CV'),
          ('SSA110203D70','SALAUNO SALUD SAPI DE CV'),
          ('SSA160830UV4','SUEDOMSA SEMPAI & HIME RYMOGO S.A. DE C.V'),
          ('SSC170626FJA','SPEC SERVICIOS COMERCIALES SA DE CV'),
          ('SSC190828835','SCDC SERVICIOS Y COMERCIO CORPORATIVO SA DE CV'),
          ('SSC211019BD7','SOPORTE Y SERVICIOS CORDOBA S DE RL DE CV'),
          ('SSD181019AK5','SUMINISTROS Y SERVICIOS DAYAMINA S.A. DE C.V.'),
          ('SSE120726660','SUMINISTRO DE SERVICIOS E INSUMOS HRI S.A. DE C.V.'),
          ('SSF1602027M1','SOLUCIONES Y SUMINISTROS FRIMAR, S.A. DE C.V.'),
          ('SSG160219FRA','SERVICIOS Y SUPERVISION GITANO S.A. DE C.V.'),
          ('SSI0607178N8','SIE SISTEMAS S.A. DE C.V.'),
          ('SSI070607P46','SYM SERVICIOS INTEGRALES S.A DE C.V.'),
          ('SSI071203V58','SOLUCIONES Y SERVICIOS INTEGRALES TELCO SA DE CV'),
          ('SSI101213VD1','SEIDCO SERVICIOS DE INGENIERIA Y ADMINISTRACION INTEGRAL SA DE CV'),
          ('SSI120725LK1','SISTEMAS SUSTENTABLES DE INGENIERIA Y CONTROL AMBIENTAL MM S DE RL'),
          ('SSI220413RV0','SISA SOLUCIONES INTEGRALES EN SISTEMAS DE ALARMA Y CCTV SA DE CV'),
          ('SSK2004036A1','SAFE SKANN CO. S. A. DE C. V.'),
          ('SSL210413SH5','SAVE STOCK LOGISTICAS DE OPERACION Y TRANSPORTES DE JALISCO S DE RL DE CV'),
          ('SSM1304184W0','SEMAGAM SERVICIO Y MATERIAL PARA GASOLINERAS DE MEXICO SA DE CV'),
          ('SSO970514I26','PLUXEE MEXICO FINTECH, S.A. DE C.V., INSTITUCION DE FONDOS DE PAGO ELECTRONICO'),
          ('SSP210317UR5','SENTINENTAL SEGURIDAD PRIVADA SA DE CV'),
          ('SSP230307671','SERVICIOS Y SOLUCIONES PROFESIONALES LEONARD RESTREPO SAS DE CV'),
          ('SSS160921JC6','SYS SUMINISTROS Y SOLUCIONES S.A. DE C.V.'),
          ('SSS181130V47','S Y S SERVICIOS SERVICIOS Y SOLUCIONES VERDES SA DE CV'),
          ('SST060307R37','SYSTEMTECH SISTEMAS TECNOLOGICOS SA DE CV'),
          ('SST130618B40','SERTEXT SERVICIOS TEXTILES DE TOPILEJO, S.C. DE R.L. DE C.V.'),
          ('SST140114KZ2','SOLUCIONES SOPORTE Y TECNOLOGIA SA DE CV'),
          ('SST140903SY4','SVS SOLUCIONES TECNOLOGICAS VOLUMEN Y SERVICIO SA DE CV'),
          ('SST191203614','SISPERP SERVICIOS TI SA DE CV'),
          ('SST200515L86','SANEXT SANITIZING TECHNOLOGY S.A.P.I. DE C.V.'),
          ('SST940111LG1','SICTEL SOLUCIONES TI S.A. DE C.V.'),
          ('STA1510228M7','SOLUCIONES TECNOLOGICAS & PROTECCION AEROESPACIAL S.A. DE C.V.'),
          ('STA930402478','SOLUCIONES TECNICAS APLICADAS INC., S.A. DE C.V.'),
          ('STA950407QC3','SERVICIO TECNICO AEREO DE MEXICO, S.A. DE C.V.'),
          ('STB160819GRA','SERVICIO TECNICO BIOMEDICO ASOCIADO S.A. DE C.V.'),
          ('STC090605D22','SISTEMAS DE TELEMETRIA Y CONSTRUCCIONES S.A. DE C.V.'),
          ('STE040914LI2','SOLUCIONES TECNOLOGICAS ESPECIALIZADAS, S.A. DE C.V.'),
          ('STE110215RZ9','SKILL TECHNOLOGY, S.A. DE C.V.'),
          ('STE151002DKA','SEGUIMIENTO TEMATICO, S.A. DE C.V.'),
          ('STE1907111R6','SGP TECH SA DE CV'),
          ('STE231109JB5','SABOR Y TENTACION SC DE RL DE CV'),
          ('STI040226UX6','SPEED TIME S.A. DE C.V.'),
          ('STI070619AV7','SSC TECNOLOGIAS DE INFORMACION, COMUNICACION Y SERVICIOS S.A. DE C.V.'),
          ('STI1409298I0','SEYS TI, SA DE C.V.'),
          ('STM060405LR5','SERVICIOS PARA LA TECNOLOGIA EN MATERIALES S DE RL DE CV'),
          ('STM1104052Y2','SERVICIOS PARA TRANSPORTE Y MOVILIDAD SA DE CV'),
          ('STN980921TT8','SUPERVISION TECNICA DEL NORTE, S.A. DE C.V.'),
          ('STO020301G28','SERVICIOS TECNOLOGIA Y ORGANIZACION SA DE CV'),
          ('STO191016SG5','COOPERATIVA SUSY TOMH SC DE RL DE CV'),
          ('STP1601261Y6','SOLAR TERRUM PROJECTS SA DE CV'),
          ('STR190313MM7','STRAD SC'),
          ('STR900622ES9','SERVICIOS TRONCALIZADOS S.A. DE C.V.'),
          ('STR910612SR7','SISTEMAS TECNICOS DE RECONSTRUCCION AUTOMOTRIZ DIESEL SA DE CV'),
          ('STS130912RUA','SINERGIA TELECOMUNICACIONES Y SOLUCIONES INTEGRALES SA DE CV'),
          ('STV8406119B6','SEGURITEC TRANSPORTE DE VALORES, S.A DE C.V.'),
          ('SUAM610219','MONICA SUAREZ ALVARADO'),
          ('SUB1304186R4','SUBLICOMPANY SA DE CV'),
          ('SUB2308096L8','SERVICIOS UBORKA SA DE CV'),
          ('SUDN830924','NORMA MERCEDES SUAREZ DOMINGUEZ'),
          ('SUG720708TM0','SUGETOSA, S.A. DE C.V.'),
          ('SUM110816MR0','SUMACORTEC S.A DE C.V.'),
          ('SUM890327137','SUMINISTRO PARA USO MEDICO Y HOSPITALARIO, S.A. DE C.V.'),
          ('SUM990219VC0','SUMICOR SA DE CV'),
          ('SUR130503KI7','SURTIPRACTIC S.A. DE C.V.'),
          ('SUR831027314','SURO, S.A. DE C.V.'),
          ('SUR910812NQ4','SURFAX S.A. DE C.V.'),
          ('SUS230821BB9','SERCOFI UNA SOLUCION A TU MEDIDA SC DE RL DE CV'),
          ('SVA011129JB3','SOPORTE VITAL AVANZADO SA DE CV'),
          ('SVA790523IN5','SERVIGAS DEL VALLE SA DE CV'),
          ('SVE141205KN0','SARO VERDE SA DE CV'),
          ('SVI150318QS2','SENALES VIMAR SA DE CV'),
          ('SWM110624SS3','SECURE WITNESS DE MEXICO S. DE R.L. DE C.V.'),
          ('SWY130930CZ8','SWYMKT SA DE CV'),
          ('SYB240705QZ6','SNACKS YOJO BURGER SC DE RL DE CV'),
          ('SYS030424HA1','SYSLOGTECH SA DE CV'),
          ('TAA110408815','TECNOLOGIA APLICADA A LOS NEGOCIOS ESG, SA DE CV'),
          ('TAA9801088A9','TECNICA AUTOMOTRIZ AVANZADA, S.A. DE C.V.'),
          ('TAC030331AX2','TECNOLOGIA APLICADA A CORPORATIVOS SA DE CV'),
          ('TAC110217LYA','NOVA STRONG SA DE CV'),
          ('TAC861111S76','TECNOLOGIA APLICADA A LA CONSERVACION S.A. DE C.V.'),
          ('TAD190910DB5','TADAN SC DE RL DE CV'),
          ('TAD210624IV0','TACTICAL ADVENTURE SA DE CV'),
          ('TAE071011BQ4','TECNOLOGIA AVANZADA PARA LA EDUCACION Y LA CAPACITACION SA DE CV'),
          ('TAF010212MN8','TAYSON AIRE FRIO SA DE CV'),
          ('TAG230831575','TAGLMON SA DE CV'),
          ('TAJ181009V94','T & J SEGURIDAD PRIVADA Y ESPECIALIZADA SA DE CV'),
          ('TAM0303139K1','TECNOLOGIA APLICADA AL MANTENIMIENTO INDUSTRIAL 4Z S.A. DE C.V.'),
          ('TAM091027AT8','TECNOPROTECCION AMBIENTAL, SA DE CV'),
          ('TAM150814EU4','TAMEZTEC S.A. DE C.V.'),
          ('TAM200717KK0','TAMAMED, S.A. DE C.V.'),
          ('TAM230306RDA','TEC. ACTUALIZACION MEDICA PREHOSPITALARIA Y EQUIPOS DE RESPUESTA RAPIDA SAS'),
          ('TAM240216R66','TM ARTESANIAS DE MADERA SC DE RL DE CV'),
          ('TAM771006IE5','TECNICA ARTESANAL MEXICANA S.A.'),
          ('TAMC791221','CARLOS ALBERTO TRAMPE MONTUFAR'),
          ('TAN191129638','TRANSPORTES DE AGUAS NACIONALES TAN S. DE R.L. DE C.V.'),
          ('TAP070702UQA','TRANSPORTES DE AGUA POTABLE Y PRODUCTOS DEL CAMPO DE SAN MIGUEL TOPILEJO S.C. DE R.L. DE C.V.'),
          ('TAP211228R55','TRANSPORTES & PRODUCTOS DEL CAMPO TOTOLTEPEC SA DE CV'),
          ('TAP770131TG8','TRACTORES AGRICOLAS DE PUEBLA S.A DE C.V.'),
          ('TAP950531JG4','TRANSPORTES DE AGUA Y PRODUCTOS DEL CAMPO, GRUPO TLALPENSE DE LA MAGDALENA, SAN ANDRES Y TOPILEJO, S.C.'),
          ('TAPG570109','GONZALO TALAVERA PEREZ'),
          ('TAPM991227','MAURICIO TAPIA PENA'),
          ('TAR090624R46','TAREGA SA DE CV'),
          ('TAR160510792','TREE ARROW S.A. DE C.V.'),
          ('TAR210125PN2','TARGARSON SA DE CV'),
          ('TAS190920TR8','TECHNOLOGY AS A SERVICE MEXICO SA DE CV'),
          ('TAS240402PG8','TRABAJADORES DE LA SOCIEDAD COOPERATIVA AGUA SOLUCIONES SC DE RL DE CV'),
          ('TASM740715','MINERVA EDITH TAPIA SANCHEZ'),
          ('TAT101203KW2','TALLERES DE ALTA TECNOLOGIA EN DIESEL S.A. DE C.V.'),
          ('TAZ960904V78','TV AZTECA S.A.B. DE C.V.'),
          ('TBC020618EM8','TEJIDOS Y BLANCOS DE LA CASA SA DE CV'),
          ('TBE0806184H2','TROLLEY AND BUS ELECTRIC DE MEXICO SA DE CV'),
          ('TBR050824C21','TIANGUIS DE BIENES RAICES SA DE CV'),
          ('TCA000225LY6','TRACTO CAMIONES AGUIRRE SA DE CV'),
          ('TCA0407219T6','TELEFONIA POR CABLE, S.A. DE C.V.'),
          ('TCA090127CH6','TERRACERIAS Y CONSTRUCCIONES AGM SA DE CV'),
          ('TCA2404199M6','TIENDA EL CANARIO SC DE RL DE CV'),
          ('TCA930803M13','TRENDI CARBURACION SA DE CV'),
          ('TCA980709NBA','TPS, TELLO PRODUCCIONES & SOLUCIONES S.A. DE C.V'),
          ('TCD1906139J7','TALLER DE CIUDAD Y DISENO SA DE CV'),
          ('TCD891214DS2','TC DISAC SA DE CV'),
          ('TCE171128QKA','DE TU CEL S. DE R.L. DE C.V.'),
          ('TCI020520133','TEL CITY, S.A. DE C.V.'),
          ('TCI100913LH1','TALLER CENTRAL DE INGENIERIA TCI, S.A. DE C.V.'),
          ('TCI1803166Q8','TEZCA CONSTRUCCIONES E INFRAESTRUCTURA SOCIEDAD ANONIMA PROMOTORA DE INVERSION DE CAPITAL VARIABLE'),
          ('TCI9501118X5','TECNOLOGIA EN CONECTIVIDAD INTEGRAL SA DE CV'),
          ('TCI980226AY8','TECNOLOGIA EN COMUNICACIONES E INFORMATICA, S.A. DE C.V.'),
          ('TCM210701E29','TALLER DE COSTURA MERCADO SC DE RL DE CV'),
          ('TCO0009128J1','TRIARA.COM S.A. DE C.V.'),
          ('TCO100314J46','TIRTZA CONSTRUCCIONES S.A DE C.V.'),
          ('TCO100412SVA','TAT CONSTRUCTORA, S.A. DE C.V.'),
          ('TCO120827UT9','TECNOSERVICES COMMERCE SA DE CV'),
          ('TCO130820FX3','TAMCE CONTRAMEDIDAS SA DE CV'),
          ('TCO1611101C6','TEXICANA DE CONSTRUCCION SA DE CV'),
          ('TCO170831A1A','TARIKSA COMERCIALIZADORA SA DE CV'),
          ('TCO190409AA5','TAZAMAR COMERCIALIZADORA S.A. DE C.V.'),
          ('TCO2112109C7','TEMISA CONSULTORES SA DE CV'),
          ('TCO230608EK4','TALLER EL CAMALEON OCOTEPEC SC DE RL DE CV'),
          ('TCR210302438','TECHNO CRATER S.A. DE C.V.'),
          ('TCS120711VD2','TGS CARD SOLUTIONS, S.A. DE C.V.'),
          ('TCS12122131A','TRANSPORTISTAS COMUNEROS DEL SUR SA DE CV'),
          ('TCS200813449','TOGLE CONSTRUCCIONES, SUPERVISION Y PROYECTOS DE OBRA S.A. DE C.V.'),
          ('TCS220204BV8','TELLER CONSTRUCCIONES Y SERVICIOS SAS DE CV'),
          ('TCT0202157R5','TRANSCONSULT, S.A. DE C.V.'),
          ('TCT12041879A','TRANSPORTE COMERCIAL TERRESTRE KUUM KUMI S.A DE C.V.'),
          ('TDA020801KW9','TRES D?ARQUITECTURA CREATIVA, S.A. DE C.V.'),
          ('TDE020822519','TECNOLOGIA Y DESARROLLO ELECTROMECANICO S.A DE C.V'),
          ('TDE121214A29','TECNOLIMPIEZA DELTA, S.A. DE C. V.'),
          ('TDE130417T64','TECNOLOGY DEPOT, S.A. DE C.V.'),
          ('TDI180416SF1','TRAXION DIGITAL, S.A. DE C.V.'),
          ('TDI200521HWA','TDIGITALI SAS DE CV'),
          ('TDP231206FNA','TRANSFORMACION DOS PUNTO CERO SC DE RL DE CV'),
          ('TDR230711198','TWO DANIEL''S RISOS SC DE RL DE CV'),
          ('TEAC820304','CESAR RODRIGO TREJO ALCARAZ'),
          ('TEC0002049M7','TECNOMEDICS,S.A. DE C.V.'),
          ('TEC021010KA9','TECHNODOMUS S.A DE C.V'),
          ('TEC021121EWA','TECNOSUPPORT S.A. DE C.V.'),
          ('TEC0412141V0','TECHTRADE, S.A. DE C.V.'),
          ('TEC080616MMA','TECSAME SA DE CV'),
          ('TEC090209IE3','TECNOLIMPIEZA ECOTEC, S.A. DE C.V.'),
          ('TEC090630HE3','TECHRENT SA DE CV'),
          ('TEC181017TN0','TECNOPAVIMENTOS, S.A. DE C.V.'),
          ('TEC1909111H2','TECNOLURIK S.A. DE C.V.'),
          ('TEC191218I62','TECNILEON S.A. DE C.V.'),
          ('TEC230524ND1','TU ESPACIO CARA Y CUERPO SC DE RL DE CV'),
          ('TECA730922','ADOLFO TREJO CASTORENA'),
          ('TECK781104','KARLA SELENE TENORIO CAROPRESO'),
          ('TECM560613','MARCO ANTONIO TENORIO CARAPIA'),
          ('TED961003IZ9','TRANSPORTES ESPECIALIZADOS DE DESECHOS INDUSTRIALES SA DE CV'),
          ('TEDB840203','BUGAMBILIA TREJO DURAN'),
          ('TEF020118Q61','TECNICOS ESPECIALIZADOS EN FUMIGACION SA DE CV'),
          ('TEG971013TB2','TECNICA ESPECIALIZADA G&C, S.A. DE C.V.'),
          ('TEGO841112','ODIN JOSAFAT TENORIO GARCIA'),
          ('TEH221111A54','TEHUTLIXPA SC DE RL DE CV'),
          ('TEJG880318','GABRIELA TELLO JIMENEZ'),
          ('TEK2001206B7','TEKCHAIN SA DE CV'),
          ('TEL010830I1A','TELECTROCOM SA DE CV'),
          ('TEL190801U50','TELUTE S DE RL DE CV'),
          ('TEL721214GK7','TELEVISA, S. DE R.L. DE C.V.'),
          ('TEM170802DHA','TRANSPORTISTAS EJIDATARIOS MAGDA, S.C. DE R.L. DE C.V'),
          ('TEM190314SVA','TROFEOS ELITE DE MEXICO S.A. DE C.V.'),
          ('TEMA650827','MARCELINO TREJO .'),
          ('TEMM910623','MAYRA NAYELLI TELLEZ MARTINEZ'),
          ('TEN9811166Q1','TRANSPORTES ENMARK, S.A. DE C.V.'),
          ('TEON800509','NOHEMI TELLEZ ORDONEZ'),
          ('TEP1309218J1','TRANSPORTES ECOLOGICOS PAVORREAL, S.A. DE C.V.'),
          ('TEP220520R14','TRANSPORTISTAS EJIDATARIOS LA PETLA SPR DE RL DE CV'),
          ('TEPR890808','RODRIGO LAZARO TELLEZ PEREZ'),
          ('TEQ600304HL6','TELECOMUNICACION Y EQUIPOS S.A. DE C.V.'),
          ('TER060227LR4','TRANSPORTES ESPECIALIZADOS RUGA S.A DE C.V.'),
          ('TER210624TWA','TERRANTUM S.A DE C.V'),
          ('TERL930527','LUIS ANGEL TREJO RODRIGUEZ'),
          ('TES1609053I2','TERRENOS ESTRATEGICOS S.A. DE C.V.'),
          ('TESA030729','AIMAR AMAURY TERRES SANCHEZ'),
          ('TESM890828','MIGUEL ANGEL TERAN SANCHEZ'),
          ('TET210414Q13','TROOP Y COMPANIA ENERGIA Y TRANSPORTE S. DE R.L. DE C.V.'),
          ('TET230627SX7','TETRA 4.0 SA DE CV'),
          ('TEV1802195I4','TODI EVENTOS S.A. DE C.V.'),
          ('TEX190910CM7','TEX-JOSH SC DE RL DE CV'),
          ('TEX210721FL3','TEXELIS SAS'),
          ('TFA940119FX7','TRANSPORTES FAV SA DE CV'),
          ('TFF201214IK1','TEARS FOR FEARS 2020 SA DE CV'),
          ('TGA170705LB2','TRADE GAREDI SA DE CV'),
          ('TGC0102169I5','3G COMUNICACIONES S.A. DE C.V.'),
          ('TGC1404087E4','TEXON GRUPO CONSTRUCTOR SA DE CV'),
          ('TGI140822AJ3','TIMSA GRUPO INDUSTRIAL SA DE CV'),
          ('TGO020911HT6','TERSA DEL GOLFO S DE RL DE CV'),
          ('TGO120816SS4','TEXTIL GOB, S.A. DE C.V.'),
          ('TGP170314IT1','TEMA GAS PLUS SA DE CV'),
          ('TGT170822JU6','TAXISTAS DE LA GRAN TENOCHTITLAN SC DE RL DE CV'),
          ('THE1804239D2','THECROWDMX S.A. DE C.V.'),
          ('THE200623352','TECNOLOGIAS Y HERRAMIENTAS ESTRUCTURALES APLICADAS'),
          ('TIAC610709','MARIA CARMEN TINAJERO ANAYA'),
          ('TID201210DU8','TIDUMEX S.A. DE C.V.'),
          ('TIEF580920','FRANCISCO LUIS TIRADO EUSEBIO'),
          ('TIG0910287B1','ARD TALLER DE ARQUITECTURA, REMODELACIONES Y DISENO SA DE CV'),
          ('TII231202123','TITAN INGENIERIA E INDUSTRIA SA DE CV'),
          ('TIL180806MX1','TMC INTERNATIONAL LINK, S.A. DE C.V.'),
          ('TIL921106763','TECNICA INTERNACIONAL EN LIMPIEZA, S.A. DE C.V.'),
          ('TIM030714AU3','TECNOLOGIA EN INFORMATICA MULTIPLE, S.A. DE C.V.'),
          ('TIN090211JC9','TOKA INTERNACIONAL S.A.P.I. DE C.V.'),
          ('TIN990323761','TRANSILMEX INC SA DE CV'),
          ('TIR191125IG0','TERRACASA INMOBILIARIA RIVIERA S DE RL DE CV'),
          ('TIRJ780206','JESUS TINAJERO ROSAS'),
          ('TIV141024563','TENEDORA INMOVILIARIA VACACIONAL SA DE CV'),
          ('TIX190911D27','3TI SA DE CV'),
          ('TJA231013LC6','TLAC JAHE S.P.R. DE R.L.'),
          ('TLA000801L86','TEKSAR LABS S.A. DE C.V.'),
          ('TLA190617AD8','TLAPACOMPUCCTV S.C. DE R.L. DE C.V.'),
          ('TLA220808Q59','TLAGUA SC DE RL DE CV'),
          ('TLA231109NK3','TLANI-NANTLI SC DE RL DE CV'),
          ('TLH230323D36','300 LITROS POR HORA SC DE RL DE CV'),
          ('TLI040630I83','TECHNOLOGICAL LINKS, S.A. DE C.V.'),
          ('TLO1406024I8','TEXTILES LOPAGUI SA DE CV'),
          ('TLO141027FH9','TOTAL LOOK SOCIEDAD ANONIMA DE CAPITAL VARIABLE'),
          ('TMA220516523','TECNICOS Y MANUALES AMV SA DE CV'),
          ('TMD210527DM7','TWA MARKETING DIGITAL S.A DE C.V'),
          ('TMD2307184H6','TRANSFORMACION DE MAIZ DONA JOSE SC DE RL DE CV'),
          ('TMD240306MD0','TOMA MI MANO DIESTRA SC DE RL DE CV'),
          ('TME1407028Q5','TSO-NGE MEXICO S.A. DE C.V.'),
          ('TME150519115','TBO MEDIA S.A. DE C.V.'),
          ('TME700907JH4','TROQUELES DE MEXICO, S. A. DE C. V.'),
          ('TME840315KT6','TELEFONOS DE MEXICO S.A.B. DE C.V.');

--6 bloque de proveedores
insert into tblProveedores(idStrRFCproveedor,
					        strRazónSocialProveedor)
	values('TME910924TL5','TELETEC DE MEXICO S.A.P.I. DE C.V.'),
          ('TMI000803H44','TECNOLOGIA MEDICA INTERAMERICANA, S.A. DE C.V'),
          ('TMO160219AY8','TRAKXION MOTORS SA DE CV'),
          ('TMO191022169','TRANSFORMACION DE MAIZ OLMOS SC DE RL DE CV'),
          ('TMO210304GL2','TACTICAL MOUNTAIN SA DE CV'),
          ('TMP240724DD3','TIENDA Y MAS LA PRINCESITA ANA PAU SC DE RL DE CV'),
          ('TMX1408274G1','TOLK MX S DE RL DE CV'),
          ('TMY230201T70','TENDENCIA EN MARKETING YHA SA DE CV'),
          ('TNE080822BZ5','TECNO NEGOCIOS SA DE CV'),
          ('TNE160530499','TU NERD S. DE R.L. DE C.V.'),
          ('TNN091003PU7','399 PROJECT DEVELOPMENT SA DE CV'),
          ('TOAV890705','VELIA AKETZALI TOVAR ARIAS'),
          ('TOCL910715','LUISA FERNANDA TORRES CONTRERAS'),
          ('TOCR850221','ROSA MAYLI TORRES CUADROS'),
          ('TOGL640719','LUIS JAVIER DE LA TORRE GONZALEZ'),
          ('TOL2110255K8','TIM OLMA SA DE CV'),
          ('TOLF930314','FERNANDA THOMPSON LOZADA'),
          ('TOMA590703','AGUSTIN TORRES MACIAS'),
          ('TOMF720820','FRANCISCO CARLOS TORRES MAGANA'),
          ('TOMK780125','KARLA ARCELIA TOVAR MARTINEZ'),
          ('TOMM560410','MARTA TORRES MOLINA'),
          ('TOMO661216','OSCAR MAURICIO TORRES MARQUEZ'),
          ('TOMR650120','ROCIO TORRES MARIN'),
          ('TOOA780522','ANDRES EDUARDO TORRES OLVERA'),
          ('TOPA450328','JOSE ANTONIO TOVAR PARTIDA'),
          ('TORG690111','GUILLERMO TORRES RODRIGUEZ'),
          ('TOSI830715','IVETTE TORRES SERRANO'),
          ('TOSJ830519','JUAN PABLO TORRES SANCHEZ'),
          ('TOU200226LS6','TECHNOLOGY OUTCOMES SA DE CV'),
          ('TPA160518PCA','TALLER PUNTOCERO ARQUITECTURA Y URBANISMO S.A. DE C.V.'),
          ('TPC1208066U6','TOTAL PARTS AND COMPONENTS S.A. DE C.V.'),
          ('TPL0705036A1','TAMIZAJE PLUS S. A. DE C. V.'),
          ('TPR220127QK0','TSA PROCESSA SA DE CV'),
          ('TPS0612089Y4','TRYPLE PLAY SYSTEMS DE MEXICO SA DE CV'),
          ('TPS1510297X9','TRASLADO PROFESIONALES  SAFE TRIP  SA DE CV'),
          ('TPT890516JP5','TOTAL PLAY TELECOMUNICACIONES, S.A.P.I. DE C.V.'),
          ('TPU2012189F5','TECNOSOLUCIONES PUBLICITARIAS SA DE CV'),
          ('TQO151203MD2','TECNOLOGIA QUIRURGICA EN OFTALMOLOGIA SA DE CV'),
          ('TRA160129H93','TRANSCAMEJI SC DE RL DE CV'),
          ('TRA1809042N8','TRACKMED, S.A. DE C.V.'),
          ('TRA181129110','TRANSPORTIUM S. DE R.L. DE C.V.'),
          ('TRA190911RD4','TRANSLURI, S.A. DE C.V.'),
          ('TRA220505T82','TRANSMARELI SA DE CV'),
          ('TRA221220NQ6','TRANSPORTES RURALES DE AGUA DEL SUR S.P.R. DE R.L.'),
          ('TRD111005FA9','TRITURADORA ROCA DURA SAN MIGUEL SA DE CV'),
          ('TRI120910936','TRIBELSA SA DE CV'),
          ('TRI180601G30','TANDEM RIDE S DE RL DE CV'),
          ('TRI8403203E9','TRIFISA SA DE CV'),
          ('TRM9309299Q6','TUV RHEINLAND DE MEXICO S.A. DE C.V.'),
          ('TRO990709DU7','TROOP Y COMPANIA S.A DE C.V.'),
          ('TRS1405206T8','TEC REDES Y SEVICIOS INFORMATICOS, S.A. DE C.V.'),
          ('TRT231109TN7','TRANSPORTISTAS RUSTICOS DE TLALPAN SA DE CV'),
          ('TRV120417NH7','TECHADOS Y RECICLADOS VOT S.A. DE C.V.'),
          ('TSA080611FRA','TEGU SOLUCIONES AMBIENTALES S.A. DE C.V.'),
          ('TSA1605175W2','TECNOLOGIA EN SISTEMAS DE APOYO S.A'),
          ('TSA990921QY7','TRANSPORTES SCHOLASTICO SA DE CV'),
          ('TSC1305207F4','TECNOLOGIA SOCIAL PARA EL DESARROLLO S.A DE C.V'),
          ('TSD070109D89','360 DIRECCION DE NEGOCIOS Y UNIDAD EMPRESARIAL SC'),
          ('TSD201119TP3','MIDASOFT S DE RL DE CV'),
          ('TSD220510CN0','THONA SEGUROS, S.A. DE C.V.'),
          ('TSE120711H38','TRANSLLAT SENTINELLA S.A. DE C.V.'),
          ('TSE200113UN5','THOT SERVICIOS DE INGENIERIA, S.A. DE C.V.'),
          ('TSI061030B33','TUXPAN SOLUCIONES INTEGRALES SA DE CV'),
          ('TSI1008305Q4','TELINFRA SISTEMAS SOCIEDAD ANONIMA DE CAPITAL VARIABLE'),
          ('TSI211210NM4','TECNOLOGIA EN SISTEMAS DE LIMPIEZA METROPOLITANOS SA DE CV'),
          ('TSL030421378','TODO PARA LA SALUD MARK S.A. DE C.V.'),
          ('TSM121127KC0','TEAM SPORTS MARKETING SA DE CV'),
          ('TSM160411JH1','TREND SIGHTS MEXICO SA DE CV'),
          ('TSM230215BN2','TRADICIONAL SAZON DE MOCTEZUMA SC DE RL DE CV'),
          ('TSM2402072F1','TEC SOLUCIONES, S.A. DE C.V.'),
          ('TSO060406Q24','TELIKO SOLUTIONS  SOCIEDAD ANONIMA PROMOTORA DE INVERSION  DE CAPITAL VARIABLE  S.A.P.I- DE C.V.'),
          ('TSO190413U97','TERRAFORMACIONES SUSTENTABLES Y SERVICIOS SA DE CV'),
          ('TSS140704J86','TEASA SMART SOLUTIONS S.A. DE C.V.'),
          ('TSS1708149B6','T3 S TECNOLOGIAS MEXICO SA DE CV'),
          ('TST160610PK7','TWA STUDIO S.A. DE C.V.'),
          ('TST170216J99','TICS TRADE COMMERCE SA DE CV'),
          ('TTC221207LJ1','TUTUM TECH S.A. DE C.V.'),
          ('TTE160401EP6','TODO PARA TU EVENTO SC DE RL DE CV'),
          ('TTE210803TGA','TRAUMA TECH SA DE CV'),
          ('TTE220728DE0','TIN TIN EL FIGURIN SC DE RL DE CV'),
          ('TTF1906219R5','TEXTILES TP S.A DE C.V.'),
          ('TTP1709253T1','TAYIRA TRAVEL SA DE CV'),
          ('TTR890210TF6','TAB TECNOLOGIA Y SERVICIOS SA DE CV'),
          ('TTS150303AI0','TEST TECHNOLOGY TECNOLOGIA DE PRUEBA Y MEDICION SA DE CV'),
          ('TTT140217J62','JORGE ALEJANDRO TRUJILLO AGUIRRE'),
          ('TUAJ650701','TRANSPORTES UNIDOS DE COMUNEROS Y EJIDATARIOS DE TLALPAN S. DE P.R. DE R.L.'),
          ('TUC131219746','TECNOLOGIA CON UN ENFOQUE HUMANO KOHMI S DE RL DE CV'),
          ('TUE2002147S0','TALLERES UNIDOS MEXICANOS S.A. DE C.V.'),
          ('TUM691114HS1','THERACLINIC DEL VALLE S.C.'),
          ('TVA090121RS2','TECNO VISSION DIGITAL S.A. DE C.V.'),
          ('TVD060119850','TECNOLOGIA DE VANGUARDIA ESCORZA S DE RL DE CV'),
          ('TVE11050396A','TEAASI VIDEO SA DE CV'),
          ('TVI130211GD6','TWURST, S.A. DE C.V.'),
          ('TWU170130IS4','TEXTILES DE XALPA DE LA SIERRA SC DE RL DE CV'),
          ('TXS220924AB1','EDGAR ALLAN USCANGA AGUAS'),
          ('UAAE830713','FRANCISCO JAVIER UGALDE GONZALEZ'),
          ('UAGF530906','RUBEN DAVID UZCANGA MORENOBACA'),
          ('UAMR800504','UNION DE AGRO PRODUCTORES DE MAGDALENA PETLACALCO S. DE P.R. DE R.L.'),
          ('UAP990513ID4','UMP COBERTURA E IMAGEN EN MEDIOS PUBLICITARIOS SA DE CV'),
          ('UCE080407PL3','UNION DE CAMPESINOS,EJIDATARIOS Y COMUNEROS, GRUPO MONTE ALEGRE S.P.R. DE R.L.'),
          ('UCE140605RI0','UNION CAMPESINA EJIDAL MORELOS, S. DE P.R. DE R.L.'),
          ('UCE9812296HA','URBALAM CONSTRUCCIONES SA DE CV'),
          ('UCO110128Q72','ULTIMATE CONSTRUCTION SA DE CV'),
          ('UCO230413UX6','URBANIZACIONES CIVILES POTOSINAS S.A. DE C.V.'),
          ('UCP100317BB4','URBANIZADORA Y COMERCIALIZADORA SLP, SA DE CV'),
          ('UCS120326FS8','UNIVERSIDAD DEL CLAUSTRO DE SOR JUANA, A.C.'),
          ('UCS941021DY0','UNIENDO ESPERANZAS JUAN RODRIGUEZ SC DE RL DE CV'),
          ('UEJ2311238B0','JOSE ALBERTO URCELAY SANCHEZ'),
          ('UESA760430','UNION EMPRESARIAL V Y A SA DE CV'),
          ('UEV120509PA2','URBANIKONSTRUCCIONES GRAYCOLORS, S.A. DE C.V.'),
          ('UGR190920HE7','UNIVERSIDAD HUMANITAS SC'),
          ('UHU9012074A8','CARLOS FEDERICO URIEGAS AVENDANO'),
          ('UIAC481115','JAVIER URBINA COLULA'),
          ('UICJ910515','ARTURO URIBE GORGONIO'),
          ('UIGA710123','UAV LATAM MEXICO, S.A DE C.V'),
          ('ULM2109232J2','URBAN LED TECHNOLOGY SA DE CV'),
          ('ULT2005127D4','ULTRASIST, S. A. DE C. V.'),
          ('ULT940623AG0','ULLER MEDICAL S DE RL DE CV'),
          ('UME160601LN0','UNICORNIO DE MEXICO, S.A. DE C.V.'),
          ('UME950428644','UNIVERSAL MOTOR GERATE DE MEXICO SA DE CV'),
          ('UMG9708276L2','UNIDAD DE MEDICINA INTEGRAL, S.A DE C.V'),
          ('UMI910506EJ9','UNAMI SA DE CV'),
          ('UNA141121N18','ULTRA NAYAA HIGIENIZACION S.A DE C.V'),
          ('UNH200520IY5','UNINDUSTRIAS, S.A. DE C.V.'),
          ('UNI000208133','UNIPARTS SA DE CV'),
          ('UNI590804UB2','UNINET S.A. DE C.V.'),
          ('UNI951013RC1','UP-GRADE OIL DE MEXICO, S.A. DE C.V.'),
          ('UOM131010B39','UNIDADES DE PERSONAL Y ALUMNOS SAPI DE CV'),
          ('UPA170428HH8','EL UNIVERSAL COMPANIA PERIODISTICA NACIONAL SA DE CV'),
          ('UPN830920KC4','USCANGA PRODUCCIONES SAS DE CV'),
          ('UPR240118EAA','ULCAYANA SERVICIOS SA DE CV'),
          ('USE2012096M5','UNIDADES DE SOLUCIONES DE LIMPIEZA EN MEXICO UNISOL SA DE CV'),
          ('USL210930547','UNIVERSAL SUPPLIERS DE MEXICO, S.A. DE C.V.'),
          ('USM9401115I2','UNION UPAUI SC DE RL DE CV'),
          ('UUP2310252J7','JUAN CARLOS VALDEZ AREVALO'),
          ('VAAJ650717','RAFAEL VARGAS ARCE'),
          ('VAAR740125','TRINIDAD VAZQUEZ AMBRIZ'),
          ('VAAT670521','CLAUDIA GUADALUPE VALENCIA CARMONA'),
          ('VACC901114','FEDERICO ALBERTO VALE CHIRINO'),
          ('VACF641225','JESUS MACARIO VAZQUEZ CARACHEO'),
          ('VACJ781017','DAVID VAZQUEZ GARCIA'),
          ('VAGD731122','PABLO ALBERTO VAZQUEZ GOMEZ'),
          ('VAGP580816','VIRGINIA VAZQUEZ HERNANDEZ'),
          ('VAHV700131','JOSE ANGEL VAZQUEZ JUAREZ'),
          ('VAJA610423','VALCOMEX SA DE CV'),
          ('VAL870720UP8','NIMROD OSMAR VALDES LIEBANA'),
          ('VALN011019','NORMA ISELA VASQUEZ LAZARO'),
          ('VALN730120','ERENDIRA DEL VALLE MERINO'),
          ('VAME820903','MARTHA VIRGINIA VAZQUEZ MENDIOLA'),
          ('VAMM880123','RAYMUNDO HERMILO VAZQUEZ MOZA'),
          ('VAMR650307','EDDY JHOVANY VALLEJO OSORIO'),
          ('VAOE910618','ANDRES FREDERIC VARGAS RIVERA'),
          ('VARA881203','AARON HECTOR VALENCIA RAMIREZ'),
          ('VARA890516','VHERDEJO ASESORES SC'),
          ('VAS210802RS7','JOSE ANTONIO VARELA SOTO'),
          ('VASA530514','ABRAHAM LEONARDO VALENCIA SANABRIA'),
          ('VASA801106','GUADALUPE JUVENTINO VALENCIA SANCHEZ'),
          ('VASG600125','MARTIN VAZQUEZ SANCHEZ'),
          ('VASM830729','MARIA ESTHER DE LOS ANGELES VAZQUEZ TORRES'),
          ('VATE640802','MAURICIO VAZQUEZ TECHICHIL'),
          ('VATM870327','VALUE AUTOMOTRIZ SA DE CV'),
          ('VAU991125RY4','GERARDO VAZQUEZ ZARATE'),
          ('VAZG770924','VORTEX BUSSINES S. DE R.L. DE C.V.'),
          ('VBU171020520','VOYAGER CHANGUE SC DE RL DE CV'),
          ('VCA190924NK8','VER CHEM, S.A. DE C.V.'),
          ('VCE051014QNA','VIBER COMMERCE MEXICO S.A DE C.V.'),
          ('VCM220323I83','VIA CONTRACTING, S.A. DE C.V.'),
          ('VCO080311JK6','VASANTA COMUNICACIONES, S.A.P.I. DE C.V.'),
          ('VCO170209BU8','VASCULARIS CORS SC DE RL DE CV'),
          ('VCO221111M49','VATTEN CONSTRUCCIONES SA DE CV'),
          ('VCO230519QX9','VOCES CONTRA EL SILENCIO, VIDEO INDEPENDIENTE, A.C.'),
          ('VCS000316857','VITTO CLEAN SERVICE SA DE CV'),
          ('VCS061115533','VALKIRYA DIGITAL MEDIA, S.A. DE C.V.'),
          ('VDM160915JJ4','VAC DESARROLLO DE PROYECTOS Y NEGOCIOS SA DE CV'),
          ('VDP220629PD8','IVAN JESUS VELASCO ALMANZA'),
          ('VEAI740606','VISION ECOLOGICA S.A. DE C.V.'),
          ('VEC080807T65','VEHICLE EMISSIONS CONTROL SA DE CV'),
          ('VEC171116M67','VALERIA ALEJANDRA VELA CARDENAS'),
          ('VECV940222','JULIETA VELAZQUEZ FLORES'),
          ('VEFJ740916','BALBINA VELAZQUEZ HERNANDEZ'),
          ('VEHB830331','ANA LAURA VELAZQUEZ LEALDE'),
          ('VELA860710','MAYRA VELAZQUEZ LEMUS'),
          ('VELM811119','JOSE GUADALUPE VEGA MORALES'),
          ('VEMG730221','JUAN RUBEN VELAZQUEZ MARQUEZ'),
          ('VEMJ590610','JUAN JOSE VELAZQUEZ MONROY'),
          ('VEMJ741105','LEOPOLDO VELAZQUEZ MATEOS'),
          ('VEML621128','VENROSS S. DE R.L. DE C.V.'),
          ('VEN060221RXA','ISRAEL ARTURO VELASCO RIVAS'),
          ('VERI720417','MITZY FERNANDA VEGA VARGAS'),
          ('VEVM991005','RAMON VELAZQUEZ YANEZ'),
          ('VEYR800724','LA VERDURA FELIZ SC DE RL DE CV'),
          ('VFE191121S42','VELATORIOS FUNEZA SA DE CV'),
          ('VFU9504253H4','VIRTUS GENERATION, S.A. DE C.V.'),
          ('VGE180426KU7','VECTOR - MANTENIMIENTO A INMUEBLES, SA DE CV'),
          ('VGM131127H87','VALMAR GO S DE RL DE CV'),
          ('VGO2302278J7','VICMAZA INGENIERIA & CONSTRUCCIONES SA DE CV'),
          ('VIA150914I44','VIALURI SA DE CV'),
          ('VIA190926E28','ANTONIO VILLALPANDO ACUNA'),
          ('VIAA840805','FRANCISCO ANTONIO VILLASENOR ANAYA'),
          ('VIAF910830','GUADALUPE VILLAGRAN ALEGRIA'),
          ('VIAG951211','VIBGREEN SC DE RL DE CV'),
          ('VIB210217IA2','VERSATILIDAD INTERNACIONAL DE COOPERACION OPORTUNA, S.A. DE C.V.'),
          ('VIC131030773','EDUARDO VILLEGAS CASTILLO'),
          ('VICE990317','GUILLERMO AARON VIGIL CHAPA'),
          ('VICG701009','"VEXI INGENIERIA EN VENTILACION S DE RL DE CV"'),
          ('VIE061128HA9','VBL INNOVACION Y ESTRATEGIAS CORPORATIVAS SA DE CV'),
          ('VIE220209DZ1','VERIFICACION INTEGRAL DE EMISIONES SA DE CV'),
          ('VIE960719LW7','LUZ YAZMIN VIRAMONTES FABELA'),
          ('VIFL861204','HECTOR VIVEROS GARCIA'),
          ('VIGH731125','LIRIA VILLEGAS HERNANDEZ'),
          ('VIHL860822','CRISTINA CAROLINA VILLEDA LOMAS'),
          ('VILC670705','VOLVO GROUP MEXICO S.A. DE C.V.'),
          ('VIM0108105N3','LILIANA VILLALOBOS MARTINEZ'),
          ('VIML810613','VIDERE INFRAESTRUCTURA SA DE CV'),
          ('VIN190222FH2','VALTA INGENIERIA, S.A. DE C.V.'),
          ('VIN211028M90','VAED INGENIERIA SA DE CV'),
          ('VIN220930I53','VIP INGENIERIA, S.A. DE C.V.'),
          ('VIP9211279D5','HECTOR VIVAR PINEDA'),
          ('VIPH910823','JUAN GABRIEL VIGUERAS PAREDES'),
          ('VIPJ740421','JOSE CAYETANO VIEYRA RODRIGUEZ'),
          ('VIRC580907','GEORGINA VILLEDA RAMIREZ'),
          ('VIRG601129','VIANEY VILLA RANGEL'),
          ('VIRV970906','ARTURO VILLEGAS SANCHEZ'),
          ('VISA760802','LUIS GABRIEL VIEYRA VENEGAS'),
          ('VIVL710611','VIXIONERE S A P I DE CV'),
          ('VIX150528DQ0','VIXMOR S. DE R.L. DE C.V.'),
          ('VIX190110PT6','VANE JOYAS SA DE CV'),
          ('VJO201125D73','VIXI KUSII SC DE RL DE CV'),
          ('VKU2211203J8','VIVEROS LARA, S.A. DE C.V.'),
          ('VLA080602E58','VENTANAS DE MADERA SA DE CV'),
          ('VMA011121M79','VERIFICACIONES MEXICANAS SA DE CV'),
          ('VME030922KS2','VALCAROL MEXICANA S.A DE C.V'),
          ('VME140221GJ8','VIC MEDIA SA DE CV'),
          ('VME190311645','VICERT DE MEXICO SA DE CV'),
          ('VME220503P31','INFOBAE MEXICO S.A. DE C.V.'),
          ('VNE1308144H2','VOLTIURI S.A. DE C.V.'),
          ('VOL1909112R6','V PHARMA SA DE CV'),
          ('VPH2208309V9','VIVEROS PROFLORES S.C. DE R.L. DE C.V.'),
          ('VPR1404047N5','VIRAL PRODUCCIONES S DE RL DE CV'),
          ('VPR221017KB8','VALLEMEX RECICLAJES S.A. DE C.V.'),
          ('VRE110309LF8','LA VENTANITA DE REGINA SC DE RL DE CV'),
          ('VRE2107054W6','VERTICE 2R, S.A. DE C.V.'),
          ('VRX220331PJ5','V2 SERVICES S. DE R.L. DE C.V.'),
          ('VSE100719R82','VIG SOLUCIONES, S. A. DE C. V.'),
          ('VSO130409GT4','VE+ S.A.P.I. DE C.V.'),
          ('VSU140630NL8','VCP TECNOLOGIA S DE RL DE CV'),
          ('VTE1301097E4','VITHER TECH S.A. DE C.V.'),
          ('VTE1706301V0','VOITH TURBO S.A. DE C.V.'),
          ('VTU990113Q92','V&P VIA PONIENTE SOCIEDAD ANONIMA PROMOTORA DE INVERSION DE CAPITAL VARIABLE'),
          ('VVP191209LU0','VIXI XOCOLATL SC DE RL DE CV'),
          ('VXO190611I38','WACHUMA S DE RL DE CV'),
          ('WAC190206547','WAKAWAY S.A.P.I DE CV'),
          ('WAK1603312Z5','WASISTEM SA DE CV'),
          ('WAS230707D29','WINE BEAUTY SECRET SC DE RL DE CV'),
          ('WBS221110S62','WONDERMEDIA CONSULTING S DE RL DE CV'),
          ('WCO1908274S0','WORLD DIAGNOSTIC S A P I DE CV'),
          ('WDI2302021E5','WEB ID SA DE CV'),
          ('WEB170710NT4','WIDEFFECT S.A DE C.V'),
          ('WID190530E7A','WILK S DE RL DE CV'),
          ('WIL220520Q36','WORK LEVEL SA DE CV'),
          ('WLE090728TD9','WWPL MEXICO SA DE CV'),
          ('WME060404C97','WAYAK MEDIA S.A DE C.V.'),
          ('WME160502DV6','WATERBLASTING DE MEXICO SA DE CV'),
          ('WME200806GI8','WELL PUBLICIDAD SA DE CV'),
          ('WPU2210146P1','WERT SOLUTIONS WORLD SA DE CV'),
          ('WSW210921962','XIAN ALIANZAS INTELIGENTES SA DE CV'),
          ('XAI201009DJ3','XIMEM CONSTRUCCIONES S DE RL DE CV'),
          ('XCO201209238','XPERT CONSULTORES EN TECNOLOGIAS Y COMUNICACIONES, SA DE CV'),
          ('XCT120306M84','XETERON, S.A. DE C.V.'),
          ('XET170703MJ7','XIPACONSULTORIA SA DE CV'),
          ('XIP2007247U2','XWER IT SOLUTIONS S.A. DE C.V.'),
          ('XIS180928LI5','XOCHIMEH SC DE RL DE CV'),
          ('XOC191001L7A','XTRA PARKING SA DE CV'),
          ('XPA210222EW2','XIUHCOALT SERVICIOS Y COMERCIALIZACION SAS DE CV'),
          ('XSC221026GF4','XTRATEGIA EN SERVICIOS DE MERCADOTECNIA SA DE CV'),
          ('XSM0410041Z4','XINET SOLUTIONS SA DE CV'),
          ('XSO050110MQA','XOCHICALLI TRADICION CON SABOR SC DE RL DE CV'),
          ('XTS190930KJ3','XYNTER S.A. DE C.V.'),
          ('XYN150219PT5','YADAME SAS DE CV'),
          ('YAD190129ND6','YVEMAZ ARQUITECTOS SC DE RL DE CV'),
          ('YAR2307212J8','ADRIAN YANEZ SANCHEZ'),
          ('YASA671023','YAVELMAR SOCIEDAD ANONIMA DE CAPITAL VARIABLE'),
          ('YAV181113D87','YESPE CONSTRUCCIONES SA DE CV'),
          ('YCO111108121','YC CONSTRUCCIONES Y PROYECTOS DEL SUR S.A. DE C.V.'),
          ('YCP150310V88','YANTMER CONSULTORIA Y AUDITORIA, S. C.'),
          ('YCY080827RHA','YEYECO CONSTRUCCIONES Y PROYECTOS SA DE CV'),
          ('YCY120514V4A','YENILEME, S.A. DE C.V.'),
          ('YEN161216II5','YELLOW EQUIPMENT RENTAL STORE SA DE CV'),
          ('YER010307938','IVAN YAIR YEPEZ SANDOVAL'),
          ('YESI880810','YNP INGENIERIA SA DE CV'),
          ('YIN221005252','YITO SA DE CV'),
          ('YIT1707265T2','Y Y A PROYECTOS COMERCIALES SA DE CV'),
          ('YPC230711PM7','YESO Y PIEDRAS SA DE CV'),
          ('YPI190703EM7','YUUMAK TECH CONSULTORIA E INFRAESTRUCTURA SA DE CV'),
          ('YTC191114BT3','ANA ITZEL ZAVALA BERRY'),
          ('ZABA910704','ZICLO ARTE Y DISENO, S. A. DE C. V.'),
          ('ZAD1606179C1','JOSUE ULISSES ZARATE ESPITIA'),
          ('ZAEJ820412','KARINA PAOLA ZAMORA LOPEZ'),
          ('ZALK880314','JEANNETTE ZAMUDIO MARQUEZ'),
          ('ZAMJ670813','URIEL ZAPATA ORTEGA'),
          ('ZAOU780331','VICTOR HUGO ZAMORA PERALTA'),
          ('ZAPV901119','ZANDER ARQUITECTURA Y REMODELACIONES SA DE CV'),
          ('ZAR210623NV9','ZEMPOALTECA CONSTRUCCIONES S.A. DE C.V.'),
          ('ZCO011206DF4','ZAZCABA CONSTRUYE, S.A. DE C.V.'),
          ('ZCO030716SU1','ZYLAC CONSTRUCCIONES SA DE CV'),
          ('ZCO050915P98','ZAMMARTI COMERCIALIZADORA S DE RL DE CV'),
          ('ZCO090703SC8','ZITUM DESARROLLADORES SA DE CV'),
          ('ZDE120713BN5','ZDENKO SA DE CV'),
          ('ZDE1712186W7','SANTA ZERON HERNANDEZ'),
          ('ZEHS671102','ZERIFAR, S.A. DE C.V.'),
          ('ZER9808059I5','ZARAGOZA GARCIA MERCADO Y ASOCIADOS, S.C.'),
          ('ZGM171220FJA','LA ZAZON DE LA MARUJA SC DE RL DE CV'),
          ('ZMA230613Q85','ZWICHZ DE MEXICO, S. DE R.L. DE C.V.'),
          ('ZME080220CIA','ZU MEDIA S.A. DE C.V.'),
          ('ZME100813D51','ZK PLATINUM SA DE CV'),
          ('ZPL1305075Q4','ZARAGOZA ROCHA Y ASOCIADOS, S.C.'),
          ('ZRA970529J71','ZAP SERVICIOS DIGITALES SC'),
          ('ZSD060503FWA','ZUMBY SERVICIOS PROFESIONALES S.A DE C.V'),
          ('ZSP1611308A7','LUIS IVAN ZURITA GOMEZ');

select count(idStrRFCProveedor)
	from tblProveedores; --5,322 registros válidos

select * from vwProveedores
	where strRazónSocialProveedor like '%LIMPIEZA%';

select * from vwProveedores
	where strRazónSocialProveedor like '%KEMPER%';




