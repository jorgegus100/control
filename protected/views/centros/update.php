<?php
/* @var $this CentrosController */
/* @var $model Centros */


$this->menu=$this->menuCentros;
?>

<h1>Modificar Centro <?php echo $model->nomCentro; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>