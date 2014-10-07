<?php
/* @var $this RecibosController */
/* @var $model Recibos */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idRecibos'); ?>
		<?php echo $form->textField($model,'idRecibos'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'colegioRecibo'); ?>
		<?php echo $form->textField($model,'colegioRecibo',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'alumnoRecibo'); ?>
		<?php echo $form->textField($model,'alumnoRecibo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fechEmisionRecibo'); ?>
		<?php echo $form->textField($model,'fechEmisionRecibo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'estadoRecibo'); ?>
		<?php echo $form->textField($model,'estadoRecibo',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'conceptoRecibo'); ?>
		<?php echo $form->textField($model,'conceptoRecibo',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'importeRecibo'); ?>
		<?php echo $form->textField($model,'importeRecibo'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->