<?php
/* @var $this EstudianteController */
/* @var $model Estudiante */

$this->breadcrumbs=array(
	'Estudiantes'=>array('index'),
	$model->idEstudiante=>array('view','id'=>$model->idEstudiante),
	'Update',
);

$this->menu=$this->menuEstudiantes;
?>

<h1>Modificar datos de estudiante <?php echo $model->nomEstudiante.' '.$model->apellEstudiante; ?></h1>

<?php



$this->renderPartial('_form', array('model'=>$model,
                                    'nombreCentro'=>$nombreCentro,
                                    'modelCSearch'=>$modelCSearch,
                                    'create'=>0)); ?>