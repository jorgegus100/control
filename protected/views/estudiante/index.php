<?php
/* @var $this EstudianteController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Estudiantes',
);

$this->menu=$this->menuEstudiantes;
?>

<h1>Estudiantes</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
