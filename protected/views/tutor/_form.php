<?php
/* @var $this TutorController */
/* @var $model Tutor */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tutor-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Campos con <span class="required">*</span> son requeridos.</p>

	<?php echo $form->errorSummary($model); ?>

    <div class="row-fluid">
        <div class="span4">
            <?php echo $form->labelEx($model,'nomTutor'); ?>
            <?php echo $form->textField($model,'nomTutor',array('class'=>'span12')); ?>
            <?php echo $form->error($model,'nomTutor',array('class'=>'span12')); ?>
        </div>
        <div class="span4">
            <?php echo $form->labelEx($model,'apellTutor'); ?>
            <?php echo $form->textField($model,'apellTutor',array('class'=>'span12')); ?>
            <?php echo $form->error($model,'apellTutor',array('class'=>'span12')); ?>
        </div>

        <div class="span4">
            <?php echo $form->labelEx($model,'apell2Tutor'); ?>
            <?php echo $form->textField($model,'apell2Tutor',array('class'=>'span12')); ?>
            <?php echo $form->error($model,'apell2Tutor',array('class'=>'span12')); ?>
        </div>
    </div>

    <div class="row-fluid">
        <div class="span4">
            <?php echo $form->labelEx($model,'dniTutor'); ?>
            <?php echo $form->textField($model,'dniTutor',array('class'=>'span12')); ?>
            <?php echo $form->error($model,'dniTutor',array('class'=>'span12')); ?>
        </div>

        <div class="span4">
            <?php echo $form->labelEx($model,'sexoTutor'); ?>
            <?php echo CHtml::dropDownList('Tutor[sexoTutor]','sexo',array('','1'=>'Mujer','2'=>'Hombre'),array('class'=>'span12'));?>


            <?php echo $form->error($model,'sexoTutor',array('class'=>'span12')); ?>
        </div>

	    <div class="span4">
		    <?php echo $form->labelEx($model,'relAlumTutor'); ?>
		    <?php echo $form->textField($model,'relAlumTutor',array('class'=>'span12')); ?>
		    <?php echo $form->error($model,'relAlumTutor',array('class'=>'span12')); ?>
	    </div>
    </div>




    <div class="row-fluid">
        <div class="span4">
            <?php echo $form->labelEx($model,'calleTutor',array('class'=>'span6')); ?>
            <?php echo $form->textField($model,'calleTutor',array('class'=>'span12')); ?>
            <?php echo $form->error($model,'calleTutor',array('class'=>'span12')); ?>
        </div>
        <div class="span4">
            <?php echo $form->labelEx($model,'provinciaTutor',array('class'=>'span6')); ?>
            <?php echo $form->textField($model,'provinciaTutor',array('class'=>'span12')); ?>
            <?php echo $form->error($model,'provinciaTutor',array('class'=>'span12')); ?>
        </div>
        <div class="span2">
            <?php echo $form->labelEx($model,'numCasaTutor',array('class'=>'span6')); ?>
            <?php echo $form->textField($model,'numCasaTutor',array('class'=>'span12')); ?>
            <?php echo $form->error($model,'numCasaTutor',array('class'=>'span12')); ?>
        </div>

        <div class="span2">
            <?php echo $form->labelEx($model,'pisoTutor',array('class'=>'span6')); ?>
            <?php echo $form->textField($model,'pisoTutor',array('class'=>'span12')); ?>
            <?php echo $form->error($model,'pisoTutor',array('class'=>'span12')); ?>
        </div>
    </div>

    <div class="row-fluid">
        <div class="span5">
            <?php echo $form->labelEx($model,'localidadTutor'); ?>
            <?php echo $form->textField($model,'localidadTutor',array('class'=>'span12')); ?>
            <?php echo $form->error($model,'localidadTutor',array('class'=>'span12')); ?>
        </div>
        <div class="span3">
            <?php echo $form->labelEx($model,'codPostalTutor'); ?>
            <?php echo $form->textField($model,'codPostalTutor',array('class'=>'span12')); ?>
            <?php echo $form->error($model,'codPostalTutor',array('class'=>'span12')); ?>
        </div>
        <div class="span2">
            <?php echo $form->labelEx($model,'telfTutor'); ?>
            <?php echo $form->textField($model,'telfTutor',array('class'=>'span12')); ?>
            <?php echo $form->error($model,'telfTutor',array('class'=>'span12')); ?>
        </div>

        <div class="span2">
            <?php echo $form->labelEx($model,'telf2Tutor'); ?>
            <?php echo $form->textField($model,'telf2Tutor',array('class'=>'span12')); ?>
            <?php echo $form->error($model,'telf2Tutor',array('class'=>'span12')); ?>
        </div>
    </div>

   <div class="row-fluid">
    <div class="span3">
        <?php echo $form->labelEx($model,'principalTutor'); ?>
        <?php echo CHtml::checkBox('Tutor[principalTutor]',false,array("class"=>"span12","value"=>'1')); ?>

        <?php echo $form->error($model,'principalTutor',array('class'=>'span12')); ?>
    </div>
	<div class="span6">
		<?php echo $form->labelEx($model,'emailTutor'); ?>
		<?php echo $form->textField($model,'emailTutor',array('class'=>'span12')); ?>
		<?php echo $form->error($model,'emailTutor',array('class'=>'span12')); ?>
	</div>
   </div>
	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Crear' : 'Guardar'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->