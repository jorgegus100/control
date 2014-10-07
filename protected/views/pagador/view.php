<?php
/* @var $this PagadorController */
/* @var $model Pagador */

$this->breadcrumbs=array(
	'Pagadors'=>array('index'),
	$model->idPagador,
);

$this->menu=array(
	array('label'=>'List Pagador', 'url'=>array('index')),
	array('label'=>'Create Pagador', 'url'=>array('create')),
	array('label'=>'Update Pagador', 'url'=>array('update', 'id'=>$model->idPagador)),
	array('label'=>'Delete Pagador', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idPagador),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Pagador', 'url'=>array('admin')),
);
?>

<h1>View Pagador #<?php echo $model->idPagador; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idPagador',
		'ciPagador',
		'nomPagador',
	),
)); ?>
