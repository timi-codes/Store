<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> <?php if(count($products) < 1) echo 'print-bg-image no-manufacture-products'; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($products) { ?>

	  <!-- Category filter START -->
	  <p class="category-compare"><a href="<?php echo $compare; ?>" id="compare-total"> <?php echo $text_compare; ?></a></p>
	  <div class="category-filter">
			<!-- Grid-List Buttons -->
			<div class="col-md-2 filter-grid-list">
			  <div class="btn-group hidden-xs">
				<button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
				<button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
			  </div>
			</div>
			<!-- Show Products Selection -->
			<div class="filter-show">
				<div class="col-md-4 text-right filter-text">
				  <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
				</div>
				<div class="col-md-8 text-right filter-selection">
				  <select id="input-limit" class="form-control" onchange="location = this.value;">
					<?php foreach ($limits as $limits) { ?>
					<?php if ($limits['value'] == $limit) { ?>
					<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
			</div>
			<!-- Sort By Selection -->
			<div class="filter-sort-by">
				<div class="col-md-4 text-right filter-text">
				  <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
				</div>
				<div class="col-md-8 text-right filter-selection">
				  <select id="input-sort" class="form-control" onchange="location = this.value;">
					<?php foreach ($sorts as $sorts) { ?>
					<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
					<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
					<?php } ?>
					<?php } ?>
				  </select>
				</div>
			</div>
	  </div>
	  <!-- Category filter END -->

	  <!-- Manufacturer products START -->
	  <div class="category-products">
		<div class="row">      
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
            <div class="image">
			<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
			<?php if ($product['special']) { ?>
			  <div class="sale-icon">Sale</div>
			<?php } ?>
			</div>
			<div class="thumb-description">
      <div class="caption">
	   <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
	   	   <?php if ($product['rating']) { ?>
	  <div class="rating">
	    <?php } else { ?>
	    <div class="rating no-rating">
		 <?php } ?>
		  <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <p class="description"><?php echo $product['description']; ?></p>
       </div>
	  <div class="button-wrapper">
	  <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
		  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
		  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
      <div class="button-group">
        <button class="btn-cart" type="button" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button class="btn-wishlist" type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button class="btn-compare" type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
	  </div>
	  </div>
          </div>
        </div>
        <?php } ?>
      </div>
	  </div>
	  <!-- Manufacturer products END -->

	  <!-- Manufacturer pagination START -->
	  <div class="category-pagination">
        <div class="col-xs-6 text-left"><?php echo $results; ?></div>
        <div class="col-xs-6 text-right"><?php echo $pagination; ?></div>
	  </div>
	  <!-- Manufacturer pagination END -->

      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>