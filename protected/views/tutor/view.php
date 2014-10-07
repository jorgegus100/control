<?php
/* @var $this TutorController */
/* @var $model Tutor */
/* @var $form CActiveForm */
Yii::app()->clientScript->registerCoreScript('jquery');

$this->breadcrumbs=array(
	'Tutors'=>array('index'),
	$model->idTutor,
);

$this->menu=$this->datosGenerales;
?>
<script>
    //alert("hola");
    jQuery(function($)
    {
        $( ".CategName" ).click(function(e) {
            e.preventDefault();
            var id=$(this).attr("for");
            var al='"#'+id+'"';
            //ert(al);
            $('#'+id+'').toggle();
            //$(this).toggle();
            //$(this).removeClass("CategName");
        });
        /*
        $('#selAnalisis').click(function(e) {
            e.preventDefault();
            var drName=$('#drName').text();
            if(drName+""=="No Asignado")
                alert('asignar medico');
            else
                $('#analisis-selecAnalisis-form').submit();
        });

        $('#formulario_nuevo_boton').click(function(e){
         e.preventDefault();
         $('#formulario_nuevo').css('display','block');
         });*/

    });
</script>




<h1>Consulta de datos personales</h1>
<span class="titInfo">Alumnos</span>
<?php foreach($listEstudiantes as $n=>$model1): ?>
<table class="items grRemark">

    <tr>
        <th><?php echo 'Nro ID. Esc.'; ?></th>
        <th><?php echo '1er Apellido'; ?></th>
        <th><?php echo '2do Apellido'; ?></th>
        <th><?php echo 'Nombre'; ?></th>
        <th><?php echo 'Etapa'; ?></th>
        <th><?php echo 'Curso'; ?></th>
    </tr>

        <tr class="<?php echo $n%2?'evenMod':'oddMod';?>">

            <td><?php echo CHtml::encode($model1->ciEstudiante); ?></td>
            <td><?php echo CHtml::encode($model1->apellEstudiante); ?></td>
            <td><?php echo CHtml::encode($model1->secApellEstudante); ?></td>
            <td><?php echo CHtml::encode($model1->nomEstudiante); ?></td>
            <td><?php echo CHtml::encode($model1->etapaEstudiante); ?></td>
            <td><?php echo CHtml::encode($model1->cursoEstudiante); ?></td>
        </tr>
</table>
     <?php $centro=Centros::model()->find("idCentro='".$model1->idCentroEst."'");?>
    <span class="titInfo">Centro</span>
    <table>
    <tr class="lbCentre">
            <td class="lbTable">C. autonoma</td><td class="contTab"><?php echo $centro->provCentro; ?></td>
            <td class="lbTable">Provincia</td><td class="contTab"><?php echo $centro->provCentro; ?></td>
            <td class="lbTable">Colegio</td><td class="contTab"><?php echo $centro->nomCentro; ?></td>
        </tr>
    </table>
    <br>
    <?php endforeach; ?>
<br>



<span class="titInfo">Tutor</span>
<table class="tbBase">

    <tr><td class="lbTable"><?php echo 'D.N.I.'; ?></td><td class="contTab"><?php echo $model->dniTutor; ?></td><td class="lbTable"><?php echo 'Sexo.'; ?></td><td class="contTab"><?php echo $model->sexoTutor; ?></td>
        <td class="lbTable"><?php echo 'Calle'; ?></td><td class="contTab"><?php echo $model->calleTutor; ?></td><td class="lbTable"><?php echo 'Nro'; ?></td><td class="contTab"><?php echo $model->numCasaTutor; ?></td>
        <td class="lbTable"><?php echo 'Piso'; ?></td><td class="contTab"><?php echo $model->pisoTutor; ?></td>
    </tr>
    <tr>
        <td class="lbTable" colspan="2"><?php echo 'Nombre'; ?></td><td class="contTab" colspan="2"><?php echo $model->nomTutor; ?></td> <td class="lbTable"><?php echo 'Provincia'; ?></td><td class="contTab" colspan="3"><?php echo $model->provinciaTutor; ?></td>
    </tr>
    <tr>
        <td class="lbTable" colspan="2"><?php echo '1er Apellido'; ?></td><td class="contTab" colspan="2"><?php echo $model->apellTutor; ?></td> <td class="lbTable"><?php echo 'Localidad'; ?></td><td class="contTab" colspan="2"><?php echo $model->localidadTutor; ?></td>
        <td class="lbTable" colspan="2"><?php echo 'Cod. Postal'; ?></td><td class="contTab"><?php echo $model->codPostalTutor; ?>
    </tr>
    <tr>
        <td class="lbTable" colspan="2"><?php echo '2do Apellido'; ?></td><td class="contTab" colspan="2"><?php echo $model->apell2Tutor; ?></td> <td class="lbTable"><?php echo 'Teléfono'; ?></td><td class="contTab"><?php echo $model->telfTutor; ?></td><td class="lbTable" colspan="2"><?php echo 'Telf. Alternativo'; ?></td><td class="contTab"><?php echo $model->telf2Tutor; ?></td>

    </tr>
    <tr>
        <td class="lbTable" colspan="2"><?php echo 'Rel. Alumno'; ?></td><td class="contTab" colspan="2"><?php echo $model->relAlumTutor; ?></td> <td class="lbTable"><?php echo 'Email'; ?></td><td class="contTab" colspan="2"><?php echo $model->emailTutor; ?></td>
    </tr>
</table>

<?php foreach($listEstudiantes as $n=>$model2): ?>
<span><a class="CategName" for="<?php echo $model2->ciEstudiante; ?>" href="">Estudiante <?php echo $model2->nomEstudiante.' '.$model2->apellEstudiante; ?></a></span>
<div class='row rowCat' id="<?php echo $model2->ciEstudiante; ?>" >
<table class="tbBase">

    <tr><td class="lbTable"><?php echo 'Nro ID Esc..'; ?></td><td class="contTab"><?php echo $model2->ciEstudiante; ?></td><td class="lbTable"><?php echo 'Sexo.'; ?></td><td class="contTab"><?php echo $model2->sexEstudiante; ?></td>
        <td class="lbTable"><?php echo 'Calle'; ?></td><td class="contTab"><?php echo $model2->calleEstudiante; ?></td><td class="lbTable"><?php echo 'Nro'; ?></td><td class="contTab"><?php echo $model2->numCasaEstudiante; ?></td>
        <td class="lbTable"><?php echo 'Piso'; ?></td><td class="contTab"><?php echo $model2->pisoEstudiante; ?></td>
    </tr>
    <tr>
        <td class="lbTable" colspan="2"><?php echo 'Nombre'; ?></td><td class="contTab" colspan="2"><?php echo $model2->nomEstudiante; ?></td> <td class="lbTable"><?php echo 'Provincia'; ?></td><td class="contTab" colspan="3"><?php echo $model2->provinciaEstudiante; ?></td>
    </tr>
    <tr>
        <td class="lbTable" colspan="2"><?php echo '1er Apellido'; ?></td><td class="contTab" colspan="2"><?php echo $model2->apellEstudiante; ?></td> <td class="lbTable"><?php echo 'Localidad'; ?></td><td class="contTab" colspan="2"><?php echo $model2->LocalidadEst; ?></td>
        <td class="lbTable" colspan="2"><?php echo 'Cod. Postal'; ?></td><td class="contTab"><?php echo $model2->codPostalEst; ?>
    </tr>
    <tr>
        <td class="lbTable" colspan="2"><?php echo '2do Apellido'; ?></td><td class="contTab" colspan="2"><?php echo $model2->secApellEstudante; ?></td> <td class="lbTable"><?php echo 'Teléfono'; ?></td><td class="contTab"><?php echo $model2->telEstudiante; ?></td><td class="lbTable" colspan="2"><?php echo 'Telf. Alternativo'; ?></td><td class="contTab"><?php echo $model2->tel2Estudiante; ?></td>

    </tr>
    <tr>
        <td class="lbTable" colspan="2"><?php echo 'Fec.Nacimiento'; ?></td><td class="contTab" colspan="2"><?php echo $model2->nacEstudiante; ?></td> <td class="lbTable"><?php echo 'Email'; ?></td><td class="contTab" colspan="2"><?php echo $model2->emailEstudiante; ?></td>
    </tr>
</table>
</div>
<?php endforeach; ?>
