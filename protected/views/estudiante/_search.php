<?php
/* @var $this EstudianteController */
/* @var $model Estudiante */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idEstudiante'); ?>
		<?php echo $form->textField($model,'idEstudiante'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nomEstudiante'); ?>
		<?php echo $form->textField($model,'nomEstudiante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'apellEstudiante'); ?>
		<?php echo $form->textField($model,'apellEstudiante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'secApellEstudante'); ?>
		<?php echo $form->textField($model,'secApellEstudante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ciEstudiante'); ?>
		<?php echo $form->textField($model,'ciEstudiante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idTutor'); ?>
		<?php echo $form->textField($model,'idTutor'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'sexEstudiante'); ?>
		<?php echo $form->textField($model,'sexEstudiante'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nacEstudiante'); ?>
		<?php echo $form->textField($model,'nacEstudiante'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'cursoEstudiante'); ?>
		<?php echo $form->textField($model,'cursoEstudiante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'etapaEstudiante'); ?>
		<?php echo $form->textField($model,'etapaEstudiante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numCasaEstudiante'); ?>
		<?php echo $form->textField($model,'numCasaEstudiante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'pisoEstudiante'); ?>
		<?php echo $form->textField($model,'pisoEstudiante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'provinciaEstudiante'); ?>
		<?php echo $form->textField($model,'provinciaEstudiante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'LocalidadEst'); ?>
		<?php echo $form->textField($model,'LocalidadEst',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'calleEstudiante'); ?>
		<?php echo $form->textField($model,'calleEstudiante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codPostalEst'); ?>
		<?php echo $form->textField($model,'codPostalEst'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'paisEst'); ?>
		<?php echo $form->textField($model,'paisEst',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'idCentroEst'); ?>
		<?php echo $form->textField($model,'idCentroEst'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'telEstudiante'); ?>
		<?php echo $form->textField($model,'telEstudiante'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'emailEstudiante'); ?>
		<?php echo $form->textField($model,'emailEstudiante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nroCuentaEst'); ?>
		<?php echo $form->textField($model,'nroCuentaEst'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'dietaEstudiante'); ?>
		<?php echo $form->textField($model,'dietaEstudiante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nutricionEst'); ?>
		<?php echo $form->textField($model,'nutricionEst',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tel2Estudiante'); ?>
		<?php echo $form->textField($model,'tel2Estudiante'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'menuEst'); ?>
		<?php echo $form->textField($model,'menuEst'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'comidaEst'); ?>
		<?php echo $form->textField($model,'comidaEst'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'desayunoEst'); ?>
		<?php echo $form->textField($model,'desayunoEst'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'becaEst'); ?>
		<?php echo $form->textField($model,'becaEst'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'descuentoEst'); ?>
		<?php echo $form->textField($model,'descuentoEst'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'diasEstudiante'); ?>
		<?php echo $form->textField($model,'diasEstudiante',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->