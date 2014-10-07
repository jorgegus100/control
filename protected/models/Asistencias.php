<?php

/**
 * This is the model class for table "asistencias".
 *
 * The followings are the available columns in table 'asistencias':
 * @property integer $idAsistencia
 * @property integer $estudianteAsistencia
 * @property string $fechaAsistencia
 * @property integer $estadoAsistencia
 * @property integer $servicioAsistencia
 *
 * The followings are the available model relations:
 * @property Estudiante $estudianteAsistencia0
 */
class Asistencias extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'asistencias';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('estudianteAsistencia, fechaAsistencia, estadoAsistencia, servicioAsistencia', 'required'),
			array('estudianteAsistencia, estadoAsistencia, servicioAsistencia', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idAsistencia, estudianteAsistencia, fechaAsistencia, estadoAsistencia, servicioAsistencia', 'safe', 'on'=>'search'),
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
			'estudianteAsistencia0' => array(self::BELONGS_TO, 'Estudiante', 'estudianteAsistencia'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idAsistencia' => 'Id Asistencia',
			'estudianteAsistencia' => 'Estudiante',
			'fechaAsistencia' => 'Fecha',
			'estadoAsistencia' => 'Leyenda',
			'servicioAsistencia' => 'Servicios',
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

		$criteria->compare('idAsistencia',$this->idAsistencia);
		$criteria->compare('estudianteAsistencia',$this->estudianteAsistencia);
		$criteria->compare('fechaAsistencia',$this->fechaAsistencia,true);
		$criteria->compare('estadoAsistencia',$this->estadoAsistencia);
		$criteria->compare('servicioAsistencia',$this->servicioAsistencia);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Asistencias the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
