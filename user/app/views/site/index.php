<section class="best-sell">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h1>Sản phẩm do đẳng cấp Mộc cung cấp </h1>
                Với mục tiêu trở thành một công ty hàng đầu trong lĩnh vực sàn gỗ ngoài trời,
                sàn gỗ công nghiệp, sàn gỗ tự nhiên, vỉ nhựa gổ, sàn gổ hồ bơi, sàn gỗ sân thượng...<br>
                Chúng tôi luôn không ngừng làm mới mẫu mã, đa dạng chủng loại, chất lượng tốt nhất và
                 giá cả phù hợp với hầu hết khách hàng,...
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
                                        <a href="<?php echo url('/chi-tiet/' . $v1->id . '/' . $v1->alias)?>">
                                            <img class="img-responsive" src="<?php echo app()->baseUrl?>/uploads/<?php echo $v1->image?>" alt="<?php echo $v1->name?>">
                                        </a>
                                    </div>
                                    <h3 class="product-item-name">
                                        <a href="<?php echo url('cong-trinh/chi-tiet/' . $v1->id . '/' . $v1->alias)?>">
                                            <?php echo $v1->name?>
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
    <div class="form-style container baogia">
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
                    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12"><input type="text" class="form-text"></div>
                <!-- </div> -->
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"> <label>Địa chỉ:<span>*</span></label> </div>
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12"><input type="text" class="form-text"></div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"> <label>Số điện thoại:<span>*</span></label> </div>
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12"><input type="text" class="form-text"></div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"> <label>Email:<span>*</span></label> </div>
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12"><input type="text" class="form-text"></div>
            </div>
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
                            <select class="form-text cat1_id">
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"> <label>Tên sàn gỗ: </label> </div>
                        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                            <select class="form-text">
                                <option>O24 8m</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="padding: 50px; font-weight: bold">ĐƠN GIÁ: <span class="red">340.000</span> VND/M2</div>
        </div>
        <div class="row mb20">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb10"><b>DIỆN TÍCH LÓT SÀN</b></div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-5 col-md-5" style="display: flex; padding-top: 20px;">
                        <input type="radio" checked name="loai" value="0" class="form-checkbox">
                        <span>Chiều dài</span>
                        <input type="text" class="form-text" maxlength="4" style="width: 50px; margin: -10px 10px 0 10px; padding: 5px">
                        <span>m</span>
                    </div>
                    <div class="col-lg-2 col-md-2" style="padding-top: 20px;" align="center">x</div>
                    <div class="col-lg-5 col-md-5" style="display: flex; padding-top: 20px;">
                        
                        Chiều rộng
                        <input type="text" class="form-text" maxlength="4" style="width: 50px; margin: -10px 10px 0 10px; padding: 5px">
                        m
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6" style="display: flex; padding-top: 20px;">
                        <input type="radio" name="loai" value="1" class="form-checkbox">
                        <span>Diện tích&nbsp;</span>
                        <input type="text" class="form-text" maxlength="4" style="width: 50px; margin: -10px 10px 0 10px; padding: 5px">
                        m2
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="padding: 50px; font-weight: bold">BÁO GIÁ: <span class="red">340.000</span> VND/M2</div>
        </div>
        <div class="row mb20">
            <div class="col-lg-12">
                * Ghi chú: báo giá trên <br>
                + CHỈ bao gồm ván sàn <br>
                + CHƯA bao gồm chi phí thi công, phụ kiện len nẹp, vận chuyển, VAT 10%... <br><br>

                ** Cám ơn khách hàng đã lựa chọn sàn gỗ Đẳng Cấp Mộc. Chúng tôi sẽ liên hệ tư vấn trong thời gian sớm nhất...
            </div>
        </div>
    </div>
    <div class="container service">
        <div class="row">
            <div class="col-lg-12 center">
                <span class="title">TẠI SAO NÊN CHỌN ĐẲNG CẤP MỘC ?</span>
                <div class="pb10">Với khát vọng trở thành công ty hàng đầu trong lĩnh vực sàn gỗ tại Việt Nam, chúng tôi đã và đang tạo sự khác biệt với công ty khác để mang đến những sản phẩm chất lượng cao, dịch vụ hoàn hảo tới tay khách hàng. Dưới đây là 10 điểm khác biệt của chúng tôi: </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon1.jpg"></div>
                <p><b>Nhân viên: </b>Đội ngũ nhân sự hơn 20 người. Thuộc top những công ty hàng đầu trong lĩnh vực sàn gỗ. Chúng tôi có đủ người để đáp ưng các yêu cầu của khách hàng một cách tốt nhất, nhanh nhất.</p>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon6.jpg"></div>
                <p><b>Uy tín: </b>Được sự đánh giá cao từ khách hàng là nguồn động lực to lớn giúp chúng tôi không ngừng nâng cao chất lượng sản phẩm dịch vụ. Đẳng cấp Mộc đã nhận được rất nhiều ý kiến đánh giá, động viên từ khách hàng. Quý khách có thể xem chi tiết tại đây.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon2.jpg"></div>
                <p><b>Kinh nghiệm: </b>Đẳng Cấp Mộc đã thực hiện công trình sàn gỗ cho hơn 100 gia đình, công ty, tổ chức,...<br>Chúng tôi đủ kinh nghiệm để thấu hiểu nhu cầu của khách hàng để làm ra các sản phẩm tốt nhất.</p>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon7.jpg"></div>
                <p><b>Chất lượng: </b>Đẳng Cấp Mộc đem đến cho khách hàng những sản phẩm chính hiệu mang chất lượng tốt nhất, phù họp nhất cho ngôi nhà thân yêu của bạn.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon3.jpg"></div>
                <p><b>Mục tiêu: </b>Hiện tại đã được những thành tựu nhất định trong lĩnh vực sàn gỗ. Nhưng chúng tôi sẽ không dừng lại mà sẽ liên tục hoàn thiện mình để cung cấp dịch vụ tốt nhất cho khách hàng.</p>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon8.jpg"></div>
                <p><b>Giá cả: </b>Với quan điểm là một đơn vị "hào phóng cho đi và đón nhận tuyệt vời". Chúng tôi tin sẽ mang đến cho khách hàng một dịch vụ tuyệt hảo, một sản phẩm đẳng cấp nhưng bảo đảm tiết kiệm tối đa chi phí.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon4.jpg"></div>
                <p><b>Tận tâm: </b>Với đội ngũ nhân viên chuyên nghiệp, tận tâm, giàu kinh nghiệm cùng phương châm "khách hàng là số 1", chúng tôi sẽ mang đến cho khách hàng sự an tâm, hài lòng khi sử dụng sản phẩm tại Đẳng Cấp Mộc.</p>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon9.jpg"></div>
                <p><b>Quy trình: </b>Với quy trình tư vấn, khảo sát, lắp ráp chuyên nghiệp. Chúng tôi tự tin giúp khách hàng có được những sàn gổ đẹp nhất, bền nhất, mang lại hiệu quả cao mà không mất quá nhiều thời gian trao đổi, làm việc. </p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon5.jpg"></div>
                <p><b>Hỗ trợ: </b>Đẳng Cấp Mộc có đội ngũ hỗ trợ khách hàng riêng, không kiêm nhiệm với công việc khác. Vì vậy, chúng tôi sẵn sàng hỗ trợ ngay khi khách hàng cần. Đây cũng là sự khác biệt của Đẳng Cấp Mộc so với các công ty khác.</p>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div><img src="<?php echo app()->baseUrl?>/assets/images/icon10.jpg"></div>
                <p><b>Cam kết: </b>Đẳng Cấp Mộc cam kết đem lại những sản phẩm chất lượng tốt nhất, đẹp nhất. Chúng tôi muốn khách hàng thấy rằng, Đẳng Cấp Mộc thấu hiểu nhu cầu của khách hàng khi đến với chúng tôi.</p>
            </div>
        </div>
    </div>
</section>