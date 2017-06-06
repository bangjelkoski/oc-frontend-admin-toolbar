<div id="oc_fetlb" class="fe_tlb_<?php echo $style; ?> <?php if(!$mobile) echo 'fl_tlb_mobile'; ?>" style="<?php if((!$admin_logged) || (!$status)) echo 'display:none;'; ?>">
	<ul class="oc_fetlb">
		<li><a href="<?php $new_url = $url . 'common/dashboard&token=' . $token; echo $new_url; ?>"><i class="fa fa-tachometer"></i><?php echo $dashboard; ?></a></li>
				<li style="<?php if(!in_array($product['value'], $links)) echo 'display:none;'; ?>"><a href="<?php $new_url = $url . 'catalog/product&token=' . $token; echo $new_url; ?>"><i class="fa fa-cart-plus"></i><?php echo $product['text']; ?></a></li>
		<li style="<?php if(!in_array($category['value'], $links)) echo 'display:none;'; ?>"><a href="<?php $new_url = $url . 'catalog/category&token=' . $token; echo $new_url; ?>"><i class="fa fa-folder-open-o"></i><?php echo $category['text']; ?></a></li>
		<li style="<?php if(!in_array($information['value'], $links)) echo 'display:none;'; ?>"><a href="<?php $new_url = $url . 'catalog/information&token=' . $token; echo $new_url; ?>"><i class="fa fa-info"></i><?php echo $information['text']; ?></a></li>
		<li style="<?php if(!in_array($customer['value'], $links)) echo 'display:none;'; ?>"><a href="<?php $new_url = $url . 'customer/customer&token=' . $token; echo $new_url; ?>"><i class="fa fa-male"></i><?php echo $customer['text']; ?></a></li>
		<li style="<?php if(!in_array($order['value'], $links)) echo 'display:none;'; ?>"><a href="<?php $new_url = $url . 'report/sale_order&token=' . $token; echo $new_url; ?>"><i class="fa fa-bar-chart-o"></i><?php echo $order['text']; ?></a></li>
		<li style="<?php if(!in_array($extension['value'], $links)) echo 'display:none;'; ?>"><a href="<?php $new_url = $url . 'extension/module&token=' . $token; echo $new_url; ?>"><i class="fa fa-puzzle-piece"></i><?php echo $extension['text']; ?></a></li>
		<li style="<?php if(!in_array($language['value'], $links)) echo 'display:none;'; ?>"><a href="<?php $new_url = $url . 'localisation/language&token=' . $token; echo $new_url; ?>"><i class="fa fa-globe"></i><?php echo $language['text']; ?></a></li>
		<li style="<?php if(!in_array($setting['value'], $links)) echo 'display:none;'; ?>"><a href="<?php $new_url = $url . 'setting/store&token=' . $token; echo $new_url; ?>"><i class="fa fa-cog "></i><?php echo $setting['text']; ?></a></li>

		<?php if($fun_msg){?><li class="oc_fetlb_user" style="float:right;"><i class="fa fa-heart"></i><?php echo $love_oc; ?></li><?php } ?>
		<li class="oc_fetlb_logout" style="float:right;"><a href="<?php $new_url = $url . 'common/logout&token=' . $token; echo $new_url; ?>" title="<?php echo $logout; ?>"><i class="fa fa-sign-out"></i></li>
		<li style="float:right; <?php if(!$is_product_page) echo 'display:none;'; ?>"><a href="<?php $new_url = $url . 'catalog/product/edit&token=' . $token.'&product_id='.$prod_id; echo $new_url; ?>" title="?php echo $edit; ?>"><i class="fa fa-pencil"></i></a></li>
		<li style="float: right; <?php if(!$is_cat_page)  echo 'display:none;'; ?>" ><a href="<?php $new_url = $url . 'catalog/product/edit&token=' . $token.'&category_id='.$cat_id; echo $new_url; ?>"  title="?php echo $edit; ?>"><i class="fa fa-pencil"></i></a></li>
		<li style="float: right; <?php if(!$is_info_page) echo 'display:none;'; ?>"><a href="<?php $new_url = $url . 'catalog/product/edit&token=' . $token.'&information_id='.$info_id; echo $new_url; ?>"  title="?php echo $edit; ?>"><i class="fa fa-pencil"></i></a></li>
	</ul>
</div>
<script>
var c = 1;
setInterval(function (){
if(c === 2) {$(".oc_fetlb_user").delay(5000).fadeOut(500)
    .queue(function(n) {
        $(this).html("<i class=\"fa fa-smile-o\"></i><?php echo $having_fun; ?>");
        n();
 }).fadeIn(500);
 c++;
}
if(c === 4) {$(".oc_fetlb_user").delay(5000).fadeOut(500)
    .queue(function(n) {
        $(this).html("<i class=\"fa fa-heart\"></i><?php echo $love_oc; ?>");
        n();
 }).fadeIn(500);
 c = 1;
}
if(c === 3)  {$(".oc_fetlb_user").delay(5000).fadeOut(500)
    .queue(function(n) {
        $(this).html("<i class=\"fa fa-check\"></i><?php echo $enjoy; ?>");
        n();
 }).fadeIn(500);
 c++;
}
if(c === 1){$(".oc_fetlb_user").delay(5000).fadeOut(500)
    .queue(function(n) {
        $(this).html("<i class=\"fa fa-user\"></i><?php echo $hello_admin; ?>");
        n();
 }).fadeIn(500);
 c++;
}
});
</script>