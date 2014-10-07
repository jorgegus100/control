<?php
/* @var $this BecasController */
/* @var $data Becas */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idBeca')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idBeca), array('view', 'id'=>$data->idBeca)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('centroBeca')); ?>:</b>
	<?php echo CHtml::encode($data->centroBeca); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gestionBeca')); ?>:</b>
	<?php echo CHtml::encode($data->gestionBeca); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('servicioBeca')); ?>:</b>
	<?php echo CHtml::encode($data->servicioBeca); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('valorBeca')); ?>:</b>
	<?php echo CHtml::encode($data->valorBeca); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tipoCoberBeca')); ?>:</b>
	<?php echo CHtml::encode($data->tipoCoberBeca); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('confirBeca')); ?>:</b>
	<?php echo CHtml::encode($data->confirBeca); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('inicioBeca')); ?>:</b>
	<?php echo CHtml::encode($data->inicioBeca); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('finBeca')); ?>:</b>
	<?php echo CHtml::encode($data->finBeca); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('respBeca')); ?>:</b>
	<?php echo CHtml::encode($data->respBeca); ?>
	<br />

	*/ ?>

</div>