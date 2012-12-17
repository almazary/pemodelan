<?php

/**
 * This is the model class for table "anggota_relasi".
 *
 * The followings are the available columns in table 'anggota_relasi':
 * @property integer $anggota_relasi_id
 * @property string $anggota_relasi_tanggal_terima
 * @property string $anggota_relasi_tanggal_minta
 * @property string $anggota_relasi_tipe
 * @property integer $anggota_relasi_dengan_id
 * @property integer $anggota_id
 *
 * The followings are the available model relations:
 * @property Anggota $anggota
 */
class AnggotaRelasi extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AnggotaRelasi the static model class
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
		return 'anggota_relasi';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('anggota_relasi_tanggal_minta, anggota_relasi_tipe, anggota_id', 'required'),
			array('anggota_relasi_dengan_id, anggota_id', 'numerical', 'integerOnly'=>true),
			array('anggota_relasi_tipe', 'length', 'max'=>25),
			array('anggota_relasi_tanggal_terima', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('anggota_relasi_id, anggota_relasi_tanggal_terima, anggota_relasi_tanggal_minta, anggota_relasi_tipe, anggota_relasi_dengan_id, anggota_id', 'safe', 'on'=>'search'),
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
			'anggota' => array(self::BELONGS_TO, 'Anggota', 'anggota_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'anggota_relasi_id' => 'Anggota Relasi',
			'anggota_relasi_tanggal_terima' => 'Anggota Relasi Tanggal Terima',
			'anggota_relasi_tanggal_minta' => 'Anggota Relasi Tanggal Minta',
			'anggota_relasi_tipe' => 'Anggota Relasi Tipe',
			'anggota_relasi_dengan_id' => 'Anggota Relasi Dengan',
			'anggota_id' => 'Anggota',
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

		$criteria->compare('anggota_relasi_id',$this->anggota_relasi_id);
		$criteria->compare('anggota_relasi_tanggal_terima',$this->anggota_relasi_tanggal_terima,true);
		$criteria->compare('anggota_relasi_tanggal_minta',$this->anggota_relasi_tanggal_minta,true);
		$criteria->compare('anggota_relasi_tipe',$this->anggota_relasi_tipe,true);
		$criteria->compare('anggota_relasi_dengan_id',$this->anggota_relasi_dengan_id);
		$criteria->compare('anggota_id',$this->anggota_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}