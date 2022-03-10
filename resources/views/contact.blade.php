@extends('layout.master')
@section('content')

<!-- breadcrumbs start here -->

<div class="breadcrumbs_section" style="background-image: url(assets/images/breadcrumbs_contact_bg.jpg);">
	<div class="container">
		<div class="page_title">
			<h1>CONTACT</h1>
		</div>
		<div class="breadcrumbs_list">
			<ul>
				<li><a href="index.html">Home </a></li>/
				<li>Contact</li>
			</ul>
		</div>
	</div>
</div>

<!-- breadcrumbs end here -->


<!-- Page content start here -->

<div class="page_wrapper contact_page_wrapper">
	<div class="container">

		<div class="contact_page">
			<div class="connect-withus">
				<p>{{$contactUsPage->excerpt}}</p>
				<span>{{$contactUsPage->title}}</span>
			</div>
			<div class="connect-info">
				{!! $contactUsPage->body !!}
				<strong>Call now: +971 2552 9007</strong>
			</div>


			<div class="contact_info">
				<div class="contact_info_row">
					<i><img src="assets/images/pin-icon.png"/></i>
					<div class="contact_p">
						<p>ABU DHABI OFFICE</p>
						<span>Sector 13, Musaffah,<br/>Abu Dhabi</span>
					</div>
				</div>
				<div class="contact_info_row">
					<i><img src="assets/images/phone-call.png"/></i>
					<div class="contact_p">
						<p>CALL US</p>
						<span>Telephone: +971 2552 9007</span>
						<span>Fax: +971 2 555 9974</span>
					</div>
				</div>
				<div class="contact_info_row">
					<i><img src="assets/images/envelope.png"/></i>
					<div class="contact_p">
						<p>EMAIL US</p>
						<span><a href="#">sales.hygiene@greenmountains.ae</a></span>
					</div>
				</div>
			</div>


			<div class="contact_form">
				<div class="contact_form_top">
					<p>GREEN, DELIVERED</p>
					<h3>CONTACT FORM</h3>
				</div>
				@include('partials.contact-us-form')
			</div>
		</div>
	</div>

<div class="contct_map">
	<iframe src="https://www.google.com/maps/embed?pb=!3m1!4b1!4m12!1m6!3m5!1s0x3e5e41c610d1694f:0x2a49b77cb0cde866!2sGREEN+MOUNTAINS+HYGIENE+ITEMS+TRADING!8m2!3d24.3696683!4d54.5007843!3m4!1s0x3e5e41c610d1694f:0x2a49b77cb0cde866!8m2!3d24.3696683!4d54.5007843" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>

</div>

<!-- Page content end here -->
@endsection


