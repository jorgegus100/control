<?php
/* @var $this AsistenciasController */
/* @var $data Asistencias */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idAsistencia')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idAsistencia), array('view', 'id'=>$data->idAsistencia)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('estudianteAsistencia')); ?>:</b>
	<?php echo CHtml::encode($data->estudianteAsistencia); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fechaAsistencia')); ?>:</b>
	<?php echo CHtml::encode($data->fechaAsistencia); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('estadoAsistencia')); ?>:</b>
	<?php echo CHtml::encode($data->estadoAsistencia); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('servicioAsistencia')); ?>:</b>
	<?php echo CHtml::encode($data->servicioAsistencia); ?>
	<br />


</div>