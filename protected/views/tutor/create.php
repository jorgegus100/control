<?php
/* @var $this TutorController */
/* @var $model Tutor */

$this->breadcrumbs=array(
	'Tutors'=>array('index'),
	'Create',
);

$this->menu=$this->menuEstudiantes;
?>

<h1>Crear Tutor</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>