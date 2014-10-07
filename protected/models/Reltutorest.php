<?php

/**
 * This is the model class for table "reltutorest".
 *
 * The followings are the available columns in table 'reltutorest':
 * @property integer $idRelTutorEst
 * @property integer $idTutor
 * @property integer $idEstudiante
 * @property integer $principalTutor
 */
class Reltutorest extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'reltutorest';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('idTutor, idEstudiante, principalTutor', 'required'),
			array('idTutor, idEstudiante, principalTutor', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idRelTutorEst, idTutor, idEstudiante, principalTutor', 'safe', 'on'=>'search'),
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
			'idRelTutorEst' => 'Id Rel Tutor Est',
			'idTutor' => 'Id Tutor',
			'idEstudiante' => 'Id Estudiante',
			'principalTutor' => 'Principal Tutor',
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

		$criteria->compare('idRelTutorEst',$this->idRelTutorEst);
		$criteria->compare('idTutor',$this->idTutor);
		$criteria->compare('idEstudiante',$this->idEstudiante);
		$criteria->compare('principalTutor',$this->principalTutor);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Reltutorest the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
