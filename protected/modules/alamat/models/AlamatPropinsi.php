<?php

/**
 * This is the model class for table "alamat_propinsi".
 *
 * The followings are the available columns in table 'alamat_propinsi':
 * @property integer $alamat_propinsi_id
 * @property string $alamat_propinsi_kode
 * @property string $alamat_propinsi_nama
 * @property integer $alamat_propinsi_status
 * @property integer $alamat_negara_id
 *
 * The followings are the available model relations:
 * @property Alamat[] $alamats
 * @property Perusahaan[] $perusahaans
 * @property PerusahaanCabang[] $perusahaanCabangs
 */
class AlamatPropinsi extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AlamatPropinsi the static model class
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
		return 'alamat_propinsi';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('alamat_propinsi_kode, alamat_propinsi_nama, alamat_negara_id', 'required'),
			array('alamat_propinsi_status, alamat_negara_id', 'numerical', 'integerOnly'=>true),
			array('alamat_propinsi_kode', 'length', 'max'=>32),
			array('alamat_propinsi_nama', 'length', 'max'=>128),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('alamat_propinsi_id, alamat_propinsi_kode, alamat_propinsi_nama, alamat_propinsi_status, alamat_negara_id', 'safe', 'on'=>'search'),
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
			'alamats' => array(self::HAS_MANY, 'Alamat', 'alamat_propinsi_id'),
			'perusahaans' => array(self::HAS_MANY, 'Perusahaan', 'alamat_propinsi_id'),
			'perusahaanCabangs' => array(self::HAS_MANY, 'PerusahaanCabang', 'alamat_propinsi_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'alamat_propinsi_id' => 'Alamat Propinsi',
			'alamat_propinsi_kode' => 'Alamat Propinsi Kode',
			'alamat_propinsi_nama' => 'Alamat Propinsi Nama',
			'alamat_propinsi_status' => 'Alamat Propinsi Status',
			'alamat_negara_id' => 'Alamat Negara',
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

		$criteria->compare('alamat_propinsi_id',$this->alamat_propinsi_id);
		$criteria->compare('alamat_propinsi_kode',$this->alamat_propinsi_kode,true);
		$criteria->compare('alamat_propinsi_nama',$this->alamat_propinsi_nama,true);
		$criteria->compare('alamat_propinsi_status',$this->alamat_propinsi_status);
		$criteria->compare('alamat_negara_id',$this->alamat_negara_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}