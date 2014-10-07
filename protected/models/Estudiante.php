<?php

/**
 * This is the model class for table "estudiante".
 *
 * The followings are the available columns in table 'estudiante':
 * @property integer $idEstudiante
 * @property string $nomEstudiante
 * @property string $apellEstudiante
 * @property string $secApellEstudante
 * @property string $ciEstudiante
 * @property integer $idTutor
 * @property integer $sexEstudiante
 * @property string $nacEstudiante
 * @property string $cursoEstudiante
 * @property string $etapaEstudiante
 * @property string $numCasaEstudiante
 * @property string $pisoEstudiante
 * @property string $provinciaEstudiante
 * @property string $LocalidadEst
 * @property string $calleEstudiante
 * @property integer $codPostalEst
 * @property string $paisEst
 * @property integer $idCentroEst
 * @property integer $telEstudiante
 * @property string $emailEstudiante
 * @property integer $nroCuentaEst
 * @property string $dietaEstudiante
 * @property string $nutricionEst
 * @property integer $tel2Estudiante
 * @property integer $menuEst
 * @property integer $comidaEst
 * @property integer $desayunoEst
 * @property integer $becaEst
 * @property double $descuentoEst
 * @property string $diasEstudiante
 *
 * The followings are the available model relations:
 * @property Asistencias[] $asistenciases
 * @property Centros $idCentroEst0
 * @property Tutor $idTutor0
 */
class Estudiante extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'estudiante';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('nomEstudiante, apellEstudiante, ciEstudiante, paisEst', 'required'),
			array('idTutor, sexEstudiante, codPostalEst, idCentroEst, telEstudiante, nroCuentaEst, tel2Estudiante, menuEst, comidaEst, desayunoEst, becaEst', 'numerical', 'integerOnly'=>true),
			array('descuentoEst', 'numerical'),
			array('nomEstudiante, apellEstudiante, secApellEstudante, ciEstudiante, cursoEstudiante, etapaEstudiante, numCasaEstudiante, pisoEstudiante, provinciaEstudiante, LocalidadEst, calleEstudiante, paisEst, emailEstudiante, dietaEstudiante, nutricionEst, diasEstudiante', 'length', 'max'=>50),
			array('nacEstudiante', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idEstudiante, nomEstudiante, apellEstudiante, secApellEstudante, ciEstudiante, sexEstudiante, nacEstudiante, cursoEstudiante, etapaEstudiante, numCasaEstudiante, pisoEstudiante, provinciaEstudiante, LocalidadEst, calleEstudiante, codPostalEst, paisEst, idCentroEst, telEstudiante, emailEstudiante, nroCuentaEst, dietaEstudiante, nutricionEst, tel2Estudiante, menuEst, comidaEst, desayunoEst, becaEst, descuentoEst, diasEstudiante', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'asistenciases' => array(self::HAS_MANY, 'Asistencias', 'estudianteAsistencia'),
			'idCentroEst0' => array(self::BELONGS_TO, 'Centros', 'idCentroEst'),

		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
            'idEstudiante' => 'Id Estudiante',
            'nomEstudiante' => 'Nombre',
            'apellEstudiante' => '1er Apellido',
            'secApellEstudante' => '2do Apellido',
            'ciEstudiante' => 'Nro ID Esc.',
            'idTutor' => 'Tutor Pagador',
            'sexEstudiante' => 'Sexo',
            'nacEstudiante' => 'F. Nacimiento',
            'cursoEstudiante' => 'Curso',
            'numCasaEstudiante' => 'Num.',
            'pisoEstudiante' => 'Piso',
            'provinciaEstudiante' => 'Provincia',
            'LocalidadEst' => 'Localidad',
            'calleEstudiante' => 'Calle',
            'codPostalEst' => 'Cod. Postal',
            'paisEst' => 'Pais',
            'idCentroEst' => 'Centro',
            'telEstudiante' => 'Telefono',
            'emailEstudiante' => 'Email',
            'nroCuentaEst' => 'Nro Cuenta',
            'dietaEstudiante' => 'Dieta',
            'nutricionEst' => 'Datos Nutricionales',
            'tel2Estudiante' => 'Telf. Alternativo',
            'menuEst' => 'Dieta',
            'comidaEst' => 'Comida Est',
            'desayunoEst' => 'Desayuno Est',
            'becaEst' => 'Beca',
            'descuentoEst' => 'Descuento',
            'diasEstudiante' => 'Desayunos',
            'diasEstComida' => 'Almuerzos',
			'etapaEstudiante' => 'Etapa Estudiante',

		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('idEstudiante',$this->idEstudiante);
		$criteria->compare('nomEstudiante',$this->nomEstudiante,true);
		$criteria->compare('apellEstudiante',$this->apellEstudiante,true);
		$criteria->compare('secApellEstudante',$this->secApellEstudante,true);
		$criteria->compare('ciEstudiante',$this->ciEstudiante,true);
		$criteria->compare('idTutor',$this->idTutor);
		$criteria->compare('sexEstudiante',$this->sexEstudiante);
		$criteria->compare('nacEstudiante',$this->nacEstudiante,true);
		$criteria->compare('cursoEstudiante',$this->cursoEstudiante,true);
		$criteria->compare('etapaEstudiante',$this->etapaEstudiante,true);
		$criteria->compare('numCasaEstudiante',$this->numCasaEstudiante,true);
		$criteria->compare('pisoEstudiante',$this->pisoEstudiante,true);
		$criteria->compare('provinciaEstudiante',$this->provinciaEstudiante,true);
		$criteria->compare('LocalidadEst',$this->LocalidadEst,true);
		$criteria->compare('calleEstudiante',$this->calleEstudiante,true);
		$criteria->compare('codPostalEst',$this->codPostalEst);
		$criteria->compare('paisEst',$this->paisEst,true);
		$criteria->compare('idCentroEst',$this->idCentroEst);
		$criteria->compare('telEstudiante',$this->telEstudiante);
		$criteria->compare('emailEstudiante',$this->emailEstudiante,true);
		$criteria->compare('nroCuentaEst',$this->nroCuentaEst);
		$criteria->compare('dietaEstudiante',$this->dietaEstudiante,true);
		$criteria->compare('nutricionEst',$this->nutricionEst,true);
		$criteria->compare('tel2Estudiante',$this->tel2Estudiante);
		$criteria->compare('menuEst',$this->menuEst);
		$criteria->compare('comidaEst',$this->comidaEst);
		$criteria->compare('desayunoEst',$this->desayunoEst);
		$criteria->compare('becaEst',$this->becaEst);
		$criteria->compare('descuentoEst',$this->descuentoEst);
		$criteria->compare('diasEstudiante',$this->diasEstudiante,true);
		$criteria->compare('diasEstComida',$this->diasEstudiante,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Estudiante the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
