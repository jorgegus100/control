<?php

class TutorController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions'=>array('create','update','admin','delete','asignarEst'),
                'users'=>array('@'),
            ),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
        $listEstudiantes=Estudiante::model()->findAll("idTutor='".$id."'");
		$this->render('view',array(
			'model'=>$this->loadModel($id),
            'listEstudiantes'=>$listEstudiantes,
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Tutor;
        $modelUs=new Usuarios;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Tutor']))
		{
			$model->attributes=$_POST['Tutor'];
            $modelUs->apellUsuario=$_POST['Tutor']['apellTutor'];
            $modelUs->apell2Usuario=$_POST['Tutor']['apell2Tutor'];
            $modelUs->nomUsuario=$_POST['Tutor']['nomTutor'];
            $modelUs->login=$_POST['Tutor']['emailTutor'];
            $modelUs->password=sha1($_POST['Tutor']['dniTutor']);
            $modelUs->nivel=2;
            $modelUs->save();
            $model->idUsuario=$modelUs->idUsuario;
            if($model->save())
                {
				$this->redirect(array('asignarEst','id'=>$model->idTutor));
                }
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Tutor']))
		{
			$model->attributes=$_POST['Tutor'];
			if($model->save())
            {
                $this->redirect(array('asignarEst','id'=>$model->idTutor));
		    }
        }
		$this->render('update',array(
			'model'=>$model,
		));

    }
	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('Tutor');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Tutor('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Tutor']))
			$model->attributes=$_GET['Tutor'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Tutor the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Tutor::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Tutor $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='tutor-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}

    public function actionAsignarEst($id)
    {

        $listaTutorias= Reltutorest::model()->findAll("idTutor='".$id."'");
        $listEstudiantes=array();
        foreach($listaTutorias as $rel)
        {
            $list=Estudiante::model()->findAll("idEstudiante='".$rel->idEstudiante."'");
            $listEstudiantes+=$list;
        }

        $modelNewEst=new Estudiante();
        $modelESearch=new Estudiante('search');
        $modelCSearch=new Centros('search');
        if(isset($_GET['idEst']))
        {
            $idEst=$_GET['idEst'];
            $relTutEst= new Reltutorest();
            $relTutEst->idTutor=$id;
            $relTutEst->idEstudiante=$idEst;
            $relTutEst->principalTutor=$_GET['prin'];
            $relTutEst->save();

        }
        if(isset($_POST['Estudiante']))
        {
            $modelNewEst->attributes=$_POST['Estudiante'];
            $modelNewEst->idTutor=$id;
            $modelNewEst->save();

        }



        $this->render('asignarEst',array(
            'model'=>$this->loadModel($id),
            'listEstudiantes'=>$listEstudiantes,
            'modelNewEst'=>$modelNewEst,
            'modelESearch'=>$modelESearch,
            'modelCSearch'=>$modelCSearch,
        ));
    }

}
