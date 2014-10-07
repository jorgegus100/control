<?php
/* @var $this PagadorController */
/* @var $model Pagador */

$this->breadcrumbs=array(
	'Pagadors'=>array('index'),
	$model->idPagador=>array('view','id'=>$model->idPagador),
	'Update',
);

$this->menu=array(
	array('label'=>'List Pagador', 'url'=>array('index')),
	array('label'=>'Create Pagador', 'url'=>array('create')),
	array('label'=>'View Pagador', 'url'=>array('view', 'id'=>$model->idPagador)),
	array('label'=>'Manage Pagador', 'url'=>array('admin')),
);
?>

<h1>Update Pagador <?php echo $model->idPagador; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>