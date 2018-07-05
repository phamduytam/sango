<section class="cart">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="heading">
					<h1>Giỏ hàng</h1>
				</div>
			</div>
			
			<form method="post" action="/cart">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 content">
					<div class="table-responsive">
						<table class="table table-bordered table-cart">
							<thead>
								<tr>
									<th>HÌNH ẢNH</th>
									<th>TÊN SẢN PHẨM</th>
									<th>ĐƠN GIÁ</th>
									<th>SỐ LƯỢNG</th>
									<th>THÀNH TIỀN</th>
									<th>XÓA</th>
								</tr>
							</thead>
							<tbody>
								
								<tr>
									<td><a href="/may-xay-thuc-pham-iruka?variantid=2185011"><img src="//bizweb.dktcdn.net/thumb/small/100/054/978/products/8.jpg?v=1455936444700" alt="Máy xay thực phẩm Iruka"></a></td>
									<td>Máy xay thực phẩm Iruka</td>
									<td>419.000₫</td>
									<td><input type="number" class="citem-quantity" value="1" name="Lines" id="updates_6120144" min="1"></td>
									<td>419.000₫</td>
									<td><a class="citem-remove" href="/cart/change?line=1&amp;quantity=0" data-id="6120144"><i class="fa fa-trash"></i></a></td>
								</tr>
								
								<tr>
									<td><a href="/am-sieu-toc-fujishi?variantid=2185016"><img src="//bizweb.dktcdn.net/thumb/small/100/054/978/products/4-8212ca6f-01ff-46cc-9839-049ae749a6ec.jpg?v=1455936357300" alt="Ấm siêu tốc Fujishi"></a></td>
									<td>Ấm siêu tốc Fujishi</td>
									<td>169.000₫</td>
									<td><input type="number" class="citem-quantity" value="1" name="Lines" id="updates_6120157" min="1"></td>
									<td>169.000₫</td>
									<td><a class="citem-remove" href="/cart/change?line=2&amp;quantity=0" data-id="6120157"><i class="fa fa-trash"></i></a></td>
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-lg-9 col-md-9 col-sm-6 col-xs-12">
					<a class="cart-btn-continue" href="/">Tiếp tục mua hàng</a>
					<button class="cart-btn-update" type="submit">Cập nhật</button>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<table class="table table-bordered table-cart-total">
						<tbody><tr>
							<td class="text-right">Tổng tiền:</td>
							<td class="text-right cart-price-total">588.000₫</td>
						</tr>
						<tr>
							<td class="text-right">Thanh toán:</td>
							<td class="text-right cart-price-checkout">588.000₫</td>
						</tr>
					</tbody></table>
					<a class="pull-right cart-btn-checkout" href="/checkout">Thanh toán</a>
				</div>
			</form>
			
		</div>
	</div>
</section>