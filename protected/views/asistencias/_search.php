<?php
/* @var $this AsistenciasController */
/* @var $model Asistencias */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idAsistencia'); ?>
		<?php echo $form->textField($model,'idAsistencia'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'estudianteAsistencia'); ?>
		<?php echo $form->textField($model,'estudianteAsistencia'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fechaAsistencia'); ?>
		<?php echo $form->textField($model,'fechaAsistencia'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'estadoAsistencia'); ?>
		<?php echo $form->textField($model,'estadoAsistencia'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'servicioAsistencia'); ?>
		<?php echo $form->textField($model,'servicioAsistencia'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->