<?php
/* @var $this RecibosController */
/* @var $model Recibos */

$this->breadcrumbs=array(
	'Reciboses'=>array('index'),
	$model->idRecibos,
);

$this->menu=array(
	array('label'=>'List Recibos', 'url'=>array('index')),
	array('label'=>'Create Recibos', 'url'=>array('create')),
	array('label'=>'Update Recibos', 'url'=>array('update', 'id'=>$model->idRecibos)),
	array('label'=>'Delete Recibos', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idRecibos),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Recibos', 'url'=>array('admin')),
);
?>

<h1>View Recibos #<?php echo $model->idRecibos; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idRecibos',
		'colegioRecibo',
		'alumnoRecibo',
		'fechEmisionRecibo',
		'estadoRecibo',
		'conceptoRecibo',
		'importeRecibo',
	),
)); ?>
