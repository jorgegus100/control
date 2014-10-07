<?php
/* @var $this PagadorController */
/* @var $model Pagador */

$this->breadcrumbs=array(
	'Pagadors'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Pagador', 'url'=>array('index')),
	array('label'=>'Manage Pagador', 'url'=>array('admin')),
);
?>

<h1>Create Pagador</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>