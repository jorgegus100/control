<?php
/* @var $this TutorController */
/* @var $data Tutor */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idTutor')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idTutor), array('view', 'id'=>$data->idTutor)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nomTutor')); ?>:</b>
	<?php echo CHtml::encode($data->nomTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('apellTutor')); ?>:</b>
	<?php echo CHtml::encode($data->apellTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('apell2Tutor')); ?>:</b>
	<?php echo CHtml::encode($data->apell2Tutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('direcTutor')); ?>:</b>
	<?php echo CHtml::encode($data->direcTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('dniTutor')); ?>:</b>
	<?php echo CHtml::encode($data->dniTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('sexoTutor')); ?>:</b>
	<?php echo CHtml::encode($data->sexoTutor); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('relAlumTutor')); ?>:</b>
	<?php echo CHtml::encode($data->relAlumTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('principalTutor')); ?>:</b>
	<?php echo CHtml::encode($data->principalTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('calleTutor')); ?>:</b>
	<?php echo CHtml::encode($data->calleTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('numCasaTutor')); ?>:</b>
	<?php echo CHtml::encode($data->numCasaTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pisoTutor')); ?>:</b>
	<?php echo CHtml::encode($data->pisoTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('provinciaTutor')); ?>:</b>
	<?php echo CHtml::encode($data->provinciaTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('localidadTutor')); ?>:</b>
	<?php echo CHtml::encode($data->localidadTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('codPostalTutor')); ?>:</b>
	<?php echo CHtml::encode($data->codPostalTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('telfTutor')); ?>:</b>
	<?php echo CHtml::encode($data->telfTutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('telf2Tutor')); ?>:</b>
	<?php echo CHtml::encode($data->telf2Tutor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('emailTutor')); ?>:</b>
	<?php echo CHtml::encode($data->emailTutor); ?>
	<br />

	*/ ?>

</div>