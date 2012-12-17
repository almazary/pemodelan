<?php

/**
 * This is the model class for table "alamat_kota".
 *
 * The followings are the available columns in table 'alamat_kota':
 * @property integer $alamat_kota_id
 * @property string $alamat_kota_nama
 * @property integer $alamat_kota_status
 * @property integer $alamat_propinsi_id
 *
 * The followings are the available model relations:
 * @property Alamat[] $alamats
 * @property Perusahaan[] $perusahaans
 * @property PerusahaanCabang[] $perusahaanCabangs
 */
class AlamatKota extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AlamatKota the static model class
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
		return 'alamat_kota';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('alamat_kota_nama, alamat_propinsi_id', 'required'),
			array('alamat_kota_status, alamat_propinsi_id', 'numerical', 'integerOnly'=>true),
			array('alamat_kota_nama', 'length', 'max'=>128),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('alamat_kota_id, alamat_kota_nama, alamat_kota_status, alamat_propinsi_id', 'safe', 'on'=>'search'),
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
			'alamats' => array(self::HAS_MANY, 'Alamat', 'alamat_kota_id'),
			'perusahaans' => array(self::HAS_MANY, 'Perusahaan', 'alamat_kota_id'),
			'perusahaanCabangs' => array(self::HAS_MANY, 'PerusahaanCabang', 'alamat_kota_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'alamat_kota_id' => 'Alamat Kota',
			'alamat_kota_nama' => 'Alamat Kota Nama',
			'alamat_kota_status' => 'Alamat Kota Status',
			'alamat_propinsi_id' => 'Alamat Propinsi',
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

		$criteria->compare('alamat_kota_id',$this->alamat_kota_id);
		$criteria->compare('alamat_kota_nama',$this->alamat_kota_nama,true);
		$criteria->compare('alamat_kota_status',$this->alamat_kota_status);
		$criteria->compare('alamat_propinsi_id',$this->alamat_propinsi_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}