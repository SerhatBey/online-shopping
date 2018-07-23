<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
#üstMenü {
	color: black;
	font-weight: bold;
}

#üstMenü:hover {
	color: white;
}
</style>


<nav class="navbar navbar-expand-lg navbar-dark fixed-top"
	style="position: fixed; background-color: #ffffff;">

	<div class="container"
		style="background-color: #E88A1A; border-style: solid; border-width: 2px; border-color: #000000; border-bottom-left-radius: 50px; border-bottom-right-radius: 50px;">

		<a href="${contextRoot}/anasayfa" class="navbar-left"><img
			width="120px" height="100px" src="${img}/lg1.gif"></a>
		<!--   <a class="navbar-brand" href="${contextRoot}/anasayfa">Online Market</a> -->
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto ">

				<li class="nav-item"><a class="nav-link" id="üstMenü"
					href="${contextRoot}/tüm_ürünler">Tüm Ürünler</a></li>
				<li class="nav-item"><a class="nav-link" id="üstMenü" href="#">Günün
						Fırsatları</a></li>
				<li class="nav-item"><a class="nav-link" id="üstMenü" href="#">Kampanyalar</a>
				</li>
				<li class="nav-item"><a class="nav-link" id="üstMenü" href="#">Yardım</a>
				</li>
				<li class="nav-item"><a class="nav-link" id="üstMenü"
					href="${contextRoot}/iletisim">Bize Sorun</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">

				<li><a class="btn btn-primary" role="button"
					data-toggle="modal" data-target="#exampleModalLong2"
					style="border-radius: 25px; border-color: white; color: #343A40; width: 85px; height: 48px; background-color: #E88A1A; font-weight: bold;"
					onmouseover="this.style.backgroundColor = '#fff';"
					onmouseout="this.style.backgroundColor ='#E88A1A';"><span
						class="glyphicon glyphicon-user"></span> Üye Ol</a></li> &nbsp;
				<li><a class="btn btn-primary" role="button"
					data-toggle="modal" data-target="#exampleModalLong"
					style="border-radius: 25px; border-color: white; color: #343A40; width: 85px; height: 48px; background-color: #E88A1A; font-weight: bold;"
					onmouseover="this.style.backgroundColor = '#fff';"
					onmouseout="this.style.backgroundColor ='#E88A1A';"><span
						class="glyphicon glyphicon-log-in"></span> Giriş</a></li>
			</ul>
			<br>

			<div class="flipkart-navbar-search smallsearch col-sm-8 col-xs-11">
				<div class="row">
					<input class="flipkart-navbar-input col-xs-11"
						placeholder="Ürünler, markalar daha fazlasını arayın..." name="">
					<button class="flipkart-navbar-button col-xs-1"
						onmouseover="this.style.backgroundColor = '#404040';"
						onmouseout="this.style.backgroundColor ='#000';">
						<svg width="15px" height="15px">
                            <path
								d="M11.618 9.897l4.224 4.212c.092.09.1.23.02.312l-1.464 1.46c-.08.08-.222.072-.314-.02L9.868 11.66M6.486 10.9c-2.42 0-4.38-1.955-4.38-4.367 0-2.413 1.96-4.37 4.38-4.37s4.38 1.957 4.38 4.37c0 2.412-1.96 4.368-4.38 4.368m0-10.834C2.904.066 0 2.96 0 6.533 0 10.105 2.904 13 6.486 13s6.487-2.895 6.487-6.467c0-3.572-2.905-6.467-6.487-6.467 "
								fill="#ffffff"></path>
                        </svg>
					</button>
				</div>
			</div>

			<div class="cart largenav col-sm-2">
				<a class="cart-button" style="background-color: #E89C1A;"> <svg
						class="cart-svg" width="16" height="16" viewBox="0 0 16 16">
                        <path
							d="M15.32 2.405H4.887C3 2.405 2.46.805 2.46.805L2.257.21C2.208.085 2.083 0 1.946 0H.336C.1 0-.064.24.024.46l.644 1.945L3.11 9.767c.047.137.175.23.32.23h8.418l-.493 1.958H3.768l.002.003c-.017 0-.033-.003-.05-.003-1.06 0-1.92.86-1.92 1.92s.86 1.92 1.92 1.92c.99 0 1.805-.75 1.91-1.712l5.55.076c.12.922.91 1.636 1.867 1.636 1.04 0 1.885-.844 1.885-1.885 0-.866-.584-1.593-1.38-1.814l2.423-8.832c.12-.433-.206-.86-.655-.86 "
							fill="#000"></path>
                    </svg> Sepetim <span class="badge"
					style="background-color: white; color: black;">0</span>
				</a>

			</div>
			<div>
				<ul class="nav navbar-nav navbar-left">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						style="color: black;" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false"> <i
							class="fa fa-user-circle-o"></i> <strong> Serhat Şos</strong>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">Hesabım</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Çıkış yap</a></li>
						</ul></li>
				</ul>
			</div>

		</div>

	</div>
</nav>

<!-- ****************Login Modal********************** -->
<div class="modal fade" id="exampleModalLong" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalLongTitle"
	aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header" style="background-color: #E88A1A;">

				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<!-- /////////////////////////////////// -->
				<form id="signup" method="post" action="/signup">
					<h1>GİRİŞ</h1>
					<input name="user[email]" type="email" placeholder="Email"
						class="input pass" /> <input name="user[password]"
						type="password" placeholder="*****" required="required"
						class="input pass" /> <input type="submit" value="Giriş Yap"
						class="inputButton" />
					<div class="text-center"">
						<a href="#" id="">Şifremi unuttum!</a>
					</div>
				</form>
				<!-- //////////////////////////////////// -->
			</div>

		</div>
	</div>
</div>

<!-- **************************************************** -->

<!-- ****************New User Modal********************** -->

<div class="modal fade" id="exampleModalLong2" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalLongTitle"
	aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header" style="background-color: #E88A1A;">

				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<!-- /////////////////////////////////// -->
				<form id="signup" method="post" action="/signup">
					<h1>ÜYE OL</h1>
					<input name="user[name]" type="text" placeholder="Ad-soyad"
						pattern="^[\w]{3,16}$" autofocus="autofocus" required="required"
						class="input pass" /> <input name="user[password]"
						type="password" placeholder="Şifre" required="required"
						class="input pass" /> <input name="user[password2]"
						type="password" placeholder="Şifre tekrar" required="required"
						class="input pass" /> <input name="user[email]" type="email"
						placeholder="Email adresi" class="input pass" /> <input
						type="submit" value="Üye Ol" class="inputButton" />
				</form>
				<!-- //////////////////////////////////// -->
			</div>
		</div>
	</div>
</div>
