<?php
/* @var $this CentrosController */
/* @var $model Centros */
/* @var $form CActiveForm */

?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'centros-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">los campos marcados con <span class="required">*</span> son requeridos.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'nomCentro'); ?>
		<?php echo $form->textField($model,'nomCentro',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'nomCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'calleCentro'); ?>
		<?php echo $form->textField($model,'calleCentro',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'calleCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'numDomCentro'); ?>
		<?php echo $form->textField($model,'numDomCentro',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'numDomCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'pisoCentro'); ?>
		<?php echo $form->textField($model,'pisoCentro',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'pisoCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'telfCentro'); ?>
		<?php echo $form->textField($model,'telfCentro'); ?>
		<?php echo $form->error($model,'telfCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'faxCentro'); ?>
		<?php echo $form->textField($model,'faxCentro'); ?>
		<?php echo $form->error($model,'faxCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'emailCentro'); ?>
		<?php echo $form->textField($model,'emailCentro',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'emailCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'expedienteCentro'); ?>
		<?php echo $form->textField($model,'expedienteCentro',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'expedienteCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'loteCentro'); ?>
		<?php echo $form->textField($model,'loteCentro',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'loteCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'provCentro'); ?>
		<?php echo $form->textField($model,'provCentro',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'provCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'localidadCentro'); ?>
		<?php echo $form->textField($model,'localidadCentro',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'localidadCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'personalCentro'); ?>
		<?php echo $form->textField($model,'personalCentro',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'personalCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'codPostalCentro'); ?>
		<?php echo $form->textField($model,'codPostalCentro'); ?>
		<?php echo $form->error($model,'codPostalCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'cifCentro'); ?>
		<?php echo $form->textField($model,'cifCentro',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'cifCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'codigoCentro'); ?>
		<?php echo $form->textField($model,'codigoCentro',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'codigoCentro'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'respCreacionCentro'); ?>
		<?php echo $form->textField($model,'respCreacionCentro'); ?>
		<?php echo $form->error($model,'respCreacionCentro'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Crear' : 'Guardar'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->