<?php
/* @var $this CalendarioController */
/* @var $model Calendario */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'calendario-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'servicioCal'); ?>
		<?php echo $form->textField($model,'servicioCal'); ?>
		<?php echo $form->error($model,'servicioCal'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'inicioCal'); ?>
		<?php echo $form->textField($model,'inicioCal'); ?>
		<?php echo $form->error($model,'inicioCal'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'finCal'); ?>
		<?php echo $form->textField($model,'finCal'); ?>
		<?php echo $form->error($model,'finCal'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'diasCal'); ?>
		<?php echo $form->textField($model,'diasCal',array('size'=>60,'maxlength'=>250)); ?>
		<?php echo $form->error($model,'diasCal'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'centroCal'); ?>
		<?php echo $form->textField($model,'centroCal'); ?>
		<?php echo $form->error($model,'centroCal'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->