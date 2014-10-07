<?php
/* @var $this RecibosController */
/* @var $model Recibos */

$this->breadcrumbs=array(
	'Reciboses'=>array('index'),
	$model->idRecibos=>array('view','id'=>$model->idRecibos),
	'Update',
);

$this->menu=array(
	array('label'=>'List Recibos', 'url'=>array('index')),
	array('label'=>'Create Recibos', 'url'=>array('create')),
	array('label'=>'View Recibos', 'url'=>array('view', 'id'=>$model->idRecibos)),
	array('label'=>'Manage Recibos', 'url'=>array('admin')),
);
?>

<h1>Update Recibos <?php echo $model->idRecibos; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>