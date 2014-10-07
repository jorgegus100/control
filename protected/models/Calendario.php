<?php

/**
 * This is the model class for table "calendario".
 *
 * The followings are the available columns in table 'calendario':
 * @property integer $idCalendario
 * @property integer $servicioCal
 * @property string $inicioCal
 * @property string $finCal
 * @property string $diasCal
 * @property integer $centroCal
 *
 * The followings are the available model relations:
 * @property Centros $centroCal0
 */
class Calendario extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'calendario';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('servicioCal, centroCal', 'numerical', 'integerOnly'=>true),
			array('diasCal', 'length', 'max'=>250),
			array('inicioCal, finCal', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idCalendario, servicioCal, inicioCal, finCal, diasCal, centroCal', 'safe', 'on'=>'search'),
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
			'centroCal0' => array(self::BELONGS_TO, 'Centros', 'centroCal'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idCalendario' => 'Id Calendario',
			'servicioCal' => 'Servicio',
			'inicioCal' => 'F. Inicio',
			'finCal' => 'F. Cambio',
			'diasCal' => 'Dias Cal',
			'centroCal' => 'Centro',
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

		$criteria->compare('idCalendario',$this->idCalendario);
		$criteria->compare('servicioCal',$this->servicioCal);
		$criteria->compare('inicioCal',$this->inicioCal,true);
		$criteria->compare('finCal',$this->finCal,true);
		$criteria->compare('diasCal',$this->diasCal,true);
		$criteria->compare('centroCal',$this->centroCal);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Calendario the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
