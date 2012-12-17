<?php

/**
 * This is the model class for table "alamat_kodepos".
 *
 * The followings are the available columns in table 'alamat_kodepos':
 * @property integer $alamat_kodepos_id
 * @property string $alamat_kodepos_kode
 * @property integer $alamat_kodepos_status
 *
 * The followings are the available model relations:
 * @property Alamat[] $alamats
 * @property PerusahaanCabang[] $perusahaanCabangs
 */
class AlamatKodepos extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AlamatKodepos the static model class
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
		return 'alamat_kodepos';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('alamat_kodepos_kode, alamat_kodepos_status', 'required'),
			array('alamat_kodepos_status', 'numerical', 'integerOnly'=>true),
			array('alamat_kodepos_kode', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('alamat_kodepos_id, alamat_kodepos_kode, alamat_kodepos_status', 'safe', 'on'=>'search'),
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
			'alamats' => array(self::HAS_MANY, 'Alamat', 'alamat_kodepos_id'),
			'perusahaanCabangs' => array(self::HAS_MANY, 'PerusahaanCabang', 'alamat_kodepos_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'alamat_kodepos_id' => 'Alamat Kodepos',
			'alamat_kodepos_kode' => 'Alamat Kodepos Kode',
			'alamat_kodepos_status' => 'Alamat Kodepos Status',
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

		$criteria->compare('alamat_kodepos_id',$this->alamat_kodepos_id);
		$criteria->compare('alamat_kodepos_kode',$this->alamat_kodepos_kode,true);
		$criteria->compare('alamat_kodepos_status',$this->alamat_kodepos_status);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}