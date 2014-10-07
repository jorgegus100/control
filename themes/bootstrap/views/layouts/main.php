<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/styles.css" />

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>

	<?php Yii::app()->bootstrap->register(); ?>
</head>

<body>

<?php $this->widget('bootstrap.widgets.TbNavbar',array(
    'items'=>array(
        array(
            'class'=>'bootstrap.widgets.TbMenu',
            'items'=>array(
                array('label'=>'Usuarios', 'url'=>array('/usuarios/admin'), 'visible'=>Yii::app()->user->getState('nivel')==5),
                array('label'=>'Centros', 'url'=>array('/centros/admin'), 'visible'=>Yii::app()->user->getState('nivel')==5),
                array('label'=>'Estudiantes', 'url'=>array('/estudiante/admin'), 'visible'=>Yii::app()->user->getState('nivel')==5),
                array('label'=>'Tutores', 'url'=>array('/tutor/admin'), 'visible'=>Yii::app()->user->getState('nivel')==5),
                array('label'=>'Pagadores', 'url'=>array('/pagador/admin'), 'visible'=>Yii::app()->user->getState('nivel')==5),
                array('label'=>'Datos Generales', 'url'=>array('/tutor/view&id='.Yii::app()->user->getState('idTut').''), 'visible'=>Yii::app()->user->getState('nivel')==2),

                array('label'=>'Asistencias', 'url'=>array('/tutor/view&id='.Yii::app()->user->getState('idTut').''), 'visible'=>Yii::app()->user->getState('nivel')==2),
                array('label'=>'Facturacion', 'url'=>array('/tutor/view&id='.Yii::app()->user->getState('idTut').''), 'visible'=>Yii::app()->user->getState('nivel')==2),
                array('label'=>'Incidencias', 'url'=>array('/tutor/view&id='.Yii::app()->user->getState('idTut').''), 'visible'=>Yii::app()->user->getState('nivel')==2),
                array('label'=>'Menus', 'url'=>array('/tutor/view&id='.Yii::app()->user->getState('idTut').''), 'visible'=>Yii::app()->user->getState('nivel')==2),
                array('label'=>'Sugerencias', 'url'=>array('/site/contact'),'visible'=>Yii::app()->user->getState('nivel')==2 ),


                array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
            ),
        ),
    ),
)); ?>

<div class="container" id="page">

	<?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('bootstrap.widgets.TbBreadcrumbs', array(
			'links'=>$this->breadcrumbs,
		)); ?><!-- breadcrumbs -->
	<?php endif?>

	<?php echo $content; ?>

	<div class="clear"></div>

	<div id="footer">
		Copyright &copy; <?php echo date('Y'); ?> by My Company.<br/>
		All Rights Reserved.<br/>
		<?php echo Yii::powered(); ?>
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>
