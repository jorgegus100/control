<?php
/* @var $this EstudianteController */
/* @var $model Estudiante */
/* @var $form CActiveForm */


echo '<h1>Nombre de Centro '.$nombreCentro.'</h1></br>';

echo CHtml::link('Asignar Centro', '#', array(
    'onclick'=>'$("#mydialog").dialog("open"); return false;',
));

$this->beginWidget('zii.widgets.jui.CJuiDialog', array(
    'id'=>'mydialog',
    // additional javascript options for the dialog plugin
    'options'=>array(
        'title'=>'Asignar Centro',
        'autoOpen'=>false,
        'width' => '600px',
        //'height' => '600px',
        'modal' => true,
            //'resizable' => true,
        ),
    ));

$this->renderPartial('asigCentro', array('modelCSearch'=>$modelCSearch, 'model'=>$model, 'create'=>$create ));
$this->endWidget('zii.widgets.jui.CJuiDialog');
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'estudiante-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Los campos con <span class="required">*</span> son requeridos.</p>

	<?php echo $form->errorSummary($model); ?>

<div class="row-fluid">
    <div class="span4">
        <?php echo $form->labelEx($model,'nomEstudiante'); ?>
        <?php echo $form->textField($model,'nomEstudiante',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'nomEstudiante',array('class'=>'span12')); ?>
    </div>
    <div class="span4">
        <?php echo $form->labelEx($model,'apellEstudiante'); ?>
        <?php echo $form->textField($model,'apellEstudiante',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'apellEstudiante',array('class'=>'span12')); ?>
    </div>

    <div class="span4">
        <?php echo $form->labelEx($model,'secApellEstudante'); ?>
        <?php echo $form->textField($model,'secApellEstudante',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'secApellEstudante',array('class'=>'span12')); ?>
    </div>
</div>

<div class="row-fluid">
    <div class="span4">
        <?php echo $form->labelEx($model,'ciEstudiante'); ?>
        <?php echo $form->textField($model,'ciEstudiante',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'ciEstudiante',array('class'=>'span12')); ?>
    </div>

    <div class="span4">
        <?php echo $form->labelEx($model,'sexEstudiante'); ?>
        <?php echo CHtml::dropDownList('Estudiante[sexEstudiante]','sexo',array('','1'=>'Mujer','2'=>'Hombre'),array('class'=>'span12'));?>


        <?php echo $form->error($model,'sexEstudiante',array('class'=>'span12')); ?>
    </div>

    <div class="span4">
        <?php echo $form->labelEx($model,'paisEst'); ?>
        <?php echo $form->textField($model,'paisEst',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'paisEst',array('class'=>'span12')); ?>
    </div>
</div>




<div class="row-fluid">
    <div class="span4">
        <?php echo $form->labelEx($model,'calleEstudiante',array('class'=>'span6')); ?>
        <?php echo $form->textField($model,'calleEstudiante',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'calleEstudiante',array('class'=>'span12')); ?>
    </div>
    <div class="span4">
        <?php echo $form->labelEx($model,'provinciaEstudiante',array('class'=>'span6')); ?>
        <?php echo $form->textField($model,'provinciaEstudiante',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'provinciaEstudiante',array('class'=>'span12')); ?>
    </div>
    <div class="span2">
        <?php echo $form->labelEx($model,'numCasaEstudiante',array('class'=>'span6')); ?>
        <?php echo $form->textField($model,'numCasaEstudiante',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'numCasaEstudiante',array('class'=>'span12')); ?>
    </div>

    <div class="span2">
        <?php echo $form->labelEx($model,'pisoEstudiante',array('class'=>'span6')); ?>
        <?php echo $form->textField($model,'pisoEstudiante',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'pisoEstudiante',array('class'=>'span12')); ?>
    </div>
</div>

<div class="row-fluid">
    <div class="span5">
        <?php echo $form->labelEx($model,'LocalidadEst'); ?>
        <?php echo $form->textField($model,'LocalidadEst',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'LocalidadEst',array('class'=>'span12')); ?>
    </div>
    <div class="span3">
        <?php echo $form->labelEx($model,'codPostalEst'); ?>
        <?php echo $form->textField($model,'codPostalEst',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'codPostalEst',array('class'=>'span12')); ?>
    </div>
    <div class="span2">
        <?php echo $form->labelEx($model,'telEstudiante'); ?>
        <?php echo $form->textField($model,'telEstudiante',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'telEstudiante',array('class'=>'span12')); ?>
    </div>

    <div class="span2">
        <?php echo $form->labelEx($model,'tel2Estudiante'); ?>
        <?php echo $form->textField($model,'tel2Estudiante',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'tel2Estudiante',array('class'=>'span12')); ?>
    </div>
</div>

<div class="row-fluid">
    <div class="span3">
        <?php echo $form->labelEx($model,'principalTutor'); ?>
        <?php echo CHtml::checkBox('Tutor[principalTutor]',false,array("class"=>"span12","value"=>'1')); ?>

        <?php echo $form->error($model,'principalTutor',array('class'=>'span12')); ?>
    </div>
    <div class="span6">
        <?php echo $form->labelEx($model,'emailEstudiante'); ?>
        <?php echo $form->textField($model,'emailEstudiante',array('class'=>'span12')); ?>
        <?php echo $form->error($model,'emailEstudiante',array('class'=>'span12')); ?>
    </div>
</div>


<div class="row-fluid">
<div class="span4">
    <?php echo $form->labelEx($model,'nacEstudiante'); ?>
    <?php echo $form->textField($model,'nacEstudiante'); ?>
    <?php echo $form->error($model,'nacEstudiante'); ?>
</div>

<div class="span4">
    <?php echo $form->labelEx($model,'cursoEstudiante'); ?>
    <?php echo $form->textField($model,'cursoEstudiante',array('size'=>50,'maxlength'=>50)); ?>
    <?php echo $form->error($model,'cursoEstudiante'); ?>
</div>

<div class="span4">
    <?php echo $form->labelEx($model,'etapaEstudiante'); ?>
    <?php echo $form->textField($model,'etapaEstudiante',array('size'=>50,'maxlength'=>50)); ?>
    <?php echo $form->error($model,'etapaEstudiante'); ?>
</div>
</div>


<div class="row-fluid">
<div class="span4">
    <?php echo $form->labelEx($model,'nroCuentaEst'); ?>
    <?php echo $form->textField($model,'nroCuentaEst'); ?>
    <?php echo $form->error($model,'nroCuentaEst'); ?>
</div>

<div class="span4">
    <?php echo $form->labelEx($model,'dietaEstudiante'); ?>
    <?php echo $form->textField($model,'dietaEstudiante',array('size'=>50,'maxlength'=>50)); ?>
    <?php echo $form->error($model,'dietaEstudiante'); ?>
</div>

<div class="span4">
    <?php echo $form->labelEx($model,'nutricionEst'); ?>
    <?php echo $form->textField($model,'nutricionEst',array('size'=>50,'maxlength'=>50)); ?>
    <?php echo $form->error($model,'nutricionEst'); ?>
</div>
</div>


<div class="row-fluid">
<div class="span4">
    <?php echo $form->labelEx($model,'menuEst'); ?>
    <?php echo $form->textField($model,'menuEst'); ?>
    <?php echo $form->error($model,'menuEst'); ?>
</div>

<div class="span4">
    <?php echo $form->labelEx($model,'comidaEst'); ?>
    <?php echo $form->textField($model,'comidaEst'); ?>
    <?php echo $form->error($model,'comidaEst'); ?>
</div>

<div class="span4">
    <?php echo $form->labelEx($model,'desayunoEst'); ?>
    <?php echo $form->textField($model,'desayunoEst'); ?>
    <?php echo $form->error($model,'desayunoEst'); ?>
</div>

    <div class="row-fluid">
<div class="span4">
    <?php echo $form->labelEx($model,'becaEst'); ?>
    <?php echo $form->textField($model,'becaEst'); ?>
    <?php echo $form->error($model,'becaEst'); ?>
</div>

<div class="span4">
    <?php echo $form->labelEx($model,'descuentoEst'); ?>
    <?php echo $form->textField($model,'descuentoEst'); ?>
    <?php echo $form->error($model,'descuentoEst'); ?>
</div>
</div>


<div class="row-fluid">
    <?php echo $form->labelEx($model,'diasEstudiante',array("class"=>"span6")); ?>
</div>
    <div class="row-fluid">
    <table class="row-fluid">
        <tr>
            <td> <?php echo CHtml::label("L","lunes",array("class"=>"span1"))?></td> <td><?php echo CHtml::label("M","martes",array("class"=>"span1"))?></td> <td><?php echo CHtml::label("Mi","miercoles",array("class"=>"span1"))?></td> <td> <?php echo CHtml::label("J","jueves",array("class"=>"span1"))?></td> <td> <?php echo CHtml::label("V","viernes",array("class"=>"span1"))?></td> <td> <?php echo CHtml::label("S","sabado",array("class"=>"span1"))?></td>
        </tr>
        <tr >
            <td><?php echo CHtml::checkBox("lunes",false,array("class"=>"span2") )?></td><td><?php echo CHtml::checkBox("martes",false ,array("class"=>"span2"))?></td><td><?php echo CHtml::checkBox("miercoles",false ,array("class"=>"span2"))?></td><td><?php echo CHtml::checkBox("jueves",false ,array("class"=>"span2"))?></td><td><?php echo CHtml::checkBox("viernes",false ,array("class"=>"span2"))?></td><td><?php echo CHtml::checkBox("sabado",false ,array("class"=>"span2") )?></td>
        </tr>
    </table>
    </div>
    <div class="row-fluid">
        <?php echo $form->labelEx($model,'diasEstComida',array("class"=>"span6")); ?>
    </div>
    <div class="row-fluid">
        <table class="row-fluid">
            <tr>
                <td> <?php echo CHtml::label("L","lunesd",array("class"=>"span1"))?></td> <td><?php echo CHtml::label("M","martesd",array("class"=>"span1"))?></td> <td><?php echo CHtml::label("Mi","miercolesd",array("class"=>"span1"))?></td> <td> <?php echo CHtml::label("J","juevesd",array("class"=>"span1"))?></td> <td> <?php echo CHtml::label("V","viernesd",array("class"=>"span1"))?></td> <td> <?php echo CHtml::label("S","sabadod",array("class"=>"span1"))?></td>
            </tr>
            <tr >
                <td><?php echo CHtml::checkBox("lunesd",false,array("class"=>"span2") )?></td><td><?php echo CHtml::checkBox("martesd",false ,array("class"=>"span2"))?></td><td><?php echo CHtml::checkBox("miercolesd",false ,array("class"=>"span2"))?></td><td><?php echo CHtml::checkBox("juevesd",false ,array("class"=>"span2"))?></td><td><?php echo CHtml::checkBox("viernesd",false ,array("class"=>"span2"))?></td><td><?php echo CHtml::checkBox("sabadod",false ,array("class"=>"span2") )?></td>
            </tr>
        </table>
    </div>




	<div class="span12">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Crear' : 'Guardar',array("class"=>"span2")); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->