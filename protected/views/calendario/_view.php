<?php
/* @var $this CalendarioController */
/* @var $data Calendario */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idCalendario')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idCalendario), array('view', 'id'=>$data->idCalendario)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('servicioCal')); ?>:</b>
	<?php echo CHtml::encode($data->servicioCal); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('inicioCal')); ?>:</b>
	<?php echo CHtml::encode($data->inicioCal); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('finCal')); ?>:</b>
	<?php echo CHtml::encode($data->finCal); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('diasCal')); ?>:</b>
	<?php echo CHtml::encode($data->diasCal); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('centroCal')); ?>:</b>
	<?php echo CHtml::encode($data->centroCal); ?>
	<br />


</div>