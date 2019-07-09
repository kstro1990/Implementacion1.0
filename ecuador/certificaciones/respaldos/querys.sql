contar por rango de fechas

select count(*)
  from tb_fechas
 where incio >= '2018-09-01'
   and incio < '2018-10-01'

SELECT  COUNT(incio) as SEP ,COUNT(SAP)
FROM tb_fechas
WHERE ((incio <= '2018-01-01'
    AND SAP >= '2018-12-31')
        OR SAP BETWEEN '2016-02-19' AND '2016-02-19'
        OR incio BETWEEN '2018-09-1' AND '2018-09-30')
****************************************   
/*
.btn-primary {
    background: #2579f6;
    background-image: -webkit-linear-gradient(to bottom left, #e14eca, #ba54f5, #e14eca);
    background-image: -o-linear-gradient(to bottom left, #e14eca, #ba54f5, #e14eca);
    background-image: -moz-linear-gradient(to bottom left, #e14eca, #ba54f5, #e14eca);
    background-image: linear-gradient(to bottom left, #2579f6, #2579f6, #2579f6);
    background-size: 200% 200%;
    background-position: top right;
    background-color: #2579f6;
    transition: all 0.15s ease;
    color: #FFFFFF;
    //315bf4
}
*/


SELECT id, sitio_comercio, todo,
(SELECT tb_comercios.nombre FROM tb_comercios WHERE IF(tb_comercios.id > 0,tb_comercios.id = certificacion.id_comercio,"ningun" ) ) as comercio, 
(SELECT tb_colaboradores.nombre FROM tb_colaboradores WHERE IF(tb_colaboradores.id > 0,tb_colaboradores.id = certificacion.id_integrador,"ningun" ) ) as nombre_Integrador, 
(SELECT tb_colaboradores.nombre FROM tb_colaboradores WHERE IF(tb_colaboradores.id > 0,tb_colaboradores.id = certificacion.id_lider,"ninguno" ) ) as nombre_lider,
(SELECT tb_tipointegracion.descripción FROM tb_tipointegracion  WHERE IF(tb_tipointegracion.id > 0,tb_tipointegracion.id = certificacion.id_tipoIntegracion,"ninguno" ) ) as tipo_Integracion,
(SELECT tb_estados.descripcion FROM tb_estados WHERE IF(tb_estados.id > 0 , tb_estados.id = certificacion.id_estado,"dsda" ) ) as estado
FROM certificacion


SELECT id, sitio_comercio, 
(SELECT tb_comercios.nombre FROM tb_comercios WHERE IF(tb_comercios.id > 0,tb_comercios.id = certificacion.id_comercio,"ningun" ) ) as comercio, 
(SELECT tb_colaboradores.nombre FROM tb_colaboradores WHERE IF(tb_colaboradores.id > 0,tb_colaboradores.id = certificacion.id_integrador,"ningun" ) ) as nombre_Integrador, 
(SELECT tb_colaboradores.nombre FROM tb_colaboradores WHERE IF(tb_colaboradores.id > 0,tb_colaboradores.id = certificacion.id_lider,"ninguno" ) ) as nombre_lider,
(SELECT tb_tipointegracion.descripción FROM tb_tipointegracion  WHERE IF(tb_tipointegracion.id > 0,tb_tipointegracion.id = certificacion.id_tipoIntegracion,"ninguno" ) ) as tipo_Integracion,
(SELECT tb_estados.descripcion FROM tb_estados WHERE IF(tb_estados.id > 0 , tb_estados.id = certificacion.id_estado,"dsda" ) ) as estado,
(SELECT tb_fechas.id FROM tb_fechas WHERE IF(tb_fechas.id_certificacion > 0 , tb_fechas.id_certificacion = certificacion.id,"1990/01/01" ) ) as id_fechas
FROM certificacion



SELECT id, sitio_comercio, 
(SELECT tb_comercios.nombre FROM tb_comercios WHERE IF(tb_comercios.id > 0,tb_comercios.id = certificacion.id_comercio,"ningun" ) ) as comercio, 
(SELECT tb_colaboradores.nombre FROM tb_colaboradores WHERE IF(tb_colaboradores.id > 0,tb_colaboradores.id = certificacion.id_integrador,"ningun" ) ) as nombre_Integrador, 
(SELECT tb_colaboradores.nombre FROM tb_colaboradores WHERE IF(tb_colaboradores.id > 0,tb_colaboradores.id = certificacion.id_lider,"ninguno" ) ) as nombre_lider,
(SELECT tb_tipointegracion.descripción FROM tb_tipointegracion  WHERE IF(tb_tipointegracion.id > 0,tb_tipointegracion.id = certificacion.id_tipoIntegracion,"ninguno" ) ) as tipo_Integracion,
(SELECT tb_estados.descripcion FROM tb_estados WHERE IF(tb_estados.id > 0 , tb_estados.id = certificacion.id_estado,"dsda" ) ) as estado,
(SELECT tb_fechas.id FROM tb_fechas WHERE IF(tb_fechas.id_certificacion > 0 , tb_fechas.id_certificacion = certificacion.id,"0" ) ) as id_fechas
FROM certificacion


INSERT INTO certificacion (sitio_comercio) VALUES ("  ")


SELECT monthName(inicio),COUNT (*)
FROM fechas
WHERE inicio >= makedate (year(curdate()),1) AND inicio < makedate(year(curdate()+1,1)) 
GROUP BY monthName(inicio)

SELECT monthName(incio),COUNT (*)
FROM tb_fechas
WHERE incio >= makedate (year(curdate()),1) AND incio < makedate(year(curdate()+1,1)) 
GROUP BY monthName(incio)

SELECT monthName(incio), COUNT(*)
FROM tb_fechas
WHERE incio >= makedate(year(curdate()),1) AND incio < makedate(year(curdate())+1,1)
GROUP BY monthName(incio)

SELECT monthName(incio), COUNT(*)
FROM tb_fechas
WHERE incio >= makedate(year(curdate()),1) AND incio < makedate(year(curdate())+1,1)
GROUP BY monthName(incio)  

vista_integraciones_x_mes


CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localho...

