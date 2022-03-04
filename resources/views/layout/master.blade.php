<!-- Header start here -->
<?php
$links= basename($_SERVER['PHP_SELF']);
?>
<!DOCTYPE html>
<html>
<head>
<title>Green Mountains Hygiene</title>
<link rel="icon" href="{{asset('assets/images/favicon.png')}}" type="image/x-icon">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="{{asset('assets/css/stylesheet.css')}}">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

</head>
<body>


<div class="wrapper">
	<header id="header">
		<div class="top_header_wrapper">
			<div class="container">
				<div class="mob_header">
						<li><a href="{{setting('site.phone')}}"><i class="fas fa-phone"></i></a></li>
						<li><a href="mailto{{setting('site.email')}}"><i class="far fa-envelope"></i></a></li>
						@include('partials.links')
				</div>
				<div class="top_header">
					<div class="top_header_left">
						<ul>
							<li><i class="fas fa-phone"></i><a href="#">+971 2552 9007</a></li>
							<li><i class="far fa-envelope"></i><a href="#">sales.hygiene@greenmountains.ae</a></li>
						</ul>
					</div>
					<div class="top_header_right">
						<ul>
							<li>Follow us:</li>
							@include('partials.links')
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="header">
				<div class="logo">
					<a href="{{route('home')}}"><img src="{{asset('assets/images/logo.png')}}"></a>
				</div>
				<div class="header_right">
					<ul>
						<li>
							<i class="far fa-paper-plane"></i>
							<p>971 2 555 9954<span>sales.hygiene@greenmountains.ae</span></p>
						</li>
						<li>
							<i class="fas fa-map-marker-alt"></i>
							<p>ABU DHABI OFFICE<span>Sector 13, Musaffah, Abu Dhabi</span></p>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="navigation_bar">
			<div class="container">
				<nav id='cssmenu'>
					<div class="button"></div>
					<ul>
						<li class ="{{ Request::is('/') ? 'active' : '' }}" > <a href="{{route('home')}}">Home</a> </li>
						<li class ="{{ Request::is('about') ? 'active' : '' }}" > <a href="{{route('about')}}">About us</a> </li>
						<li class ="{{ Request::is('catalogue') ? 'active' : '' }}" > <a target="_blank" href="{{route('catalogue')}}">Catalogue</a> </li>
						{{-- <li class ="{{ Request::is('services*') ? 'active' : '' }}" > <a href="{{route('services.index')}}">services</a>
							<ul>
								@foreach ($services as $service)
									<li><a href="{{route('services.show', $service->id)}}">{{$service->title}}</a></li>
								@endforeach
							</ul>
						</li> --}}
						<li class ="{{ Request::is('categories*') ? 'active' : '' }}" > <a href="{{route('categories.list')}}">Categories</a> </li>
						<li class ="{{ Request::is('contact') ? 'active' : '' }}" > <a href="{{route('contact')}}">contact</a> </li>
					</ul>
				</nav>
				<div class="header_search">
					<input type="text" name="" placeholder="Type and Hit Enter">
					<button></button>
				</div>
			</div>
		</div>
	</header>
<!-- Header end here -->

        @yield('content')


        <!-- Footer start here -->

<footer id="footer">
	<div class="footer_newsletter">
		<div class="container">
			<div class="newsletter_content">
				<p>JOIN OUR</p>
				<span>NEWSLETTER</span>
			</div>
			<div class="newsletter_form">
				<form action="{{route('subscribers')}}" method="POST">
					<input type="text" name="email" placeholder="Your Email Address">
					<button>Subscribe</button>
				</form>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="footer">
			<div class="footer_row">
				<div class="footer_logo"><img src="assets/images/footer_logo.png" /></div>
				<div class="footer_follow">
					<p>FOLLOW US</p>
					<span>Connect with us</span>
					<ul>
						@include('partials.links')
					</ul>
				</div>
			</div>

			<div class="footer_row">
				<p class="footer_title">CONTACT US</p>
				<div class="office_address">
					<p>ABU DHABI OFFICE</p>
					<ul>
						<li><i class="fas fa-map-marker-alt"></i>{{setting('site.address')}}</li>
						<li><i class="fas fa-phone"></i>{{setting('site.phone')}}<br /> {{setting('site.fax')}}</li>
						<li><i class="far fa-envelope"></i><a href="mailto:{{setting('site.email')}}">{{setting('site.email')}}</a></li>
					</ul>
				</div>
			</div>

			<div class="footer_row">
				<p class="footer_title">ABOUT US</p>
				<div class="footer_about">
					<p>Green Mountains Hygiene g Disposable Offers an expert understanding ofthe practical and legislative issues regarding workplace hygiene that our custorners face on a daily basis. We provide a broadrange Of products and solutions.</p>
				</div>
			</div>

			<div class="footer_row">
				<p class="footer_title">LOCATION MAP</p>
				<div class="footer_map">
					<img src="assets/images/map.png" />
				</div>
			</div>

		</div>

		<div class="sub_footer">
			<p>© 2021 . Green Mountains Hygiene . All rights reserved . By <a href="#">Dow Group</a></p>
		</div>

	</div>
</footer>
<!-- Footer end here -->
</div>


<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="{{asset('assets/js/custom.js')}}" type="text/javascript" charset="utf-8"></script>
</body>

</html>
