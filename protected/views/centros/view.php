<?php
/* @var $this CentrosController */
/* @var $model Centros */



$this->menu=$this->menuCentros;
?>

<h1>Ver informacion de Centro <?php echo $model->nomCentro; ?></h1>

<?php

$this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(

		'nomCentro',
		'calleCentro',
		'numDomCentro',
		'pisoCentro',
		'telfCentro',
		'faxCentro',
		'emailCentro',
		'expedienteCentro',
		'loteCentro',
		'provCentro',
		'localidadCentro',
		'personalCentro',
		'codPostalCentro',
		'cifCentro',
		'codigoCentro',
		'respCreacionCentro',
	),
)); ?>
