<?php
/* @var $this UsuariosController */
/* @var $model Usuarios */

$this->breadcrumbs=array(
	'Usuarios'=>array('index'),
	'Create',
);

$this->menu=$this->menuUsuarios;
?>

<h1>Crear Usuarios</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>