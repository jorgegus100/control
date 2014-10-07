<?php
/* @var $this EstudianteController */
/* @var $model Estudiante */

$this->breadcrumbs=array(
	'Estudiantes'=>array('index'),
	$model->idEstudiante,
);

$this->menu=$this->menuEstudiantes;
echo CHtml::link('Asignar Centro', '#', array(
    'onclick'=>'$("#mydialog").dialog("open"); return false;',
));

$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
    'id'=>'mydialog',
    // additional javascript options for the dialog plugin
    'options'=>array(
        'title'=>'Asignar Centro',
        'autoOpen'=>false,
        'width' => '600px',
        //'height' => '600px',
        'modal' => true,
        //'resizable' => true,


    ),
));


$this->renderPartial('asigCentro', array('modelCSearch'=>$modelCSearch, 'model'=>$model, 'create'=>0 ));
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>

<h1>Datos Estudiante <?php echo $model->nomEstudiante.' '.$model->apellEstudiante.' '.$model->secApellEstudante; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(

		'nomEstudiante',
		'apellEstudiante',
		'secApellEstudante',
		'ciEstudiante',
		'idTutor',
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
		'idCentroEst',
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
	),
)); ?>
