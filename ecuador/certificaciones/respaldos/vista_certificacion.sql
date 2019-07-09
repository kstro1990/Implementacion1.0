SELECT id, sitio_comercio, 
(SELECT tb_comercios.nombre FROM tb_comercios WHERE IF(tb_comercios.id > 0,tb_comercios.id = certificacion.id_comercio,"ningun" ) ) as comercio, 
(SELECT tb_colaboradores.nombre FROM tb_colaboradores WHERE IF(tb_colaboradores.id > 0,tb_colaboradores.id = certificacion.id_integrador,"ningun" ) ) as nombre_Integrador, 
(SELECT tb_colaboradores.nombre FROM tb_colaboradores WHERE IF(tb_colaboradores.id > 0,tb_colaboradores.id = certificacion.id_lider,"ninguno" ) ) as nombre_lider,
(SELECT tb_tipointegracion.descripción FROM tb_tipointegracion  WHERE IF(tb_tipointegracion.id > 0,tb_tipointegracion.id = certificacion.id_tipoIntegracion,"ninguno" ) ) as tipo_Integracion,
(SELECT tb_estados.descripcion FROM tb_estados WHERE IF(tb_estados.id > 0 , tb_estados.id = certificacion.id_estado,"sin tb_estados" ) ) as estado,
(SELECT tb_fechas.id FROM tb_fechas WHERE IF(tb_fechas.id_certificacion > 0 , tb_fechas.id_certificacion = certificacion.id,"0" ) ) as id_fechas
FROM certificacion



--tb_fechas.certificacion */