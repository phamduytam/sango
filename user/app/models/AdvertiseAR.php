<?php
class AdvertiseAR extends BaseAR
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AdminAR the static model class
	 */
	public $word;
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'advertise';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			/*
			※後で使用できそうなので、元のコードをコメントして、残しておきます。
			array('user_id, password, name', 'required'),
			array('permission, status', 'numerical', 'integerOnly'=>true),
			array('user_id, password', 'length', 'max'=>64),
			array('name', 'length', 'max'=>128),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('user_id, password, name, permission, status', 'safe', 'on'=>'search'),
			*/
			array('name, cat_id', 'required', 'message' => 'Vui lòng nhập {attribute}'),
			array('image', 'file', 'allowEmpty'=>true, 'types' => 'jpg, gif, png, jpeg', 'maxSize' => 2048*1000, 'wrongType' => 'Image không đúng định dạng ', 'tooLarge' => 'Image quá lớn'),
			array('alias, created, order, status, url', 'safe')
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
			'category'=>array(self::BELONGS_TO, 'CategoryAR', 'cat_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'name'			=> 'Tên Image',
			'alias'			=> 'Alias',
			'image'			=> 'Hình ảnh',
			'order'			=> 'Thứ tự',
			'status'		=> 'Tình trạng',
			'created'		=> 'Ngày tạo',
			'url'			=> 'URL'
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

		/*
		※後で使用できそうなので、元のコードをコメントして、残しておきます。
		$criteria->compare('user_id',$this->user_id,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('permission',$this->permission);
		$criteria->compare('status',$this->status);
		*/

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	private function getCriteriaListAdvertise()
	{
		$criteria = new CDbCriteria();
		$criteria->select = '*';
		if(strlen($this->status) > 0)
			$criteria->addCondition('t.status = :status')->params[':status'] = $this->status;
		if(strlen($this->cat_id) > 0)
			$criteria->addCondition('t.cat_id = :cat_id')->params[':cat_id'] = $this->cat_id;
		$criteria->with = array(
			'category' => array(
				'select' 	=> 'category.name',
				'joinType'	=> 'LEFT JOIN'
			)
		);
		if(strlen($this->word) > 0)
			$criteria->compare('name',$this->word,true);
		$criteria->order = 't.order ASC';
		return $criteria;
	}

	public function searchListAdvertise($pageSize = 20, $maxPage = -1)
	{
		$criteria = $this->getCriteriaListAdvertise();
		return $this->searchList_Ex($criteria, $pageSize, $maxPage);
	}

	public function getBanner()
	{
		$criteria = $this->getCriteriaListAdvertise();
		return $this->find($criteria);
	}

	public function getLogo()
	{
		$criteria = $this->getCriteriaListAdvertise();
		return $this->find($criteria);
	}

	public function getSlide()
	{
		$criteria = $this->getCriteriaListAdvertise();
		return $this->findAll($criteria);
	}
}