<?php
/* @var $this AsistenciasController */
/* @var $model Asistencias */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'asistencias-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'estudianteAsistencia'); ?>
		<?php echo $form->textField($model,'estudianteAsistencia'); ?>
		<?php echo $form->error($model,'estudianteAsistencia'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fechaAsistencia'); ?>
		<?php echo $form->textField($model,'fechaAsistencia'); ?>
		<?php echo $form->error($model,'fechaAsistencia'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'estadoAsistencia'); ?>
		<?php echo $form->textField($model,'estadoAsistencia'); ?>
		<?php echo $form->error($model,'estadoAsistencia'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'servicioAsistencia'); ?>
		<?php echo $form->textField($model,'servicioAsistencia'); ?>
		<?php echo $form->error($model,'servicioAsistencia'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->