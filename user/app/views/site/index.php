<section class="best-sell">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 center">
                <h3 class="color_yellow">SẢN PHẨM DO ĐẲNG CẤP MỘC CUNG CẤP</h3>
                <p style="margin: 10px 0 20px 0">
                Với mục tiêu trở thành một công ty hàng đầu trong lĩnh vực sàn gỗ ngoài trời,
                sàn gỗ công nghiệp, sàn gỗ tự nhiên, vỉ nhựa gổ, sàn gổ hồ bơi, sàn gỗ sân thượng...<br>
                Chúng tôi luôn không ngừng làm mới mẫu mã, đa dạng chủng loại, chất lượng tốt nhất và
                 giá cả phù hợp với hầu hết khách hàng,...
                </p>
            </div>
        </div>
        <div class="row home_category">
            <?php if ($category):?>
                <?php $j = 0;?>
                <?php foreach($category as $v):?>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <a href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v->alias?>.html" title="<?php echo $v->name?>"><img src="<?php echo app()->baseUrl?>/uploads/<?php echo $v->img_left?>"></a>
                    <p class="cat_title"><a href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v->alias?>.html" title="<?php echo $v->name?>"><?php echo $v->name ?></a></p>
                <?php $category1 = $this->getCategory1($v->id);
                    if($category1):
                ?>
                        <ul>
                            <?php
                                foreach ($category1 as $v1):
                            ?>
                            <li><a href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v1->alias?>.html" title="<?php echo $v1->name?>"><?php echo $v1->name ?></a></li>
                            <?php endforeach;?>
                        </ul>
                        <p class="xemtatca"><a href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v->alias?>.html" title="<?php echo $v->name?>">Xem tất cả</a></p>
                <?php endif;?>
                </div>
                <?php endforeach; ?>
            <?php endif;?>
        </div>
        <?php if ($category):?>
            <?php $j = 0;?>
            <?php foreach($category as $v):?>
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <img src="<?php echo app()->baseUrl?>/uploads/<?php echo $v->img_left?>" class="h200">
                    </div>
                    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                        <div class="row">
                        <?php $congtrinhCat = $this->getCongTrinhByCatId($v->id, 3);?>
                        <?php
                            foreach ($congtrinhCat as $v1):
                        ?>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <div class="product-item">
                                    <div class="product-item-thumbnail">
                                        <a href="<?php echo url('cong-trinh/chi-tiet/' . $v1->id . '/' . $v1->alias)?>">
                                            <img class="img-responsive" src="<?php echo app()->baseUrl?>/uploads/<?php echo $v1->image?>" alt="<?php echo $v1->name?>">
                                        </a>
                                    </div>
                                    <h3 class="product-item-name">
                                        <a href="<?php echo url('cong-trinh/chi-tiet/' . $v1->id . '/' . $v1->alias)?>">
                                            <?php echo $this->cutString($v1->name)?>
                                        </a>
                                    </h3>
                                </div>
                            </div>
                        <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            <?php endforeach;?>
        <?php endif;?>
    </div>
    <section class="banner-middle">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <?php
                        $banner3 = $this->getBannerByCatId(5);
                        if ($banner3):
                    ?>
                            <a target="_blank" href="<?php echo $banner3->url != '' ? $banner3->url : 'javascript:void(0)';?>"><img class="img-responsive" src="<?php echo app()->baseUrl;?>/uploads/<?php echo $banner3->image?>" alt="<?php echo $banner3->name?>"></a>
                            <?php else: ?>
                            <img class="img-responsive" src="assets/banner3.jpg?1493875157619" alt="Banner 3">
                            <?php endif; ?>

                </div>
            </div>
        </div>
    </section>
    <div class="form-style container baogia">
        <?php
            $form = $this->beginWidget('TbActiveForm', array(
                'action'=>sslUrl('contact'),
                'id' => 'baogia-form',
                'method' => 'POST',
                'htmlOptions'=>array('enctype' => 'multipart/form-data', 'method' => 'POST')
                ));
        ?>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 center">
                <p><h3 class="color_yellow">TƯ VÁN - BÁO GIÁ SÀN GỖ</h3></p>
                <p>Quý Khách Hàng có thể tính thử chi phí khi sử dụng sàn gỗ tại Đẳng Cấp Mộc. Vui lòng nhập đầy đủ thông tin bên dưới để xem Báo Giá tham khảo...</p>
            </div>
        </div>
        <div class="row mb20">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb10"><b>THÔNG TIN KHÁCH HÀNG</b></div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <!-- <div class="row"> -->
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"> <label>Họ tên:<span>*</span></label> </div>
                    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12"><input type="text" class="form-text hoten"></div>
                <!-- </div> -->
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"> <label>Địa chỉ:<span>*</span></label> </div>
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12"><input type="text" class="form-text diachi"></div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"> <label>Số điện thoại:<span>*</span></label> </div>
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12"><input type="text" class="form-text sdt"></div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"> <label>Email:<span>*</span></label> </div>
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12"><input type="text" class="form-text email"></div>
            </div>
        </div>
        <div class="row mb20 center">
            <input type="button" value="Gửi" class="btn btn-primary sendbaogia" disabled="disabled">
        </div>
        <div class="row mb20">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb10"><b>CHỌN LOẠI SÀN GỖ</b></div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"> <label>Loại sàn gỗ: </label> </div>
                        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                            <select class="form-text cat_id">
                                <option value="0">-- Chọn loại sàn gỗ</option>
                            <?php
                                $category = $this->getCategory();
                                if($category):
                                    ?>
                                <?php
                                foreach ($category as $v):
                            ?>
                                <option value="<?php echo $v->id ?>"><?php echo $v->name ?></option>
                                <?php endforeach;?>
                            <?php endif;?>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"> <label>Thương hiệu: </label> </div>
                        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                            <select class="form-text thuonghieu">
                            <option value="">-- Chọn thương hiệu</option>
                            <?php
                                $thuonghieu = $this->getThuonghieu();
                                if($thuonghieu):
                                foreach ($thuonghieu as $t):
                            ?>
                                <option value="<?php echo $t->id ?>"><?php echo $t->name ?></option>
                                <?php endforeach;?>
                            <?php endif;?>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"> <label>Tên sàn gỗ: </label> </div>
                        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                            <select class="form-text sango">
                                <option></option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="padding: 50px; font-weight: bold">ĐƠN GIÁ: <span class="red dongia">---</span> VND/M2</div>
        </div>
        <div class="row mb20">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb10"><b>DIỆN TÍCH LÓT SÀN</b></div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-5 col-md-5" style="display: flex; padding-top: 20px;">
                        <input type="radio" checked name="loai" value="0" class="form-checkbox type">
                        <span>Chiều dài</span>
                        <input type="text" class="form-text chieudai" maxlength="4" style="width: 50px; margin: -10px 10px 0 10px; padding: 5px">
                        <span>m</span>
                    </div>
                    <div class="col-lg-2 col-md-2" style="padding-top: 20px;" align="center">x</div>
                    <div class="col-lg-5 col-md-5" style="display: flex; padding-top: 20px;">

                        Chiều rộng
                        <input type="text" class="form-text chieurong" maxlength="4" style="width: 50px; margin: -10px 10px 0 10px; padding: 5px">
                        m
                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6" style="display: flex; padding-top: 20px;">
                        <input type="radio" name="loai" value="1" class="form-checkbox type">
                        <span>Diện tích&nbsp;</span>
                        <input type="text" class="form-text dientich" maxlength="4" style="width: 50px; margin: -10px 10px 0 10px; padding: 5px">
                        m2
                    </div>

                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="padding: 50px; font-weight: bold">BÁO GIÁ: <span class="red thanhtien">---</span> VND/M2</div>
        </div>
        <div class="row mb20">
            <div class="col-lg-12">
                * Ghi chú: báo giá trên <br>
                + CHỈ bao gồm ván sàn <br>
                + CHƯA bao gồm chi phí thi công, phụ kiện len nẹp, vận chuyển, VAT 10%... <br><br>

                ** Cám ơn khách hàng đã lựa chọn sàn gỗ Đẳng Cấp Mộc. Chúng tôi sẽ liên hệ tư vấn trong thời gian sớm nhất...
            </div>
        </div>
        <?php
            $this->endWidget();
        ?>
    </div>
    <section class="banner-middle">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <?php
                        $banner3 = $this->getBannerByCatId(6);
                        if ($banner3):
                    ?>
                            <a target="_blank" href="<?php echo $banner3->url != '' ? $banner3->url : 'javascript:void(0)';?>"><img class="img-responsive" src="<?php echo app()->baseUrl;?>/uploads/<?php echo $banner3->image?>" alt="<?php echo $banner3->name?>"></a>
                            <?php else: ?>
                            <img class="img-responsive" src="assets/banner3.jpg?1493875157619" alt="Banner 3">
                            <?php endif; ?>

                </div>
            </div>
        </div>
    </section>
    <div class="container service">
        <div class="row">
            <div class="col-lg-12 center">
                <span class="title"><?php echo $about->title ?></span>
                <div class="pb10"><?php echo $about->description ?><</div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon1.jpg"></div>
                <?php echo $about->nhanvien ?>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon6.jpg"></div>
                <?php echo $about->uytin ?>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon2.jpg"></div>
                <?php echo $about->kinhnghiem ?>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon7.jpg"></div>
                <?php echo $about->chatluong ?>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon3.jpg"></div>
                <?php echo $about->muctieu ?>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon8.jpg"></div>
                <?php echo $about->giaca ?>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon4.jpg"></div>
                <?php echo $about->tantam ?>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon9.jpg"></div>
                <?php echo $about->quytrinh ?>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon5.jpg"></div>
                <?php echo $about->hotro ?>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon10.jpg"></div>
                <?php echo $about->camket ?>
            </div>
        </div>
    </div>
</section>