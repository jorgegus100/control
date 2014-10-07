<?php
/* @var $this CentrosController */
/* @var $model Centros */

$this->breadcrumbs=array(
	'Centroses'=>array('index'),
	'Create',
);

$this->menu=$this->menuCentros;
?>

<h1>Crear un Centro</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>