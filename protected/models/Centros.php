<?php

/**
 * This is the model class for table "centros".
 *
 * The followings are the available columns in table 'centros':
 * @property integer $idCentro
 * @property string $nomCentro
 * @property string $calleCentro
 * @property string $numDomCentro
 * @property string $pisoCentro
 * @property integer $telfCentro
 * @property integer $faxCentro
 * @property string $emailCentro
 * @property string $expedienteCentro
 * @property string $loteCentro
 * @property string $provCentro
 * @property string $localidadCentro
 * @property string $personalCentro
 * @property integer $codPostalCentro
 * @property string $cifCentro
 * @property string $codigoCentro
 * @property integer $respCreacionCentro
 *
 * The followings are the available model relations:
 * @property Calendario[] $calendarios
 * @property Estudiante[] $estudiantes
 */
class Centros extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'centros';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('telfCentro, faxCentro, codPostalCentro, respCreacionCentro', 'numerical', 'integerOnly'=>true),
			array('nomCentro, calleCentro, numDomCentro, pisoCentro, emailCentro, expedienteCentro, loteCentro, provCentro, localidadCentro, personalCentro, cifCentro, codigoCentro', 'length', 'max'=>50),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idCentro, nomCentro, calleCentro, numDomCentro, pisoCentro, telfCentro, faxCentro, emailCentro, expedienteCentro, loteCentro, provCentro, localidadCentro, personalCentro, codPostalCentro, cifCentro, codigoCentro, respCreacionCentro', 'safe', 'on'=>'search'),
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
			'calendarios' => array(self::HAS_MANY, 'Calendario', 'centroCal'),
			'estudiantes' => array(self::HAS_MANY, 'Estudiante', 'idCentroEst'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idCentro' => 'Id Centro',
			'nomCentro' => 'Nombre',
			'calleCentro' => 'Calle',
			'numDomCentro' => 'Núm',
			'pisoCentro' => 'Piso',
			'telfCentro' => 'Telfono',
			'faxCentro' => 'Fax',
			'emailCentro' => 'Email',
			'expedienteCentro' => 'Expediente',
			'loteCentro' => 'Lote',
			'provCentro' => 'Provincia',
			'localidadCentro' => 'Localidad',
			'personalCentro' => 'Personal',
			'codPostalCentro' => 'Cod. Postal',
			'cifCentro' => 'C.I.F.',
			'codigoCentro' => 'Código',
			'respCreacionCentro' => 'Resp Creacion Centro',
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

		$criteria->compare('idCentro',$this->idCentro);
		$criteria->compare('nomCentro',$this->nomCentro,true);
		$criteria->compare('calleCentro',$this->calleCentro,true);
		$criteria->compare('numDomCentro',$this->numDomCentro,true);
		$criteria->compare('pisoCentro',$this->pisoCentro,true);
		$criteria->compare('telfCentro',$this->telfCentro);
		$criteria->compare('faxCentro',$this->faxCentro);
		$criteria->compare('emailCentro',$this->emailCentro,true);
		$criteria->compare('expedienteCentro',$this->expedienteCentro,true);
		$criteria->compare('loteCentro',$this->loteCentro,true);
		$criteria->compare('provCentro',$this->provCentro,true);
		$criteria->compare('localidadCentro',$this->localidadCentro,true);
		$criteria->compare('personalCentro',$this->personalCentro,true);
		$criteria->compare('codPostalCentro',$this->codPostalCentro);
		$criteria->compare('cifCentro',$this->cifCentro,true);
		$criteria->compare('codigoCentro',$this->codigoCentro,true);
		$criteria->compare('respCreacionCentro',$this->respCreacionCentro);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Centros the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
