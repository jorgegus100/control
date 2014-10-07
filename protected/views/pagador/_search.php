<?php
/* @var $this PagadorController */
/* @var $model Pagador */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idPagador'); ?>
		<?php echo $form->textField($model,'idPagador'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ciPagador'); ?>
		<?php echo $form->textField($model,'ciPagador'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nomPagador'); ?>
		<?php echo $form->textField($model,'nomPagador',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->