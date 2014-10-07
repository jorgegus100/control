<?php
/* @var $this PagadorController */
/* @var $data Pagador */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idPagador')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idPagador), array('view', 'id'=>$data->idPagador)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ciPagador')); ?>:</b>
	<?php echo CHtml::encode($data->ciPagador); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nomPagador')); ?>:</b>
	<?php echo CHtml::encode($data->nomPagador); ?>
	<br />


</div>