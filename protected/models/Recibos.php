<?php

/**
 * This is the model class for table "recibos".
 *
 * The followings are the available columns in table 'recibos':
 * @property integer $idRecibos
 * @property string $colegioRecibo
 * @property integer $alumnoRecibo
 * @property string $fechEmisionRecibo
 * @property string $estadoRecibo
 * @property string $conceptoRecibo
 * @property double $importeRecibo
 */
class Recibos extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'recibos';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('alumnoRecibo', 'numerical', 'integerOnly'=>true),
			array('importeRecibo', 'numerical'),
			array('colegioRecibo, estadoRecibo, conceptoRecibo', 'length', 'max'=>50),
			array('fechEmisionRecibo', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idRecibos, colegioRecibo, alumnoRecibo, fechEmisionRecibo, estadoRecibo, conceptoRecibo, importeRecibo', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idRecibos' => 'Id Recibos',
			'colegioRecibo' => 'Colegio',
			'alumnoRecibo' => 'Alumno',
			'fechEmisionRecibo' => 'Fech. Emision',
			'estadoRecibo' => 'Estado',
			'conceptoRecibo' => 'Concepto',
			'importeRecibo' => 'Importe',
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

		$criteria->compare('idRecibos',$this->idRecibos);
		$criteria->compare('colegioRecibo',$this->colegioRecibo,true);
		$criteria->compare('alumnoRecibo',$this->alumnoRecibo);
		$criteria->compare('fechEmisionRecibo',$this->fechEmisionRecibo,true);
		$criteria->compare('estadoRecibo',$this->estadoRecibo,true);
		$criteria->compare('conceptoRecibo',$this->conceptoRecibo,true);
		$criteria->compare('importeRecibo',$this->importeRecibo);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Recibos the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
