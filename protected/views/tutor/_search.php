<?php
/* @var $this TutorController */
/* @var $model Tutor */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idTutor'); ?>
		<?php echo $form->textField($model,'idTutor'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nomTutor'); ?>
		<?php echo $form->textField($model,'nomTutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'apellTutor'); ?>
		<?php echo $form->textField($model,'apellTutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'apell2Tutor'); ?>
		<?php echo $form->textField($model,'apell2Tutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'direcTutor'); ?>
		<?php echo $form->textField($model,'direcTutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'dniTutor'); ?>
		<?php echo $form->textField($model,'dniTutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'sexoTutor'); ?>
		<?php echo $form->textField($model,'sexoTutor'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'relAlumTutor'); ?>
		<?php echo $form->textField($model,'relAlumTutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'principalTutor'); ?>
		<?php echo $form->textField($model,'principalTutor'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'calleTutor'); ?>
		<?php echo $form->textField($model,'calleTutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numCasaTutor'); ?>
		<?php echo $form->textField($model,'numCasaTutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'pisoTutor'); ?>
		<?php echo $form->textField($model,'pisoTutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'provinciaTutor'); ?>
		<?php echo $form->textField($model,'provinciaTutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'localidadTutor'); ?>
		<?php echo $form->textField($model,'localidadTutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codPostalTutor'); ?>
		<?php echo $form->textField($model,'codPostalTutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'telfTutor'); ?>
		<?php echo $form->textField($model,'telfTutor'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'telf2Tutor'); ?>
		<?php echo $form->textField($model,'telf2Tutor'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'emailTutor'); ?>
		<?php echo $form->textField($model,'emailTutor',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->