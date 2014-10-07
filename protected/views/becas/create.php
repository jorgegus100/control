<?php
/* @var $this BecasController */
/* @var $model Becas */

$this->breadcrumbs=array(
	'Becases'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Becas', 'url'=>array('index')),
	array('label'=>'Manage Becas', 'url'=>array('admin')),
);
?>

<h1>Create Becas</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>