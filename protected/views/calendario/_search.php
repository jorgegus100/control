<?php
/* @var $this CalendarioController */
/* @var $model Calendario */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idCalendario'); ?>
		<?php echo $form->textField($model,'idCalendario'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'servicioCal'); ?>
		<?php echo $form->textField($model,'servicioCal'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'inicioCal'); ?>
		<?php echo $form->textField($model,'inicioCal'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'finCal'); ?>
		<?php echo $form->textField($model,'finCal'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'diasCal'); ?>
		<?php echo $form->textField($model,'diasCal',array('size'=>60,'maxlength'=>250)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'centroCal'); ?>
		<?php echo $form->textField($model,'centroCal'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->