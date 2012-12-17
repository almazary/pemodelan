<?php

/**
 * This is the model class for table "anggota_level".
 *
 * The followings are the available columns in table 'anggota_level':
 * @property integer $anggota_level_id
 * @property string $anggota_level_alias
 * @property string $anggota_level_nama
 *
 * The followings are the available model relations:
 * @property Anggota[] $anggotas
 */
class AnggotaLevel extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AnggotaLevel the static model class
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
		return 'anggota_level';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('anggota_level_alias, anggota_level_nama', 'required'),
			array('anggota_level_alias', 'length', 'max'=>15),
			array('anggota_level_nama', 'length', 'max'=>25),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('anggota_level_id, anggota_level_alias, anggota_level_nama', 'safe', 'on'=>'search'),
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
			'anggotas' => array(self::HAS_MANY, 'Anggota', 'anggota_level_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'anggota_level_id' => 'Anggota Level',
			'anggota_level_alias' => 'Anggota Level Alias',
			'anggota_level_nama' => 'Anggota Level Nama',
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

		$criteria->compare('anggota_level_id',$this->anggota_level_id);
		$criteria->compare('anggota_level_alias',$this->anggota_level_alias,true);
		$criteria->compare('anggota_level_nama',$this->anggota_level_nama,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}