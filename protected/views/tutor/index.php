<?php
/* @var $this TutorController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tutors',
);

$this->menu=array(
	array('label'=>'Create Tutor', 'url'=>array('create')),
	array('label'=>'Manage Tutor', 'url'=>array('admin')),
);
?>

<h1>Tutors</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
