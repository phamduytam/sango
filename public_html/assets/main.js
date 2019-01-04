"use trick";
$(document).ready(function(){
	$('.nav-main-button').on("click", function(){
		$('.nav-main').toggle();
	});
	$('#click_show').on("click", function(){
		$('#account_show').toggle();
	});
	$(document).mouseup(function (e)
						{
		var container = $("#account_show");

		if (!container.is(e.target) // if the target of the click isn't the container...
			&& container.has(e.target).length === 0) // ... nor a descendant of the container
		{
			container.hide();
		}
	});
	// $("#click_show_cate").click(function(){
	// 	$("#show_cate").toggle("300");
	// });


	/* For menu index and menu collection desktop */

	// $('ul#show_cate').each(function(){

	// 	var LiN = $(this).find('li').length;

	// 	if( LiN > 4){
	// 		$('li', this).eq(6).nextAll().hide().addClass('toggleable');
	// 		$(this).append('<li class="more icon"><a>XEM THÊM</a></li>');
	// 	}

	// });


	// $('ul#show_cate').on('click','.more', function(){

	// 	if( $(this).hasClass('less') ){
	// 		$(this).html('<li><a>XEM THÊM</a></li>').removeClass('less');
	// 	}else{
	// 		$(this).html('<a>THU GỌN</>').addClass('less');
	// 	}

	// 	$(this).siblings('li.toggleable').slideToggle();

	// });





	$(".owl-slider").owlCarousel({
		slideSpeed: 300,
		paginationSpeed: 400,
		singleItem: true,
		autoPlay: 5000,
		stopOnHover: true
	});
	$(".owl-best-sell").owlCarousel({
		slideSpeed: 300,
		paginationSpeed: 400,
		singleItem: true
	});
	$(".owl-sale").owlCarousel({
		slideSpeed: 300,
		paginationSpeed: 400,
		singleItem: true
	});
	$(".owl-related").owlCarousel({
		slideSpeed: 300,
		paginationSpeed: 400,
		singleItem: true
	});
	$(".owl-related0").owlCarousel({
		slideSpeed: 300,
		paginationSpeed: 400,
		singleItem: true
	});
	$(".owl-related1").owlCarousel({
		slideSpeed: 300,
		paginationSpeed: 400,
		singleItem: true
	});
	$(".owl-related2").owlCarousel({
		slideSpeed: 300,
		paginationSpeed: 400,
		singleItem: true
	});
	$(".owl-related3").owlCarousel({
		slideSpeed: 300,
		paginationSpeed: 400,
		singleItem: true
	});
	$(".owl-promotion").owlCarousel({
		slideSpeed: 300,
		paginationSpeed: 400,
		singleItem: true
	});
	$(".owl-news").owlCarousel({
		autoPlay: 3000,
		items : 3,
		itemsDesktop : [1199,3],
		itemsDesktopSmall : [979,3],
		itemsTablet : [768,1]
	});
	$("#owl-news-blog").owlCarousel({
		autoPlay: 5000,
		items : 1,
		itemsDesktop : [1199,1],
		itemsDesktopSmall : [979,2],
		itemsTablet : [768,2]
	});
	$(".view-list").on("click", function(){
		viewList();
	});
	$(".view-grid").on("click", function(){
		viewGrid();
	});
	$("#owl-product").owlCarousel({
		autoPlay: false,
		navigation: true,
		navigationText: ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right '></i>"],
		items : 5,
		itemsDesktop : [1199,5],
		itemsDesktopSmall : [979,5],
		itemsTablet: [768,5],
		itemsMobile: [480,4]
	});
	$('.zoom1').click(function() {
		var _imgSrc = $(this).parent().attr('data-zoom-image');
		$('#zoom').attr('src', _imgSrc);
	});
});
function quantityChange(change) {
	var quantity = parseInt($('.product-quantity').val());
	if(change == 'down') {
		quantity = quantity - 1;
	} else {
		quantity = quantity + 1;
	}
	if(quantity < 1) quantity = 1;
	$('.product-quantity').val(quantity);
}

$(".category-grid").show();
$(".category-list").hide();
function viewList() {
	localStorage.setItem('category', 'list');
	$(".view-grid").removeClass("active");
	$(".view-list").addClass("active");
	$(".category-list").show();
	$(".category-grid").hide();
}
function viewGrid() {
	localStorage.setItem('category', 'grid');
	$(".view-list").removeClass("active");
	$(".view-grid").addClass("active");
	$(".category-grid").show();
	$(".category-list").hide();
}


$(document).ready(function(){
	$('.cat_id, .thuonghieu').change(function(){
		var id = $('.cat_id').val();
		var thuonghieu_id = $('.thuonghieu').val();
		var url = 'http://' + window.location.hostname;
		var params = [];
		if (id != '') {
			params.push('cat_id='+id);
		}
		if (thuonghieu_id != '') {
			params.push('thuonghieu_id='+thuonghieu_id);
		}
		$.ajax({
			url: url + '/product/ajaxPro?' + params.join('&'),
			success: function(html) {
				$('.sango').html(html);
			}
		});
	});

	$('.sango').change(function() {
		var price = $(this).val();
		console.log('test', price.toLocaleString('en'));
		$('.dongia').html(Number(price).toLocaleString('en'));
	});

	var timeout = null;
	$('.chieudai, .chieurong, .dientich').keyup(function() {
		clearTimeout(timeout);

		// Make a new timeout set to go off in 800ms
		timeout = setTimeout(function () {
			thanhTien();
		}, 1000);
	});

	var thanhTien = function() {
		var chieudai = Number($('.chieudai').val()) || 0;
		var chieurong = Number($('.chieurong').val()) || 0;
		var dientich = Number($('.dientich').val()) || 0;
		var dongia = Number($('.sango').val()) || 0;
		var type = Number($('.type:checked').val());
		console.log('test111', chieudai, chieurong, dongia, type);
		if (type == 1) {
			if (dientich > 0 && dongia > 0) {
				var baogia = Number(dientich * dongia).toLocaleString('en');
				$('.thanhtien').html(baogia);
				$('.sendbaogia').attr('disabled', false);
			}
		} else {
			if (chieudai > 0 && chieurong > 0 && dongia > 0) {
				var baogia = Number(chieudai * chieurong * dongia).toLocaleString('en');
				$('.thanhtien').html(baogia);
				$('.sendbaogia').attr('disabled', false);
			}
		}
	}

	$('.sendbaogia').click(function() {

		var hoten = $('.hoten').val();
		var diachi = $('.diachi').val();
		var email = $('.email').val();
		var sdt = $('.sdt').val();
		var selectedPro = $('.sango option:selected');
		var id = $(selectedPro).attr('data-id');
		var alias = $(selectedPro).attr('data-alias');
		var namePro = $(selectedPro).attr('data-name');


		if (!hoten || !diachi || !email || !sdt) {
			alert('Vui lòng nhập đầy đủ thông tin.');
			return;
		}

		if (!validateEmail(email)) {
			alert('Vui lòng nhập email hợp lê.');
			return;
		}

		var params = {};
		if (hoten != '') {
			params['name'] = hoten;
		}
		if (diachi != '') {
			params['address'] = diachi;
		}
		if (email != '') {
			params['email'] = email;
		}
		if (sdt != '') {
			params['phone'] = sdt;
		}
		if (id != '') {
			params['id'] = id;
		}
		if (alias != '') {
			params['alias'] = alias;
		}
		if (namePro != '') {
			params['namePro'] = namePro;
		}
		var token = $('input[name="YII_CSRF_TOKEN"]').val();
		if (token) {
			params['YII_CSRF_TOKEN'] = token;
		}

		$(this).attr('disabled', true);
		var url = 'http://' + window.location.hostname;
		$.ajax({
			type: 'POST',
			data: params,
			url: url + '/contact/baogia',
			success: function(html) {
				console.log('html', html);
				$('.sendbaogia').attr('disabled', false);
				if (html == 'OK') {
					alert('Gửi thông tin thành công');
				}
			}
		});
	});

	function validateEmail(email) {
		var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		return re.test(String(email).toLowerCase());
	}


});