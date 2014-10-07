<?php
/* @var $this BecasController */
/* @var $model Becas */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idBeca'); ?>
		<?php echo $form->textField($model,'idBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'centroBeca'); ?>
		<?php echo $form->textField($model,'centroBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'gestionBeca'); ?>
		<?php echo $form->textField($model,'gestionBeca',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'servicioBeca'); ?>
		<?php echo $form->textField($model,'servicioBeca',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'valorBeca'); ?>
		<?php echo $form->textField($model,'valorBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tipoCoberBeca'); ?>
		<?php echo $form->textField($model,'tipoCoberBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'confirBeca'); ?>
		<?php echo $form->textField($model,'confirBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'inicioBeca'); ?>
		<?php echo $form->textField($model,'inicioBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'finBeca'); ?>
		<?php echo $form->textField($model,'finBeca'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'respBeca'); ?>
		<?php echo $form->textField($model,'respBeca'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->