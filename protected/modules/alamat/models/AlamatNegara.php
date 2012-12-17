<?php

/**
 * This is the model class for table "alamat_negara".
 *
 * The followings are the available columns in table 'alamat_negara':
 * @property integer $alamat_negara_id
 * @property string $alamat_negara_nama
 * @property string $alamat_negara_iso_code_2
 * @property string $alamat_negara_iso_code_3
 * @property integer $alamat_negara_status
 *
 * The followings are the available model relations:
 * @property Alamat[] $alamats
 * @property PerusahaanCabang[] $perusahaanCabangs
 */
class AlamatNegara extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AlamatNegara the static model class
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
		return 'alamat_negara';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('alamat_negara_nama, alamat_negara_iso_code_2, alamat_negara_iso_code_3', 'required'),
			array('alamat_negara_status', 'numerical', 'integerOnly'=>true),
			array('alamat_negara_nama', 'length', 'max'=>128),
			array('alamat_negara_iso_code_2', 'length', 'max'=>2),
			array('alamat_negara_iso_code_3', 'length', 'max'=>3),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('alamat_negara_id, alamat_negara_nama, alamat_negara_iso_code_2, alamat_negara_iso_code_3, alamat_negara_status', 'safe', 'on'=>'search'),
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
			'alamats' => array(self::HAS_MANY, 'Alamat', 'alamat_negara_id'),
			'perusahaanCabangs' => array(self::HAS_MANY, 'PerusahaanCabang', 'alamat_negara_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'alamat_negara_id' => 'Alamat Negara',
			'alamat_negara_nama' => 'Alamat Negara Nama',
			'alamat_negara_iso_code_2' => 'Alamat Negara Iso Code 2',
			'alamat_negara_iso_code_3' => 'Alamat Negara Iso Code 3',
			'alamat_negara_status' => 'Alamat Negara Status',
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

		$criteria->compare('alamat_negara_id',$this->alamat_negara_id);
		$criteria->compare('alamat_negara_nama',$this->alamat_negara_nama,true);
		$criteria->compare('alamat_negara_iso_code_2',$this->alamat_negara_iso_code_2,true);
		$criteria->compare('alamat_negara_iso_code_3',$this->alamat_negara_iso_code_3,true);
		$criteria->compare('alamat_negara_status',$this->alamat_negara_status);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}