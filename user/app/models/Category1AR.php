<?php
class Category1AR extends BaseAR
{
	public $word;
	public $parent_id;
	public $hot;

	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AdminAR the static model class
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
		return 'category_pro';
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
			array('name, ', 'required', 'message' => 'Vui lòng nhập {attribute} '),
			array('created, status', 'safe')
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
			'category1'=>array(self::HAS_ONE, 'Category1AR', 'parent_id', 'together' => false),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'name'			=> 'Tiêu đề',
			'status'		=> 'Tình trạng',
			'alias'			=> 'Alias',
			'created'		=> 'Ngày tạo',
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

	private function getCriteriaListCategory($limit = '')
	{
		$criteria = new CDbCriteria();
		$criteria->select = '*';
		//$criteria->addCondition('status = :status')->params[':status'] = 1;
		if(strlen($this->word) > 0){
			$criteria->compare('name', $this->word, true);
		}
		if(strlen($this->parent_id) > 0){
			$criteria->addCondition('t.parent_id = :parent_id')->params[':parent_id'] = $this->parent_id;
		}
		if(strlen($this->hot) > 0){
			$criteria->addCondition('t.hot = :hot')->params[':hot'] = 1;
		}

		$criteria->order = 't.ordering ASC';
		if(strlen($limit) > 0){
			$criteria->limit = $limit;
		}
		
		return $criteria;
	}

	public function searchListCategory($pageSize = 20, $maxPage = -1)
	{
		$criteria = $this->getCriteriaListCategory();
		return $this->searchList_Ex($criteria, $pageSize, $maxPage);
	}

	public function findAllListCategory()
	{
		$criteria = $this->getCriteriaListCategory();
		return $this->findAll($criteria);
	}

	public function getCategory($limit = '') {
		$criteria = $this->getCriteriaListCategory($limit);
		return $this->findAll($criteria);
	}
}