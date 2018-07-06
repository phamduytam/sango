<section class="best-sell">
    <div class="container">
        <?php if ($category):?>
            <?php $j = 0;?>
            <?php foreach($category as $v):?>
                <?php $productCat = $this->getProductByCatId($v->id, 8);?>
                <?php if($productCat):?>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="heading">
                            <h2><?php echo $v->name ?></h2>
                            <?php $category1 = $this->getCategory1($v->id);
                                    if($category1):
                            ?>
                            <ul>
                                <?php
                                    foreach ($category1 as $v1):
                                ?>
                                <li><a href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v1->alias?>.html" title="<?php echo $v1->name?>"><?php echo $v1->name ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                            <?php endif;?>
                            <div class="heading-button">
                                <span class="button-prev" onclick="$('.owl-related<?php echo $j?>').data('owlCarousel').prev();">
                                    <!-- <i class="fa fa-angle-left"></i> -->
                                </span>
                                <span class="button-next" onclick="$('.owl-related<?php echo $j?>').data('owlCarousel').next();">
                                    <!-- <i class="fa fa-angle-right"></i> -->
                                </span>
                            </div>
                        </div>
                        <div class="owl-related<?php echo $j?>" class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="row">
                                    <?php $i = 0;?>
                                    <?php foreach ($productCat as $value):?>
                                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                        <div class="product-item">
                                            <div class="product-item-thumbnail">
                                                <div class="product-item-background">
                                                    <div class="product-item-button">
                                                        <a class="product-item-add" href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>">
                                                            <i class="fa fa-shopping-cart "></i>
                                                        </a>
                                                        <a class="product-item-view" href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>">
                                                            <i class="fa fa-search"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <img class="img-responsive" src="<?php echo app()->baseUrl?>/uploads/<?php echo $value->image?>" alt="<?php echo $value->name?>">
                                            </div>
                                            <h3 class="product-item-name">
                                                <a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>">
                                                    <?php echo $value->name?>
                                                </a>
                                            </h3>
                                            <p class="product-item-price">
                                                <?php echo $value->price ?></p>
                                        </div>
                                    </div>
                                    <?php $i++;?>
                                    <?php if ($i % 4 == 0 && $i < count($productCat)): ?>
                                        </div>
                                        </div>
                                        <div class="item">
                                            <div class="row">
                                    <?php endif;?>
                                    <?php endforeach;?>
                                </div>
                            </div>            
                        </div>
                    </div>
                </div>
                <?php endif;?>
                <?php if($v->img_bottom != ''): ?>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <img src="<?php echo app()->baseUrl?>/uploads/<?php echo $v->img_bottom?>" alt="#"/>
                    </div>
                </div>
                <?php endif; ?>
                <?php $j++; ?>
            <?php endforeach;?>
        <?php endif; ?>
    </div>
</section>

<section class="banner-middle">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <a href="#">
                    <?php
                    $banner3 = $this->getBannerByCatId(5);
                    if ($banner3):
                ?>
                        <img class="img-responsive" src="<?php echo app()->baseUrl;?>/uploads/<?php echo $banner3->image?>" alt="<?php echo $banner3->name?>">
                        <?php else: ?>
                        <img class="img-responsive" src="assets/banner3.jpg?1493875157619" alt="Banner 3">
                        <?php endif; ?>
                </a>

            </div>
        </div>
    </div>
</section>

<section>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">

                <div class="blog_news">
                    <div class="heading">
                        <h2>Tin tức</h2>
                        <div class="heading-button">
                            <span class="button-prev" onclick="$('#owl-news-blog').data('owlCarousel').prev();">
                                <i class="fa fa-angle-left"></i>
                            </span>
                            <span class="button-next" onclick="$('#owl-news-blog').data('owlCarousel').next();">
                                <i class="fa fa-angle-right"></i>
                            </span>
                        </div>
                    </div>
                    <div class="block-content">
                        <div id="owl-news-blog" class="owl-carousel owl-theme">
                            <?php
                                if ($tintuc):
                                    foreach($tintuc as $v):
                            ?>
                                <div class="item blog-post">
                                    <div class="blog-image">

                                        <a href="<?php echo url('/tin-tuc/chi-tiet/' . $v->id . '/' . $v->alias.'.html')?>">
                                            <img src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>" alt="<?php echo $v->name?>" />
                                        </a>

                                    </div>
                                    <div>
                                        <h3>
                                            <a class="article_title" href="<?php echo url('/tin-tuc/chi-tiet/' . $v->id . '/' . $v->alias.'.html')?>">Có nên dùng lò vi sóng để nướng bánh?</a>
                                        </h3>
                                        <p class="article_details">
                                            <!-- <span><i class="fa fa-user" aria-hidden="true"></i> Bizweb Theme</span> -->
                                            <span>
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                                <?php echo $v->created?>
                                            </span>
                                        </p>
                                        <p class="post_content">
                                            <?php echo $v->description ?>
                                            <a href=<?php echo url( '/tin-tuc/chi-tiet/' . $v->id . '/' . $v->alias.'.html')?>> [Xem thêm...] </a>
                                        </p>
                                    </div>
                                </div>

                                <?php
                                    endforeach;
                                endif;
                            ?>
                        </div>
                    </div>
                    <div class="view_all">
                        <a href="<?php echo app()->baseUrl?>/tin-tuc">Xem tất cả
                            <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>



                <div class="statistics block hidden-sm">
                    <div id="bw-statistics"></div>
                </div>


            </div>
            <?php if (count($category) > 0): ?>
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                <div class="row">
                    <div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 sale">
                            <div class="heading">
                                <h2>
                                    <?php echo $category[0]->name?>
                                </h2>
                                <div class="heading-button">
                                    <span class="button-prev" onclick="$('.owl-sale').data('owlCarousel').prev();">
                                        <i class="fa fa-angle-left"></i>
                                    </span>
                                    <span class="button-next" onclick="$('.owl-sale').data('owlCarousel').next();">
                                        <i class="fa fa-angle-right"></i>
                                    </span>
                                </div>
                            </div>
                            <?php
                                $productCat = $this->getProductByCatId($category[0]->id, 12);
                                $i = 1;
                            ?>
                                <?php if($productCat):?>
                                <div class="block-content">
                                    <div class="owl-sale" class="owl-carousel owl-theme">
                                        <div class="item">
                                            <?php foreach ($productCat as $value):?>
                                            <div class="row product-item2">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 item2_footer">
                                                    <div class="product-item-thumbnail">
                                                        <a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name ?>">
                                                            <img class="img-responsive" src="<?php echo app()->baseUrl?>/uploads/thumbs/<?php echo $value->image?>" alt="<?php echo $value->name ?>">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                    <h3 class="product-item-name">
                                                        <a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>">
                                                            <?php echo $value->name ?>
                                                        </a>
                                                    </h3>
                                                    <p class="product-item-price">Liên hệ</p>
                                                    <div class="product-item-button">
                                                        <a class="product-item-view" href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>">
                                                            <i class="fa fa-search"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                            <?php if ($i % 3 == 0): ?>
                                            <div style="clear:both;"></div>
                                        </div>
                                        <div class="item">
                                            <?php endif; ?>
                                            <?php $i++; ?>
                                            <?php endforeach; ?>
                                        </div>
                                    </div>
                                    <div style="clear:both;"></div>
                                </div>
                                <div class="view_all">
                                    <a href="<?php echo url('/san-pham/' . $category[0]->alias)?>">Xem tất cả
                                        <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <?php endif; ?>
                        </div>

                    </div>
                    <div>

                        <?php if (count($category) > 1): ?>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 promotion">
                            <div class="heading">
                                <h2>
                                    <?php echo $category[1]->name ?>
                                </h2>
                                <div class="heading-button">
                                    <span class="button-prev" onclick="$('.owl-promotion').data('owlCarousel').prev();">
                                        <i class="fa fa-angle-left"></i>
                                    </span>
                                    <span class="button-next" onclick="$('.owl-promotion').data('owlCarousel').next();">
                                        <i class="fa fa-angle-right"></i>
                                    </span>
                                </div>
                            </div>
                            <?php
                                $productCat1 = $this->getProductByCatId($category[1]->id, 12);
                                $i = 1;
                            ?>
                                <?php if($productCat1):?>
                                <div class="block-content">
                                    <div class="owl-promotion" class="owl-carousel owl-theme">
                                        <div class="item">
                                            <?php foreach ($productCat1 as $value):?>
                                            <div class="row product-item2">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 item2_footer">
                                                    <div class="product-item-thumbnail">
                                                        <a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>" title="<?php echo $value->name ?>">
                                                            <img class="img-responsive" src="<?php echo app()->baseUrl?>/uploads/thumbs/<?php echo $value->image?>" alt="<?php echo $value->name ?>">
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                    <h3 class="product-item-name">
                                                        <a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>">
                                                            <?php echo $value->name ?>
                                                        </a>
                                                    </h3>
                                                    <p class="product-item-price">Liên hệ</p>
                                                    <div class="product-item-button">
                                                        <a class="product-item-view" href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>">
                                                            <i class="fa fa-search"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                            <?php if ($i % 3 == 0): ?>
                                            <div style="clear:both;"></div>
                                        </div>
                                        <div class="item">
                                            <?php endif; ?>
                                            <?php $i++; ?>
                                            <?php endforeach; ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="view_all">
                                    <a href="<?php echo url('/san-pham/' . $category[1]->alias)?>">Xem tất cả
                                        <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <?php endif;?>
                        </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            <?php endif; ?>
        </div>
    </div>
</section>