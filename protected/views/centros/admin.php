<?php
/* @var $this CentrosController */
/* @var $model Centros */



$this->menu=$this->menuCentros;

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#centros-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Administrar Centros</h1>


<?php echo CHtml::link('Busqueda avanzada','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'centros-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(

		'nomCentro',
		'calleCentro',
		'numDomCentro',
		'pisoCentro',
		'telfCentro',
		/*
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
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
