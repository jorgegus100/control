<?php

/**
 * This is the model class for table "tutor".
 *
 * The followings are the available columns in table 'tutor':
 * @property integer $idTutor
 * @property string $nomTutor
 * @property string $apellTutor
 * @property string $apell2Tutor
 * @property string $direcTutor
 * @property string $dniTutor
 * @property integer $sexoTutor
 * @property string $relAlumTutor
 * @property integer $principalTutor
 * @property string $calleTutor
 * @property string $numCasaTutor
 * @property string $pisoTutor
 * @property string $provinciaTutor
 * @property string $localidadTutor
 * @property string $codPostalTutor
 * @property integer $telfTutor
 * @property integer $telf2Tutor
 * @property string $emailTutor
 *
 * The followings are the available model relations:
 * @property Estudiante[] $estudiantes
 */
class Tutor extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tutor';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('nomTutor, apellTutor, apell2Tutor, dniTutor, emailTutor', 'required'),
			array('sexoTutor, principalTutor, telfTutor, telf2Tutor', 'numerical', 'integerOnly'=>true),
			array('nomTutor, apellTutor, apell2Tutor, direcTutor, dniTutor, relAlumTutor, calleTutor, numCasaTutor, pisoTutor, provinciaTutor, localidadTutor, codPostalTutor, emailTutor', 'length', 'max'=>50),
			array('emailTutor', 'email'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idTutor, nomTutor, apellTutor, apell2Tutor, direcTutor, dniTutor, sexoTutor, relAlumTutor, principalTutor, calleTutor, numCasaTutor, pisoTutor, provinciaTutor, localidadTutor, codPostalTutor, telfTutor, telf2Tutor, emailTutor', 'safe', 'on'=>'search'),
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
			'estudiantes' => array(self::HAS_MANY, 'Estudiante', 'idTutor'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idTutor' => 'Id Tutor',
			'nomTutor' => 'Nombre',
			'apellTutor' => '1er Apellido',
			'apell2Tutor' => '2do Apellido',
			'direcTutor' => 'Direccion',
			'dniTutor' => 'D.N.I.',
			'sexoTutor' => 'Sexo',
			'relAlumTutor' => 'Rel. Alumno',
			'principalTutor' => 'Tutor Principal',
			'calleTutor' => 'Calle',
			'numCasaTutor' => 'Num',
			'pisoTutor' => 'Piso',
			'provinciaTutor' => 'Provincia',
			'localidadTutor' => 'Localidad',
			'codPostalTutor' => 'Cod. Postal',
			'telfTutor' => 'Teléfono',
			'telf2Tutor' => 'Teléf. Alternativo',
			'emailTutor' => 'Email',
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

		$criteria->compare('idTutor',$this->idTutor);
		$criteria->compare('nomTutor',$this->nomTutor,true);
		$criteria->compare('apellTutor',$this->apellTutor,true);
		$criteria->compare('apell2Tutor',$this->apell2Tutor,true);
		$criteria->compare('direcTutor',$this->direcTutor,true);
		$criteria->compare('dniTutor',$this->dniTutor,true);
		$criteria->compare('sexoTutor',$this->sexoTutor);
		$criteria->compare('relAlumTutor',$this->relAlumTutor,true);
		$criteria->compare('principalTutor',$this->principalTutor);
		$criteria->compare('calleTutor',$this->calleTutor,true);
		$criteria->compare('numCasaTutor',$this->numCasaTutor,true);
		$criteria->compare('pisoTutor',$this->pisoTutor,true);
		$criteria->compare('provinciaTutor',$this->provinciaTutor,true);
		$criteria->compare('localidadTutor',$this->localidadTutor,true);
		$criteria->compare('codPostalTutor',$this->codPostalTutor,true);
		$criteria->compare('telfTutor',$this->telfTutor);
		$criteria->compare('telf2Tutor',$this->telf2Tutor);
		$criteria->compare('emailTutor',$this->emailTutor,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Tutor the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
