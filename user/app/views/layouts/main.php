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
    <meta property="og:image" content="<?php echo app()->baseUrl;?>/uploads/1504931514logo_mocstyle.png">
    <meta property="og:image:secure_url" content="<?php echo app()->baseUrl;?>/uploads/1504931514logo_mocstyle.png">

    <meta property="og:description" content="<?php echo $this->getDescription();?>">
    <meta property="og:url" content="">
    <meta property="og:site_name" content="Moc Style">

    <link rel="icon" href="<?php echo app()->baseUrl;?>/assets/favicon.png?1493875157619" type="image/x-icon" />
    <!-- Bootstrap -->
    <link href='<?php echo app()->baseUrl;?>/assets/bootstrap.min.css?1493875157619' rel='stylesheet' type='text/css' />
    <!-- Roboto Fonts Google -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,500italic,700,700italic&subset=latin,vietnamese'
        rel='stylesheet' type='text/css'>
    <!-- Fonts Awesome -->
    <link href='<?php echo app()->baseUrl;?>/assets/font-awesome.min.css?1493875157619' rel='stylesheet' type='text/css' />
    <!-- Owl Carousel -->
    <link href='<?php echo app()->baseUrl;?>/assets/owl.carousel.css?1493875157619' rel='stylesheet' type='text/css' />
    <!-- Animate -->
    <link href='<?php echo app()->baseUrl;?>/assets/animate.min.css?1493875157619' rel='stylesheet' type='text/css' />
    <!-- Style -->
    <link href='<?php echo app()->baseUrl;?>/assets/style.css?1493875157619' rel='stylesheet' type='text/css' />
    <link href='<?php echo app()->baseUrl;?>/assets/themes_support/nprogress.css?20171025' rel='stylesheet' type='text/css' />
    <link href='<?php echo app()->baseUrl;?>/assets/themes_support/checkout.css?20180321' rel='stylesheet' type='text/css' />
    <script src='<?php echo app()->baseUrl;?>/assets/jquery-1.11.3.min.js?1493875157619' type='text/javascript'></script>
    <!-- Bootstrap -->
    <script src='<?php echo app()->baseUrl;?>/assets/bootstrap.min.js?1493875157619' type='text/javascript'></script>
    <!-- Bootstrap -->
    <script src='<?php echo app()->baseUrl;?>/assets/owl.carousel.min.js?1493875157619' type='text/javascript'></script>
    <!-- Notify -->
    <script src='<?php echo app()->baseUrl;?>/assets/bootstrap-notify.min.js?1493875157619' type='text/javascript'></script>


    <!-- Bizweb API -->
    <script src='<?php echo app()->baseUrl;?>/assets/themes_support/api.jquery.js?4' type='text/javascript'></script>

    <script src='<?php echo app()->baseUrl;?>/assets/themes_support/common.js?4' type='text/javascript'></script>
    <script src='<?php echo app()->baseUrl;?>/assets/themes_support/customer.js?4' type='text/javascript'></script>
    <!-- Bootstrap -->
    <script src='<?php echo app()->baseUrl;?>/assets/main.js?1493875157619' type='text/javascript'></script>
    <link href='<?php echo app()->baseUrl;?>/assets/bw-statistics-style.css?1493875157619' rel='stylesheet' type='text/css' />
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
                                <img src="<?php echo app()->baseUrl;?>/assets/nav-main-bars.png?1493875157619" alt="Danh mục">
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
                                        <a href="/"><img src="<?php echo app()->baseUrl;?>/assets/images/house.png"></a>

                                    </li>

                                    <li class="<?php echo $this->id == 'gioithieu' ? 'active' : ''?>">
                                        <a href="<?php echo app()->baseUrl;?>/gioi-thieu">Sản phẩm sàn gỗ</a>

                                    </li>
                                    <li class="<?php echo $this->id == 'gioithieu' ? 'active' : ''?>">
                                        <a href="<?php echo app()->baseUrl;?>/gioi-thieu">Phụ kiện sàn gỗ</a>

                                    </li>
                                    <li class="<?php echo $this->id == 'congtrinh' ? 'active' : ''?>">
                                        <a href="<?php echo app()->baseUrl;?>/gioi-thieu">Công trình sàn gỗ</a>

                                    </li>

                                    <li class="<?php echo $this->id == 'congtrinh' ? 'active' : ''?>">
                                        <a href="/cong-trinh">Tin tức</a>

                                    </li>

                                    <li class="<?php echo $this->id == 'contact' ? 'active' : ''?>">
                                        <a href="/lien-he">Liên hệ</a>

                                    </li>

                                    <li style="border-top: #fff 1px solid;">
                                        <form method="get" action="/search">
                                            <input type="text" class="search-query" placeholder="Tìm kiếm sản phẩm" value="" name="query">
                                            <button type="submit" class="search-submit">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </form>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="logo"> <img src="<?php echo app()->baseUrl;?>/assets/images/logo.png"></div>
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

                            <img src="<?php echo app()->baseUrl;?>/uploads/1504931514logo_mocstyle.png" alt="Moc Style">

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



                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 footer-subcribe">
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
                        </div>

                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                            <p>
                                © Bản quyền thuộc về Mộc Style
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</body>

</html>