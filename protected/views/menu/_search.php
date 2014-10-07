<?php
/* @var $this MenuController */
/* @var $model Menu */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idMenu'); ?>
		<?php echo $form->textField($model,'idMenu'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nomMenu'); ?>
		<?php echo $form->textField($model,'nomMenu',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'costoDesayuno'); ?>
		<?php echo $form->textField($model,'costoDesayuno'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'costoComida'); ?>
		<?php echo $form->textField($model,'costoComida'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->