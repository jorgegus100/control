<?php
/* @var $this TutorController */
/* @var $model Tutor */

$this->breadcrumbs=array(
	'Tutors'=>array('index'),
	$model->idTutor=>array('view','id'=>$model->idTutor),
	'Update',
);

$this->menu=array(
	array('label'=>'List Tutor', 'url'=>array('index')),
	array('label'=>'Create Tutor', 'url'=>array('create')),
	array('label'=>'View Tutor', 'url'=>array('view', 'id'=>$model->idTutor)),
	array('label'=>'Manage Tutor', 'url'=>array('admin')),
);
?>

<h1>Update Tutor <?php echo $model->idTutor; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>