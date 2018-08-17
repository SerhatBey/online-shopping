<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>


</br>
</br>
</br>


<div class="container">

	<!-- Breadcrumb -->
	<div class="row">

		<div class="col-xs-12">

			<ol class="breadcrumb">

				<li><a href="${contextRoot}/anasayfa">Anasayfa</a></li>
				<li><a href="${contextRoot}/show/all/products">Products</a></li>
				<li class="active">${product.name}</li>
			</ol>

		</div>

		<div class="row">

			<!-- The Product Image -->
			<div class="col-xs-12 col-sm-4">

				<div class="thumbnail">

					<img
						src="${contextRoot}/resources/images/imgProducts/${product.code}.png"
						class="aw-zoom img img-responsive" />

				</div>

			</div>

			<!-- The Product Description -->
			<div class="col-xs-12 col-sm-8">

				<h3>${product.name}</h3>
				<hr />

				<p>${product.description}</p>
				<hr />

				<h4>
					Fiyat: <strong>${product.unitPrice} &#8378;</strong>
				</h4>
				<hr />

				<!-- Ürün Miktar ve Button Kontrol JAVASCRİPT Kodu -->

				<script type="text/javascript">
					function btnQuantityControl() {
						var pq = '${product.quantity}';

						if (pq < 1) {

							document.write('<h6>Mevcut Miktar: <span style="color: red">Stoklarda Kalmadı!</span></h6>');
							
							document.write('<a href="javascript:void(0)" class="btn btn-success disabled"><strike><span class="glyphicon glyphicon-shopping-cart"></span> Sepete Ekle</strike></a>');
							
						} else {
							document.write('<h6>Mevcut Miktar: ${product.quantity}</h6>');
							
							document.write('<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span> Sepete Ekle</a>');
						}

					}
					btnQuantityControl();
				</script>


				 <a href="${contextRoot}/show/all/products" class="btn btn-primary">Geri</a>


			</div>

		</div>


	</div>


</div>