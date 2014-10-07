<?php
/* @var $this BecasController */
/* @var $model Becas */

$this->breadcrumbs=array(
	'Becases'=>array('index'),
	$model->idBeca=>array('view','id'=>$model->idBeca),
	'Update',
);

$this->menu=array(
	array('label'=>'List Becas', 'url'=>array('index')),
	array('label'=>'Create Becas', 'url'=>array('create')),
	array('label'=>'View Becas', 'url'=>array('view', 'id'=>$model->idBeca)),
	array('label'=>'Manage Becas', 'url'=>array('admin')),
);
?>

<h1>Update Becas <?php echo $model->idBeca; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>