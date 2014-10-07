<?php
/* @var $this BecasController */
/* @var $model Becas */

$this->breadcrumbs=array(
	'Becases'=>array('index'),
	$model->idBeca,
);

$this->menu=array(
	array('label'=>'List Becas', 'url'=>array('index')),
	array('label'=>'Create Becas', 'url'=>array('create')),
	array('label'=>'Update Becas', 'url'=>array('update', 'id'=>$model->idBeca)),
	array('label'=>'Delete Becas', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->idBeca),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Becas', 'url'=>array('admin')),
);
?>

<h1>View Becas #<?php echo $model->idBeca; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'idBeca',
		'centroBeca',
		'gestionBeca',
		'servicioBeca',
		'valorBeca',
		'tipoCoberBeca',
		'confirBeca',
		'inicioBeca',
		'finBeca',
		'respBeca',
	),
)); ?>
