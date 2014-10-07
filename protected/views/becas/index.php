<?php
/* @var $this BecasController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Becases',
);

$this->menu=array(
	array('label'=>'Create Becas', 'url'=>array('create')),
	array('label'=>'Manage Becas', 'url'=>array('admin')),
);
?>

<h1>Becases</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
