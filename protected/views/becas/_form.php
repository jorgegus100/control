<?php
/* @var $this BecasController */
/* @var $model Becas */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'becas-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'centroBeca'); ?>
		<?php echo $form->textField($model,'centroBeca'); ?>
		<?php echo $form->error($model,'centroBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'gestionBeca'); ?>
		<?php echo $form->textField($model,'gestionBeca',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'gestionBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'servicioBeca'); ?>
		<?php echo $form->textField($model,'servicioBeca',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'servicioBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'valorBeca'); ?>
		<?php echo $form->textField($model,'valorBeca'); ?>
		<?php echo $form->error($model,'valorBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tipoCoberBeca'); ?>
		<?php echo $form->textField($model,'tipoCoberBeca'); ?>
		<?php echo $form->error($model,'tipoCoberBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'confirBeca'); ?>
		<?php echo $form->textField($model,'confirBeca'); ?>
		<?php echo $form->error($model,'confirBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'inicioBeca'); ?>
		<?php echo $form->textField($model,'inicioBeca'); ?>
		<?php echo $form->error($model,'inicioBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'finBeca'); ?>
		<?php echo $form->textField($model,'finBeca'); ?>
		<?php echo $form->error($model,'finBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'respBeca'); ?>
		<?php echo $form->textField($model,'respBeca'); ?>
		<?php echo $form->error($model,'respBeca'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->