<?php
/* @var $this MenuController */
/* @var $data Menu */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idMenu')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idMenu), array('view', 'id'=>$data->idMenu)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nomMenu')); ?>:</b>
	<?php echo CHtml::encode($data->nomMenu); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('costoDesayuno')); ?>:</b>
	<?php echo CHtml::encode($data->costoDesayuno); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('costoComida')); ?>:</b>
	<?php echo CHtml::encode($data->costoComida); ?>
	<br />


</div>