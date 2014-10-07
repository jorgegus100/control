<?php
/* @var $this RecibosController */
/* @var $model Recibos */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'recibos-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'colegioRecibo'); ?>
		<?php echo $form->textField($model,'colegioRecibo',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'colegioRecibo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'alumnoRecibo'); ?>
		<?php echo $form->textField($model,'alumnoRecibo'); ?>
		<?php echo $form->error($model,'alumnoRecibo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fechEmisionRecibo'); ?>
		<?php echo $form->textField($model,'fechEmisionRecibo'); ?>
		<?php echo $form->error($model,'fechEmisionRecibo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'estadoRecibo'); ?>
		<?php echo $form->textField($model,'estadoRecibo',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'estadoRecibo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'conceptoRecibo'); ?>
		<?php echo $form->textField($model,'conceptoRecibo',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'conceptoRecibo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'importeRecibo'); ?>
		<?php echo $form->textField($model,'importeRecibo'); ?>
		<?php echo $form->error($model,'importeRecibo'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->