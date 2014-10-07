<?php
/* @var $this RecibosController */
/* @var $data Recibos */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idRecibos')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idRecibos), array('view', 'id'=>$data->idRecibos)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('colegioRecibo')); ?>:</b>
	<?php echo CHtml::encode($data->colegioRecibo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alumnoRecibo')); ?>:</b>
	<?php echo CHtml::encode($data->alumnoRecibo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fechEmisionRecibo')); ?>:</b>
	<?php echo CHtml::encode($data->fechEmisionRecibo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('estadoRecibo')); ?>:</b>
	<?php echo CHtml::encode($data->estadoRecibo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('conceptoRecibo')); ?>:</b>
	<?php echo CHtml::encode($data->conceptoRecibo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('importeRecibo')); ?>:</b>
	<?php echo CHtml::encode($data->importeRecibo); ?>
	<br />


</div>