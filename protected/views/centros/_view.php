<?php
/* @var $this CentrosController */
/* @var $data Centros */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idCentro')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idCentro), array('view', 'id'=>$data->idCentro)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nomCentro')); ?>:</b>
	<?php echo CHtml::encode($data->nomCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('calleCentro')); ?>:</b>
	<?php echo CHtml::encode($data->calleCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('numDomCentro')); ?>:</b>
	<?php echo CHtml::encode($data->numDomCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pisoCentro')); ?>:</b>
	<?php echo CHtml::encode($data->pisoCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('telfCentro')); ?>:</b>
	<?php echo CHtml::encode($data->telfCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('faxCentro')); ?>:</b>
	<?php echo CHtml::encode($data->faxCentro); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('emailCentro')); ?>:</b>
	<?php echo CHtml::encode($data->emailCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('expedienteCentro')); ?>:</b>
	<?php echo CHtml::encode($data->expedienteCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('loteCentro')); ?>:</b>
	<?php echo CHtml::encode($data->loteCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('provCentro')); ?>:</b>
	<?php echo CHtml::encode($data->provCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('localidadCentro')); ?>:</b>
	<?php echo CHtml::encode($data->localidadCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('personalCentro')); ?>:</b>
	<?php echo CHtml::encode($data->personalCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('codPostalCentro')); ?>:</b>
	<?php echo CHtml::encode($data->codPostalCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cifCentro')); ?>:</b>
	<?php echo CHtml::encode($data->cifCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('codigoCentro')); ?>:</b>
	<?php echo CHtml::encode($data->codigoCentro); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('respCreacionCentro')); ?>:</b>
	<?php echo CHtml::encode($data->respCreacionCentro); ?>
	<br />

	*/ ?>

</div>