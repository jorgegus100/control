<?php
/* @var $this PagadorController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Pagadors',
);

$this->menu=array(
	array('label'=>'Create Pagador', 'url'=>array('create')),
	array('label'=>'Manage Pagador', 'url'=>array('admin')),
);
?>

<h1>Pagadors</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
