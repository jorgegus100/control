<?php
/* @var $this CentrosController */
/* @var $model Centros */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idCentro'); ?>
		<?php echo $form->textField($model,'idCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nomCentro'); ?>
		<?php echo $form->textField($model,'nomCentro',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'calleCentro'); ?>
		<?php echo $form->textField($model,'calleCentro',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numDomCentro'); ?>
		<?php echo $form->textField($model,'numDomCentro',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'pisoCentro'); ?>
		<?php echo $form->textField($model,'pisoCentro',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'telfCentro'); ?>
		<?php echo $form->textField($model,'telfCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'faxCentro'); ?>
		<?php echo $form->textField($model,'faxCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'emailCentro'); ?>
		<?php echo $form->textField($model,'emailCentro',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'expedienteCentro'); ?>
		<?php echo $form->textField($model,'expedienteCentro',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'loteCentro'); ?>
		<?php echo $form->textField($model,'loteCentro',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'provCentro'); ?>
		<?php echo $form->textField($model,'provCentro',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'localidadCentro'); ?>
		<?php echo $form->textField($model,'localidadCentro',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'personalCentro'); ?>
		<?php echo $form->textField($model,'personalCentro',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codPostalCentro'); ?>
		<?php echo $form->textField($model,'codPostalCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'cifCentro'); ?>
		<?php echo $form->textField($model,'cifCentro',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codigoCentro'); ?>
		<?php echo $form->textField($model,'codigoCentro',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'respCreacionCentro'); ?>
		<?php echo $form->textField($model,'respCreacionCentro'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->