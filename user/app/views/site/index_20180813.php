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
                                                <a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>">
                                                    <img class="img-responsive" src="<?php echo app()->baseUrl?>/uploads/<?php echo $value->image?>" alt="<?php echo $value->name?>">
                                                </a>
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
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">

                <div class="blog_news">
                    <div class="heading">
                        <h2>Tin tức</h2>
                        <div class="heading-button">
                            <div class="view_all">
                                <a href="<?php echo app()->baseUrl?>/tin-tuc">Xem tất cả
                                    <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="block-content">
                        <div class="row">
                            <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 item blog-post">
                                <div class="blog-image">

                                    <a href="<?php echo url('/tin-tuc/chi-tiet/' . $tintuc[0]->id . '/' . $tintuc[0]->alias.'.html')?>">
                                        <img src="<?php echo app()->baseUrl;?>/uploads/<?php echo $tintuc[0]->image?>" alt="<?php echo $tintuc[0]->name?>" />
                                    </a>
                                </div>
                                <div>
                                        <h3>
                                            <a class="article_title" href="<?php echo url('/tin-tuc/chi-tiet/' . $tintuc[0]->id . '/' . $tintuc[0]->alias.'.html')?>">Có nên dùng lò vi sóng để nướng bánh?</a>
                                        </h3>
                                        <p class="post_content">
                                            <?php echo $tintuc[0]->description ?>
                                            <a href=<?php echo url( '/tin-tuc/chi-tiet/' . $tintuc[0]->id . '/' . $tintuc[0]->alias.'.html')?>> [Xem thêm...] </a>
                                        </p>
                                    </div>
                            </div>
                            <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                            <?php
                                if ($tintuc):
                                    foreach($tintuc as $v):
                            ?>
                                <div class="item blog-post">
                                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">

                                        <a href="<?php echo url('/tin-tuc/chi-tiet/' . $v->id . '/' . $v->alias.'.html')?>">
                                            <img src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>" alt="<?php echo $v->name?>" />
                                        </a>

                                    </div>
                                    <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                                        <h3>
                                            <a class="article_title" href="<?php echo url('/tin-tuc/chi-tiet/' . $v->id . '/' . $v->alias.'.html')?>">Có nên dùng lò vi sóng để nướng bánh?</a>
                                        </h3>
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
                    </div>
                </div>

            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="row">
                    <div>
                        <div class="heading">
                            <h2>
                                VIDEO
                            </h2>
                            <div class="heading-button">
                                <div class="view_all">
                                    <a href="<?php echo app()->baseUrl?>/tin-tuc">Xem tất cả
                                        <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="block-content">
                            <?php
                                if ($tintuc):
                                    foreach($tintuc as $v):
                            ?>
                            <div class="item blog-post">
                                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">

                                    <a href="<?php echo url('/tin-tuc/chi-tiet/' . $v->id . '/' . $v->alias.'.html')?>">
                                        <img src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>" alt="<?php echo $v->name?>" />
                                    </a>

                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                                    <h3>
                                        <a class="article_title" href="<?php echo url('/tin-tuc/chi-tiet/' . $v->id . '/' . $v->alias.'.html')?>">Có nên dùng lò vi sóng để nướng bánh?</a>
                                    </h3>
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
                </div>
            </div>
        </div>
    </div>
</section>