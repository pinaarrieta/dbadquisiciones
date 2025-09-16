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




