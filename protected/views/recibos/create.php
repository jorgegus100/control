<?php
/* @var $this RecibosController */
/* @var $model Recibos */

$this->breadcrumbs=array(
	'Reciboses'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Recibos', 'url'=>array('index')),
	array('label'=>'Manage Recibos', 'url'=>array('admin')),
);
?>

<h1>Create Recibos</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>