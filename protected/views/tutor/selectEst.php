

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'estudiante-grid',
	'dataProvider'=>$modelESearch->search(),
	'filter'=>$modelESearch,
	'columns'=>array(

		'nomEstudiante',
		'apellEstudiante',
		'secApellEstudante',
		'ciEstudiante',
        'idCentroEst',
		/*
		'sexEstudiante',
		'nacEstudiante',
		'cursoEstudiante',
		'etapaEstudiante',
		'numCasaEstudiante',
		'pisoEstudiante',
		'provinciaEstudiante',
		'LocalidadEst',
		'calleEstudiante',
		'codPostalEst',
		'paisEst',

		'telEstudiante',
		'emailEstudiante',
		'nroCuentaEst',
		'dietaEstudiante',
		'nutricionEst',
		'tel2Estudiante',
		'menuEst',
		'comidaEst',
		'desayunoEst',
		'becaEst',
		'descuentoEst',
		'diasEstudiante',
		*/
        array(
            'template'=>'{Tutor}{T.Principal}',
            'class'=>'CButtonColumn',
            'buttons'=>array(
            'Tutor'=>array(
                    'url'=>'$this->grid->controller->createUrl("/tutor/asignarEst", array("idEst"=>$data->primaryKey,"id"=>'.$id.',"prin"=>0))',
                    //'click'=>'',
                    'imageUrl'=>Yii::app()->request->baseUrl.'/themes/blackboot/img/picture-check-icon.png',
                ),
            'T.Principal'=>array(
                    'url'=>'$this->grid->controller->createUrl("/tutor/asignarEst", array("idEst"=>$data->primaryKey,"id"=>'.$id.',"prin"=>1))',
                    //'click'=>'',
                    'imageUrl'=>Yii::app()->request->baseUrl.'/themes/blackboot/img/picture-add-icon.png',
                ),
            ),
        ),
	),
)); ?>
