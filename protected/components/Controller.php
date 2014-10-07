<?php
/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class Controller extends CController
{
   function  init(){
        $this->datosGenerales=array(
            array('label'=>'Datos Personales', 'url'=>array('tutor/view&id='.Yii::app()->user->getState('idTut').'')),
            array('label'=>'Modificación Datos', 'url'=>array('recibos/create')),
            array('label'=>'Becas', 'url'=>array('recibos/create')),
            array('label'=>'Centros', 'url'=>array('recibos/create')),);
    }
	/**
	 * @var string the default layout for the controller view. Defaults to '//layouts/column1',
	 * meaning using a single column layout. See 'protected/views/layouts/column1.php'.
	 */
	public $layout='//layouts/column1';
    public $menuUsuarios=array(
        array('label'=>'Administrar Usuarios', 'url'=>array('usuarios/admin')),
        array('label'=>'Crear', 'url'=>array('usuarios/create')),

    );

    public $menuEstudiantes=array(
        array('label'=>'Administrar Estudiantes', 'url'=>array('estudiante/admin')),
        array('label'=>'Crear Estudiante', 'url'=>array('estudiante/create')),
        array('label'=>'Administrar Tutores', 'url'=>array('tutor/admin')),
        array('label'=>'Crear Tutor', 'url'=>array('tutor/create')),

    );


    public $menuCentros=array(
        array('label'=>'Administrar Centros', 'url'=>array('centros/admin')),
        array('label'=>'Crear Centros', 'url'=>array('centros/create')),


    );
    public $menuMenues=array(
        array('label'=>'Administrar Menus', 'url'=>array('menu/admin')),
        array('label'=>'Crear Menu', 'url'=>array('menu/create')),
        );
    public $menuRecibos=array(
        array('label'=>'Administrar Recibos', 'url'=>array('recibos/admin')),
        array('label'=>'Crear Recibo', 'url'=>array('recibos/create')),
    );
    //public $i=Yii::app()->user->getState('idTut');
    public $datosGenerales=array();
    public $menuAsistencias=array(
        array('label'=>'Ausencias/Asistencias Adicionales', 'url'=>array('recibos/admin')),
        array('label'=>'Servicios Contratados', 'url'=>array('recibos/create')),
    );
    public $menuFacturacion=array(
        array('label'=>'Listado de Recibos', 'url'=>array('recibos/admin')),

    );
    public $menuIncidencias=array(
        array('label'=>'Incidencias en el Servicio', 'url'=>array('recibos/admin')),
    );
    public $menuMenus=array(
    array('label'=>'Ménus Mensuales', 'url'=>array('recibos/admin')),
    );
    public $menuSugerencias=array(
        array('label'=>'Comunicación', 'url'=>array('recibos/admin')),
    );
	/**
	 * @var array context menu items. This property will be assigned to {@link CMenu::items}.
	 */
	public $menu=array();
	/**
	 * @var array the breadcrumbs of the current page. The value of this property will
	 * be assigned to {@link CBreadcrumbs::links}. Please refer to {@link CBreadcrumbs::links}
	 * for more details on how to specify this property.
	 */
	public $breadcrumbs=array();


}