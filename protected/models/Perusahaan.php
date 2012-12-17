<?php

/**
 * This is the model class for table "perusahaan".
 *
 * The followings are the available columns in table 'perusahaan':
 * @property integer $perusahaan_id
 * @property string $perusahaan_alias
 * @property string $perusahaan_nama
 * @property string $perusahaan_deskripsi
 * @property string $perusahaan_icon
 * @property string $perusahaan_logo
 * @property string $perusahaan_visi
 * @property string $perusahaan_misi
 * @property string $perusahaan_sejarah
 * @property string $perusahaan_strategi
 * @property string $perusahaan_tanggal
 * @property string $perusahaan_tanggal_berdiri
 * @property integer $anggota_id
 * @property integer $alamat_kota_id
 * @property integer $alamat_propinsi_id
 * @property integer $perusahaan_status_id
 * @property integer $perusahaan_type_id
 *
 * The followings are the available model relations:
 * @property AlamatKota $alamatKota
 * @property AlamatPropinsi $alamatPropinsi
 * @property Anggota $anggota
 * @property PerusahaanStatus $perusahaanStatus
 * @property PerusahaanType $perusahaanType
 * @property PerusahaanCabang[] $perusahaanCabangs
 * @property PerusahaanProfile[] $perusahaanProfiles
 */
class Perusahaan extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Perusahaan the static model class
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
		return 'perusahaan';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('perusahaan_alias, perusahaan_nama, perusahaan_deskripsi, perusahaan_icon, perusahaan_logo, perusahaan_visi, perusahaan_misi, perusahaan_sejarah, perusahaan_strategi, perusahaan_tanggal_berdiri, anggota_id, alamat_kota_id, alamat_propinsi_id, perusahaan_status_id, perusahaan_type_id', 'required'),
			array('anggota_id, alamat_kota_id, alamat_propinsi_id, perusahaan_status_id, perusahaan_type_id', 'numerical', 'integerOnly'=>true),
			array('perusahaan_alias, perusahaan_nama, perusahaan_icon, perusahaan_logo', 'length', 'max'=>25),
			array('perusahaan_deskripsi, perusahaan_visi, perusahaan_misi', 'length', 'max'=>255),
			array('perusahaan_tanggal', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('perusahaan_id, perusahaan_alias, perusahaan_nama, perusahaan_deskripsi, perusahaan_icon, perusahaan_logo, perusahaan_visi, perusahaan_misi, perusahaan_sejarah, perusahaan_strategi, perusahaan_tanggal, perusahaan_tanggal_berdiri, anggota_id, alamat_kota_id, alamat_propinsi_id, perusahaan_status_id, perusahaan_type_id', 'safe', 'on'=>'search'),
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
			'alamatKota' => array(self::BELONGS_TO, 'AlamatKota', 'alamat_kota_id'),
			'alamatPropinsi' => array(self::BELONGS_TO, 'AlamatPropinsi', 'alamat_propinsi_id'),
			'anggota' => array(self::BELONGS_TO, 'Anggota', 'anggota_id'),
			'perusahaanStatus' => array(self::BELONGS_TO, 'PerusahaanStatus', 'perusahaan_status_id'),
			'perusahaanType' => array(self::BELONGS_TO, 'PerusahaanType', 'perusahaan_type_id'),
			'perusahaanCabangs' => array(self::HAS_MANY, 'PerusahaanCabang', 'perusahaan_id'),
			'perusahaanProfiles' => array(self::HAS_MANY, 'PerusahaanProfile', 'perusahaan_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'perusahaan_id' => 'Perusahaan',
			'perusahaan_alias' => 'Perusahaan Alias',
			'perusahaan_nama' => 'Perusahaan Nama',
			'perusahaan_deskripsi' => 'Perusahaan Deskripsi',
			'perusahaan_icon' => 'Perusahaan Icon',
			'perusahaan_logo' => 'Perusahaan Logo',
			'perusahaan_visi' => 'Perusahaan Visi',
			'perusahaan_misi' => 'Perusahaan Misi',
			'perusahaan_sejarah' => 'Perusahaan Sejarah',
			'perusahaan_strategi' => 'Perusahaan Strategi',
			'perusahaan_tanggal' => 'Perusahaan Tanggal',
			'perusahaan_tanggal_berdiri' => 'Perusahaan Tanggal Berdiri',
			'anggota_id' => 'Anggota',
			'alamat_kota_id' => 'Alamat Kota',
			'alamat_propinsi_id' => 'Alamat Propinsi',
			'perusahaan_status_id' => 'Perusahaan Status',
			'perusahaan_type_id' => 'Perusahaan Type',
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

		$criteria->compare('perusahaan_id',$this->perusahaan_id);
		$criteria->compare('perusahaan_alias',$this->perusahaan_alias,true);
		$criteria->compare('perusahaan_nama',$this->perusahaan_nama,true);
		$criteria->compare('perusahaan_deskripsi',$this->perusahaan_deskripsi,true);
		$criteria->compare('perusahaan_icon',$this->perusahaan_icon,true);
		$criteria->compare('perusahaan_logo',$this->perusahaan_logo,true);
		$criteria->compare('perusahaan_visi',$this->perusahaan_visi,true);
		$criteria->compare('perusahaan_misi',$this->perusahaan_misi,true);
		$criteria->compare('perusahaan_sejarah',$this->perusahaan_sejarah,true);
		$criteria->compare('perusahaan_strategi',$this->perusahaan_strategi,true);
		$criteria->compare('perusahaan_tanggal',$this->perusahaan_tanggal,true);
		$criteria->compare('perusahaan_tanggal_berdiri',$this->perusahaan_tanggal_berdiri,true);
		$criteria->compare('anggota_id',$this->anggota_id);
		$criteria->compare('alamat_kota_id',$this->alamat_kota_id);
		$criteria->compare('alamat_propinsi_id',$this->alamat_propinsi_id);
		$criteria->compare('perusahaan_status_id',$this->perusahaan_status_id);
		$criteria->compare('perusahaan_type_id',$this->perusahaan_type_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}