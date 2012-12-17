<?php

/**
 * This is the model class for table "anggota_type".
 *
 * The followings are the available columns in table 'anggota_type':
 * @property integer $anggota_type_id
 * @property string $anggota_type_nama
 * @property integer $anggota_type_status
 *
 * The followings are the available model relations:
 * @property Anggota[] $anggotas
 */
class AnggotaType extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AnggotaType the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'anggota_type';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('anggota_type_nama, anggota_type_status', 'required'),
			array('anggota_type_status', 'numerical', 'integerOnly'=>true),
			array('anggota_type_nama', 'length', 'max'=>25),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('anggota_type_id, anggota_type_nama, anggota_type_status', 'safe', 'on'=>'search'),
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
			'anggotas' => array(self::HAS_MANY, 'Anggota', 'anggota_type_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'anggota_type_id' => 'Anggota Type',
			'anggota_type_nama' => 'Anggota Type Nama',
			'anggota_type_status' => 'Anggota Type Status',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('anggota_type_id',$this->anggota_type_id);
		$criteria->compare('anggota_type_nama',$this->anggota_type_nama,true);
		$criteria->compare('anggota_type_status',$this->anggota_type_status);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}