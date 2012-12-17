<?php

/**
 * This is the model class for table "perusahaan_type_status".
 *
 * The followings are the available columns in table 'perusahaan_type_status':
 * @property integer $perusahaan_type_status_id
 * @property string $perusahaan_type_status_nama
 *
 * The followings are the available model relations:
 * @property PerusahaanType[] $perusahaanTypes
 */
class PerusahaanTypeStatus extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return PerusahaanTypeStatus the static model class
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
		return 'perusahaan_type_status';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('perusahaan_type_status_nama', 'required'),
			array('perusahaan_type_status_nama', 'length', 'max'=>16),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('perusahaan_type_status_id, perusahaan_type_status_nama', 'safe', 'on'=>'search'),
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
			'perusahaanTypes' => array(self::HAS_MANY, 'PerusahaanType', 'perusahaan_type_status_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'perusahaan_type_status_id' => 'Perusahaan Type Status',
			'perusahaan_type_status_nama' => 'Perusahaan Type Status Nama',
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

		$criteria->compare('perusahaan_type_status_id',$this->perusahaan_type_status_id);
		$criteria->compare('perusahaan_type_status_nama',$this->perusahaan_type_status_nama,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}