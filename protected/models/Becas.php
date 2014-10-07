<?php

/**
 * This is the model class for table "becas".
 *
 * The followings are the available columns in table 'becas':
 * @property integer $idBeca
 * @property integer $centroBeca
 * @property string $gestionBeca
 * @property string $servicioBeca
 * @property double $valorBeca
 * @property integer $tipoCoberBeca
 * @property integer $confirBeca
 * @property string $inicioBeca
 * @property string $finBeca
 * @property integer $respBeca
 */
class Becas extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'becas';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('centroBeca, tipoCoberBeca, confirBeca, respBeca', 'numerical', 'integerOnly'=>true),
			array('valorBeca', 'numerical'),
			array('gestionBeca, servicioBeca', 'length', 'max'=>50),
			array('inicioBeca, finBeca', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idBeca, centroBeca, gestionBeca, servicioBeca, valorBeca, tipoCoberBeca, confirBeca, inicioBeca, finBeca, respBeca', 'safe', 'on'=>'search'),
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
			'idBeca' => 'Id Beca',
			'centroBeca' => 'Centro',
			'gestionBeca' => 'Curso Escolar',
			'servicioBeca' => 'Servicio',
			'valorBeca' => 'Valor',
			'tipoCoberBeca' => '%/Importe',
			'confirBeca' => 'Confirmada',
			'inicioBeca' => 'Fecha Inicio',
			'finBeca' => 'Fecha Fin',
			'respBeca' => 'Resp Beca',
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

		$criteria->compare('idBeca',$this->idBeca);
		$criteria->compare('centroBeca',$this->centroBeca);
		$criteria->compare('gestionBeca',$this->gestionBeca,true);
		$criteria->compare('servicioBeca',$this->servicioBeca,true);
		$criteria->compare('valorBeca',$this->valorBeca);
		$criteria->compare('tipoCoberBeca',$this->tipoCoberBeca);
		$criteria->compare('confirBeca',$this->confirBeca);
		$criteria->compare('inicioBeca',$this->inicioBeca,true);
		$criteria->compare('finBeca',$this->finBeca,true);
		$criteria->compare('respBeca',$this->respBeca);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Becas the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
