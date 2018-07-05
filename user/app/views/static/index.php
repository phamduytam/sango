<?php
	$this->breadcrumbs = array(
			$content->name => ''
			);
		$this->pageTitle = $content->name;
?>
<section class="page-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h1 class="article-title"><?php echo $content->name?></h1>
				<div class="article-content">
				<?php echo $content->content?>
				</div>
			</div>
		</div>
	</div>
</section>