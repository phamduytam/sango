<?php
class ProductAR extends BaseAR
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AdminAR the static model class
	 */
	public $word;
	public $cat_id;
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'product';
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
			array('alias, created', 'required'),
			array('name', 'required', 'message' => 'Vui lòng nhập tên sản phẩm'),
			array('content', 'required', 'message' => 'Vui lòng nhập nội dung'),
			array('image', 'file', 'allowEmpty'=>true, 'types' => 'jpg, gif, png, jpeg', 'maxSize' => 5 *1024*1000, 'wrongType' => 'Image không đúng định dạng ', 'tooLarge' => 'Image quá lớn'),
			array('description, order, status, cat_id, cat1_id, thuonghieu_id, tag, price,
			 baohanh, masp, khuyenmai, color, quycach, xuatxu, tinhtrang, ungdung, chongtray, noibat, banchay, hot', 'safe')
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
			'category'=>array(self::BELONGS_TO, 'Category1AR', 'cat_id'),
			'category1'=>array(self::BELONGS_TO, 'Category1AR', 'cat1_id'),
			'thuonghieu'=>array(self::BELONGS_TO, 'ThuonghieuAR', 'thuonghieu_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'name'			=> 'Tên sản phẩm',
			'alias'			=> 'Alias',
			'description'	=> 'Mô tả',
			'content'		=> 'Nội dung',
			'image'			=> 'Hình ảnh',
			'order'			=> 'Thứ tự',
			'status'		=> 'Tình trạng',
			'created'		=> 'Ngày tạo',
			'cat_id'		=> 'Danh mục cấp 1',
			'cat1_id'		=> 'Danh mục cấp 2',
			'tag'			=> 'Tags',
			'price'			=> 'Giá',
			'baohanh'		=> 'Bảo hành',
			'masp'			=> 'Mã sản phẩm',
			'noibat'		=> 'Sản phẩm nỗi bật',
			'banchay'		=> 'Sản phẩm mua nhiều',
			'hot'			=> 'Sản phẩm mới',
			'color'			=> 'Màu',
			'khuyenmai'		=> 'Giá khuyến mãi',
			'quycach'		=> 'Quy cách',
			'chongtray'		=> 'Chống trầy',
			'xuatxu'		=> 'Xuất xứ',
			'tinhtrang'		=> 'Tình trạng',
			'ungdung'		=> 'Ứng dụng',
			'thuonghieu_id'	=> 'Thương hiệu'
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

	private function getCriteriaListProduct()
	{
		$criteria = new CDbCriteria();
		$criteria->select = '*';
		//$criteria->addCondition('status = :status')->params[':status'] = 1;
		if(strlen($this->word) > 0)
			$criteria->compare('name',$this->word,true);
		if(strlen($this->cat_id) > 0)
			$criteria->addCondition('t.cat_id = :cat_id')->params[':cat_id'] = $this->cat_id;
		$criteria->with = array(
			'category' => array(
				'select' 	=> 'category.name',
				'joinType'	=> 'LEFT JOIN'
			),
			'category1' => array(
				'select' 	=> 'category1.name',
				'joinType'	=> 'LEFT JOIN'
			)
		);
		$criteria->order = 't.id DESC';
		return $criteria;
	}

	public function searchListProduct($pageSize = 20, $maxPage = -1)
	{
		$criteria = $this->getCriteriaListProduct();
		return $this->searchList_Ex($criteria, $pageSize, $maxPage);
	}
}