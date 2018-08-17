<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

</br>
</br>
</br>


<style type="text/css">
#Brdc {
	color: #E88A1A;
}
</style>

<div class="container">

	<div class="row">


		<!-- Kenar çubuğunu görüntülemek. -->
		<div class="col-md-12">
			</br>
			<%@include file="./shared/sidebar.jsp"%>
		</div>

	</div>

	<!-- Gerçek ürünleri görüntülemek için -->
	<div class="col-md-9">

		<!-- Added breadcrumb component -->
		<div class="row">

			<div class="col-lg-12">

				<c:if test="${userClickAllProducts == true}">

					<script>
						window.categoryId = '';
					</script>

					<ol class="breadcrumb">

						<li><a href="${contextRoot}/anasayfa" id="Brdc">Anasayfa</a></li>
						<li class="breadcrumb-item active">Satıştaki Ürünler</li>

					</ol>

				</c:if>

				<c:if test="${userClickCategoryProducts == true}">
 
					<script>
						window.categoryId = '${category.id}';
					</script>

					<ol class="breadcrumb">

						<li><a href="${contextRoot}/anasayfa" id="Brdc">Anasayfa</a></li>
						<li class="breadcrumb-item active" id="Brdc">Kategori</li>
						<li class="breadcrumb-item active">${category.name}</li>

					</ol>

				</c:if>

			</div>
		</div>

		<!--     -----------       -->
		<!-- DataTabe Kısmı -->
		<div class="row">

			<div class="col-xs-12">

				<table id="productListTable" class="table table-striped table-inverse">
					<thead class="table-dark">
						<tr>
						<th></th>
							<th>ADI</th>
							<th>MARKA</th>
							<th>FİYAT</th>
							<th>MİKTAR</th>
							<th></th>
						</tr>
					</thead>
					
					<tfoot class="table-dark">
						<tr>
							<th></th>
							<th>ADI</th>
							<th>MARKA</th>
							<th>FİYAT</th>
							<th>MİKTAR</th>
							<th></th>
						</tr>
					</tfoot>
					
				</table>

			</div>

		</div>

	</div>

</div>