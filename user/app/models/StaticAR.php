<?php
class StaticAR extends BaseAR
{
	public $word;
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
		return 'static';
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
			array('name, content', 'required', 'message' => 'Vui lòng nhập {attribute} '),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'name'		=> 'Tiêu đề',
			'content'		=> 'Nội dung',
			'status'		=> 'Tình trạng',
			'created'		=> 'Ngày tạo',
			'alias'			=> 'Alias',
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

	private function getCriteriaListStatic()
	{
		$criteria = new CDbCriteria();
		$criteria->select = '*';
		//$criteria->addCondition('status = :status')->params[':status'] = 1;
		if(strlen($this->word) > 0){
			$criteria->compare('subject', $this->word, true, 'OR');
			$criteria->compare('content', $this->word, true, 'OR');
			$criteria->compare('name', $this->word, true, 'OR');
			$criteria->compare('email', $this->word, true, 'OR');
		}
		$criteria->order = 'id DESC';
		return $criteria;
	}

	public function searchListStatic($pageSize = 20, $maxPage = -1)
	{
		$criteria = $this->getCriteriaListStatic();
		return $this->searchList_Ex($criteria, $pageSize, $maxPage);
	}

	public function getList($limit = '', $offset = '')
	{
		$criteria = new CDbCriteria();
		$criteria->select = '*';
		$criteria->addCondition('t.status = :status')->params[':status'] = 1;
		$criteria->addCondition('t.selected = :selected')->params[':selected'] = 1;
		$criteria->order = 'id DESC';
		if ($limit){
			$criteria->limit = $limit;	
		}

		if ($offset){
			$criteria->offset = $offset;	
		}
		
		return $this->findAll($criteria);
	}
}