<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="vi" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noodp,index,follow" />
    <meta http-equiv="content-language" content="vi" />
    <meta name="keywords" content="<?php echo $this->getKeyword();?>">
    <meta name="description" content="<?php echo $this->getKeyword();?>">
    <meta name='revisit-after' content='1 days' />
    <title>
        <?php echo $this->getTitle();?>
    </title>
    <link rel="canonical" href="">
    <meta property="og:type" content="website">
    <meta property="og:title" content="<?php echo $this->getTitle();?>">

    <meta property="og:description" content="<?php echo $this->getDescription();?>">
    <meta property="og:url" content="">
    <meta property="og:site_name" content="Moc Style">

    <?php $time = time()?>
    <link rel="icon" href="<?php echo app()->baseUrl;?>/assets/favicon.png?<?php echo $time?>" type="image/x-icon" />
    <!-- Bootstrap -->
    <link href='<?php echo app()->baseUrl;?>/assets/bootstrap.min.css?<?php echo $time?>' rel='stylesheet' type='text/css' />
    <!-- Roboto Fonts Google -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,500italic,700,700italic&subset=latin,vietnamese'
        rel='stylesheet' type='text/css'>
    <!-- Fonts Awesome -->
    <link href='<?php echo app()->baseUrl;?>/assets/font-awesome.min.css?<?php echo $time?>' rel='stylesheet' type='text/css' />
    <!-- Owl Carousel -->
    <link href='<?php echo app()->baseUrl;?>/assets/owl.carousel.css?<?php echo $time?>' rel='stylesheet' type='text/css' />
    <!-- Animate -->
    <link href='<?php echo app()->baseUrl;?>/assets/animate.min.css?<?php echo $time?>' rel='stylesheet' type='text/css' />
    <!-- Style -->
    <link href='<?php echo app()->baseUrl;?>/assets/themes_support/nprogress.css?20171025' rel='stylesheet' type='text/css' />
    <link href='<?php echo app()->baseUrl;?>/assets/themes_support/checkout.css?20180321' rel='stylesheet' type='text/css' />
    <script src='<?php echo app()->baseUrl;?>/assets/jquery-1.11.3.min.js?<?php echo $time?>' type='text/javascript'></script>
    <!-- Bootstrap -->
    <script src='<?php echo app()->baseUrl;?>/assets/bootstrap.min.js?<?php echo $time?>' type='text/javascript'></script>
    <!-- Bootstrap -->
    <script src='<?php echo app()->baseUrl;?>/assets/owl.carousel.min.js?<?php echo $time?>' type='text/javascript'></script>
    <!-- Notify -->
    <script src='<?php echo app()->baseUrl;?>/assets/bootstrap-notify.min.js?<?php echo $time?>' type='text/javascript'></script>


    <!-- Bizweb API -->
    <script src='<?php echo app()->baseUrl;?>/assets/themes_support/api.jquery.js?4' type='text/javascript'></script>

    <script src='<?php echo app()->baseUrl;?>/assets/themes_support/common.js?4' type='text/javascript'></script>
    <script src='<?php echo app()->baseUrl;?>/assets/themes_support/customer.js?4' type='text/javascript'></script>
    <script src='<?php echo app()->baseUrl;?>/assets/jquery.elevatezoom.js' type='text/javascript'></script>
    <!-- Bootstrap -->
    <script src='<?php echo app()->baseUrl;?>/assets/main.js?<?php echo $time?>' type='text/javascript'></script>
    <link href='<?php echo app()->baseUrl;?>/assets/bw-statistics-style.css?<?php echo $time?>' rel='stylesheet' type='text/css' />
    <link href='<?php echo app()->baseUrl;?>/assets/style.css?<?php echo $time?>' rel='stylesheet' type='text/css' />
</head>

<body>
    <div id="content">
        <header id="header">
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-4 col-sm-6 col-xs-12">
                            <?php $hotline = $this->getHotline(); ?>
                            <h2>
                                <img src="<?php echo app()->baseUrl;?>/assets/images/phone.png">
                                <?php echo $hotline;?> <span>(Zalo / Viber)</span>
                            </h2>
                            <a class="nav-main-button" href="javascript:void(0)">
                                <img src="<?php echo app()->baseUrl;?>/assets/nav-main-bars.png?<?php echo $time?>" alt="Danh mục">
                            </a>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 float-right">
                            <div class="form-search hidden-xs">
                                <?php
                                    $form = $this->beginWidget('TbActiveForm', array(
                                        'action'=>sslUrl('san-pham/tim-kiem'),
                                        'id' => 'search-form',
                                        'method' => 'GET',
                                        'htmlOptions'=>array('enctype' => 'multipart/form-data', 'method' => 'GET')
                                        ));
                                ?>
                                    <input type="text" class="search-query" placeholder="Tìm kiếm sản phẩm" value="" name="keyword">
                                    <button type="submit" class="search-submit">
                                        <img src="<?php echo app()->baseUrl;?>/assets/images/search.png">
                                    </button>
                                <?php
                                    $this->endWidget();
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <nav class="nav-main">
                                <ul>

                                    <li class="<?php echo $this->id == 'site' ? 'active' : ''?>">
                                        <a href="<?php echo app()->baseUrl;?>/"><img src="<?php echo app()->baseUrl;?>/assets/images/house.png"></a>

                                    </li>

                                    <li class="<?php echo $this->id == 'product' && $this->pageTitle != 'Phụ kiện sàn gỗ' ? 'active' : ''?>">
                                        <a href="<?php echo app()->baseUrl;?>/san-pham">Sản phẩm sàn gỗ</a>
                                        <?php

                                            $isMobile = $this->isMobile();
                                            if ($isMobile):
                                            ?>
                                        <ul class="nav-main-sub">
                                            <?php
                                                $category = $this->getCategory();
                                                if($category):
                                                    ?>
                                                <?php
                                                foreach ($category as $v):
                                            ?>
                                            <li>
                                            <a href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v->alias?>.html" title="<?php echo $v->name?>">
                                                    <?php echo $v->name?></a>
                                                
                                                    <?php
                                                        $category1 = $this->getCategory1($v->id);
                                                        if($category1):
                                                            ?>
                                                    <ul class="nav-main-sub2">
                                                        <?php
                                                        foreach ($category1 as $v1):
                                                    ?>
                                                    <li>
                                                        <a href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v1->alias?>.html" title="<?php echo $v1->name?>">
                                                            <?php echo $v1->name?></a>		
                                                        </a>
                                                    </li>
                                                    <?php endforeach; ?>
                                                    </ul>
                                                    <?php endif; ?>
                                                	
                                                
                                            </li>
                                            <?php endforeach;?>
                                            <?php endif;?>
                                        </ul>
                                        <?php endif;?>
                                    </li>
                                    <li class="<?php echo $this->pageTitle == 'Phụ kiện sàn gỗ' ? 'active' : ''?>">
                                        <a href="<?php echo app()->baseUrl;?>/san-pham/phu-kien-san-go">Phụ kiện sàn gỗ</a>

                                    </li>
                                    <li class="<?php echo $this->id == 'congtrinh' ? 'active' : ''?>">
                                        <a href="<?php echo app()->baseUrl;?>/cong-trinh">Công trình sàn gỗ</a>

                                    </li>

                                    <li class="<?php echo $this->id == 'tintuc' ? 'active' : ''?>">
                                        <a href="<?php echo app()->baseUrl;?>/tin-tuc">Tin tức</a>

                                    </li>

                                    <li class="<?php echo $this->id == 'contact' ? 'active' : ''?>">
                                        <a href="<?php echo app()->baseUrl;?>/lien-he">Liên hệ</a>

                                    </li>

                                    <li style="border-top: #fff 1px solid;">
                                    <?php
                                        $form = $this->beginWidget('TbActiveForm', array(
                                            'action'=>sslUrl('san-pham/tim-kiem'),
                                            'id' => 'search-form',
                                            'method' => 'GET',
                                            'htmlOptions'=>array('enctype' => 'multipart/form-data', 'method' => 'GET')
                                            ));
                                    ?>
                                        <input type="text" class="search-query" placeholder="Tìm kiếm sản phẩm" value="" name="keyword">
                                        <button type="submit" class="search-submit">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    <?php
                                        $this->endWidget();
                                    ?>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!--<div class="logo">
                <?php $logo = $this->getLogo()?>
                <?php
                    if ($logo)
                        $img = 'uploads/' . $logo->image;
                    else
                        $img = 'assets/images/logo.png';
                ?>
                <a href="<?php echo app()->baseUrl;?>/"><img src="<?php echo app()->baseUrl;?>/<?php echo $img?>"></a>
            </div>-->
        </header>
        <?php if($this->id == 'site'):?>
        <section class="slider">
            <!-- <div class="container"> -->
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="owl-slider">
                            <?php
					$slide = $this->getSlide();
					if ($slide):
					foreach($slide as $v):
				?>
                                <div class="item">
                                    <a href="#">
                                        <img src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>" alt="<?php echo $v->name?>">
                                    </a>
                                </div>
                                <?php
					endforeach;
				?>
                                <?php endif;?>
                        </div>
                    </div>
                </div>
            <!-- </div> -->
        </section>
        <?php endif;?>
        <?php echo $content;?>

        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9 col-md-9 hidden-sm hidden-xs">
                            <nav class="nav-footer">

                            </nav>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                            <nav class="nav-social">
                                <?php
                            $social = $this->getSocial();
                        ?>
                                    <ul>
                                        <li>Kết nối với chúng tôi</li>
                                        <li class="social-facebook">
                                            <a href="<?php echo $social['facebook']?>" target="_blank">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="social-google">
                                            <a href="<?php echo $social['google']?>" target="_blank">
                                                <i class="fa fa-google-plus"></i>
                                            </a>
                                        </li>
                                        <li class="social-youtube">
                                            <a href="<?php echo $social['youtube']?>" target="_blank">
                                                <i class="fa fa-youtube "></i>
                                            </a>
                                        </li>
                                    </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-sm-6 col-md-6 col-xs-12 footer-about">
                        <?php
                            //$logo_footer = $this->getBannerByCatId(7);
                        ?>
                        <?php
                            // if ($logo_footer)
                            //     $img = 'uploads/' . $logo_footer->image;
                            // else
                            //     $img = 'assets/logo-footer.png';
                        ?>
                            <!--<img src="<?php echo app()->baseUrl;?>/<?php echo $img?>">-->
                            <div>
                                <h4 class="color_yellow">CÔNG TY ĐẲNG CẤP MỘC</h4>
                                <p class="mt10">Hệ thống phân phối các loại sàn gỗ ngoài trời, Sàn gỗ giá rẻ, Sàn gỗ công nghiệp, Sàn gỗ tự nhiên, Phụ kiện sàn gỗ, Sàn gỗ chịu nước, Sàn gỗ cao cáp, Sàn nhựa...</p>
                            </div>
                            <?php $contact = $this->getContact(); ?>
                            <ul>

                                <li>
                                    <i class="fa fa-map-marker"></i>
                                    <p>
                                        <?php echo $contact['address']?>
                                    </p>
                                </li>


                                <li>
                                    <i class="fa fa-phone"></i>
                                    <p>
                                        <?php echo $contact['mobile']?>
                                    </p>
                                </li>


                                <li>
                                    <i class="fa fa-fax"></i>
                                    <p>
                                        <?php echo $contact['phone']?>
                                    </p>
                                </li>


                                <li>
                                    <i class="fa fa-envelope"></i>
                                    <a href="mailto:<?php echo $contact['email']?>">
                                        <?php echo $contact['email']?>
                                    </a>
                                </li>

                            </ul>
                        </div>


                        <div class="col-lg-2 col-md-3 col-sm-6 col-xs-12 footer-menu">
                            <div class="heading-small">
                                <h3>Chính sách</h3>
                            </div>
                            <ul>
                                <?php $chinhsach = $this->getStaticList(5);
                                    if($chinhsach):
                                        foreach ($chinhsach as $v):
                                ?>
                                <li>
                                    <a href="<?php echo app()->baseUrl;?>/<?php echo $v->alias?>.html"><?php echo $v->name?></a>
                                </li>
                                <?php
                                        endforeach;
                                    endif;
                                ?>
                            </ul>
                        </div>



                        <div class="col-lg-2 col-md-3 col-sm-6 col-xs-12 footer-menu">
                            <div class="heading-small">
                                <h3>Trợ giúp</h3>
                            </div>
                            <ul>
                                <?php $trogiup = $this->getStaticList(5,5);
                                    if($trogiup):
                                        foreach ($trogiup as $v):
                                ?>
                                <li>
                                    <a href="<?php echo app()->baseUrl;?>/<?php echo $v->alias?>.html"><?php echo $v->name?></a>
                                </li>
                                <?php
                                        endforeach;
                                    endif;
                                ?>
                            </ul>
                        </div>



                        <!-- <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 footer-subcribe">
                            <div class="heading-small">
                                <h3>Đăng ký nhận khuyến mại</h3>
                            </div>
                            <p>Nhận những tin tức khuyến mại từ chúng tôi</p>
                            <div class="form-subcribe">
                                <form accept-charset='UTF-8' action='/contact' id='contact' method='post'>
                                    <input name='FormType' type='hidden' value='contact' />
                                    <input name='utf8' type='hidden' value='true' />
                                    <input id="name" name="contact[Name]" type="text" value="Guest" class="form-control hidden">
                                    <input type="text" class="form-control hidden" name="contact[phone]" value="NaN" placeholder="Phone number">
                                    <textarea id="message" name="contact[Body]" class="form-control hidden" rows="7">Subcribe Email</textarea>
                                    <div class="input-group" id="mail-box">
                                        <input id="email" class="subcribe-email form-control" name="contact[email]" type="email" value="" class="input_newsletter"
                                            placeholder="Email nhận tin">
                                    </div>
                                    <button type="submit" class="subcribe-submit">
                                        <span>Đăng ký</span>
                                    </button>


                                </form>
                            </div>
                        </div> -->

                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <p>Copyright © 2018 by Đẳng cấp Mộc. All rights reserved.<p>
                            <p>Giấy chứng nhận đăng ký kinh doanh số 0304123456 do Sở Kế Hoạch và Đầu Tư TP.HCM cấp ngày 01/01/2018.

                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <!-- Load Facebook SDK for JavaScript -->
    <div id="fb-root"></div>
    <script>
    window.fbAsyncInit = function() {
        FB.init({
        xfbml            : true,
        version          : 'v3.2'
        });
    };

    (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

    <!-- Your customer chat code -->
    <div class="fb-customerchat"
    attribution=setup_tool
    page_id="2019072911721432"
    logged_in_greeting="Xin chào, tôi có thể giúp gì cho bạn?"
    logged_out_greeting="Xin chào, tôi có thể giúp gì cho bạn?">
    </div>
</body>

</html>