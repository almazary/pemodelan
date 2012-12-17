<?php

/**
 * This is the model class for table "anggota_status".
 *
 * The followings are the available columns in table 'anggota_status':
 * @property integer $anggota_status_id
 * @property string $anggota_status_judul
 *
 * The followings are the available model relations:
 * @property Anggota[] $anggotas
 */
class AnggotaStatus extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AnggotaStatus the static model class
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
		return 'anggota_status';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('anggota_status_judul', 'required'),
			array('anggota_status_judul', 'length', 'max'=>25),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('anggota_status_id, anggota_status_judul', 'safe', 'on'=>'search'),
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
			'anggotas' => array(self::HAS_MANY, 'Anggota', 'anggota_status_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'anggota_status_id' => 'Anggota Status',
			'anggota_status_judul' => 'Anggota Status Judul',
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

		$criteria->compare('anggota_status_id',$this->anggota_status_id);
		$criteria->compare('anggota_status_judul',$this->anggota_status_judul,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}