@extends('layout.master')

<!-- Home Banner section start here -->
@section('content')
<div class="home_banner">
	@foreach ($bannerSlider as $slider)
		<div class="home_banner_row">
			<div class="banner_Caption">
				<div class="banner_Caption_row">
					<p>{{$slider->subtitle}}</p>
					<h2>{!! $slider->title !!}</h2>
					@if (!empty($slider->button_link) && $slider->button_link != null)
						<a href="{{$slider->button_link}}" class="banner_read">{{$slider->button_text}}</a>
					@endif
				</div>
			</div>
			<img src="{{asset('storage/'.$slider->image)}}"/>
		</div>
	@endforeach
</div>


<!-- Home Banner section end here -->



<!-- Home intro section start here -->

<div class="home_intro">
	<div class="container">
		<div class="home_intro_title">
			<h1>{{$page->title}}</h1>
			<span>{{$page->excerpt}}</span>
		</div>
		<div class="home_intro_p">
			<p>{!! $page->body !!}</p>
		</div>

		<div class="about_green">
			<div class="about_green_left">
				{!! $aboutPage->title !!}
				{!! $aboutPage->excerpt !!}
				<a href="{{route('about')}}" class="about_more">Read More</a>
			</div>
			<div class="about_green_right">
				<img src="{{asset('storage/'.$aboutPage->image)}}">
			</div>
		</div>

	</div>
</div>

<!-- Home intro section end here -->


<!-- Home page product section start here -->

<div class="home_product_section">
    <div class="other-division">
        <span style="color:white;">Highlights</span>
    </div>
	<div class="container">
		<div class="row">
			<div class="col-md-6">

				<img class="w-100 h-100" src="assets/images/kraftrounded.jpeg">
			</div>
			<div class="col-md-6">
				<img class="w-100 h-100" src="assets/images/biocontainers.jpeg">
				{{-- <div class="share_icon"></div> --}}
			</div>
		</div>
	</div>
</div>
<div class="products-logo-section">
	<div class="container">
	    {{-- @if ($homeCategories)
	    	<div class="home_product_slider">
				@foreach ($homeCategories as $category)

					@foreach ($category->related_products() as $product)
						<div class="home_product_row">
							<a href="{{route('products.show', $product->id)}}" tabindex="-1"> <img src="{{asset('storage/'. $product->getBaseImage())}}">
							<h2 class="product_title">{{$product->name}}</h2></a>
						</div>
						<div class="home_product_row">
							<a href="{{route('products.show', $product->id)}}"> <img src="assets/images/product_1.jpg"> </a>
						</div>

					@endforeach
				@endforeach

			</div>
		@endif --}}

        <video width="400" controls>
        <source src="assets/videos/video-2022.mp4" type="video/mp4">
        {{-- <source src="assets/vedios/biocontainers.ogg" type="video/ogg"> --}}
        {{-- Your browser does not support HTML video. --}}
        </video>

	</div>
</div>

<!-- Home page product section end here -->



<!-- Why Choose Us start here -->

<div class="why_choose_section">
	<div class="container">
		<div class="why_choose">
			<div class="why_choose_left">
				<div class="why_choose_title">
					<h3>{{$whyChoseUs->title}}</h3>
					<span>{{$whyChoseUs->excerpt}}</span>
				</div>
				{!! $whyChoseUs->body !!}
			</div>
			<div class="why_choose_right">
				<ul>
					@foreach ($whyChoseUsfeatires as $feature)
						<li>
							<i><img src="{{asset('storage/'. $feature->icon)}}"></i>
							<h2>{{$feature->title}} <span> {{$feature->description }} </span></h2>
						</li>
					@endforeach
				</ul>
			</div>
		</div>
	</div>
</div>

<!-- Why Choose Us end here -->







<!-- Service we Provide start here -->

<!--
<div class="services_provide">
	<div class="container">
		<div class="services_provide_content">
			@php
				$post = TCG\Voyager\Models\Post::where('slug', 'services_post')
			@endphp
			<div class="services_provide_title">
					<span>WE OFFER DIFFERENT SERVICES</span>
					<h2>SERVICES WE PROVIDE</h2>
			</div>
			<div class="services_p">
				<p>Our comprehensice range of hygiene and waste disposal services are designed to help you manage your waste with environmental responsibility and in full compliance with the latest legislation. Also, our local team of waste disposal experts is dedicated to providing discreat, hygienic and reliable service that you can trust to keep your facilities accommodated...</p>
			</div>

			<ul>
				@foreach ($services as $service)
					<li>
						<a href="{{route('services.show', $service->id)}}">
							<i><img src="{{asset('storage/'.$service->icon)}}"></i>
							<h3>{{$service->title}}</h3>
						</a>
					</li>
				@endforeach
			</ul>
		</div>
	</div>
</div>

 -->
@php
	$posts = TCG\Voyager\Models\Post::where('featured', 1)->limit(2)->get()
@endphp
<div class="services_provide">

    <div class="other-division">
        <span>Our Other Division</span>
    </div>
	<div class="container">
        <div class="row">
			@foreach ($posts as $post)

				<div class="col-md-6 col-sm-12">
					<a href="{{$post->slug}}" target="_blank">
						<img src="{{asset('storage/'.$post->image)}}" class="img-fluid">
					</a>
				</div>
			@endforeach
        </div>
    </div>
</div>
<!-- Service we Provide end here -->


<!-- Home page contact section -->
<div class="home_contact">
	<div class="container">
		<div class="contact_page">
			<div class="connect-withus">
				<p>{{$contactUsPage->excerpt}}</p>
				<span>{{$contactUsPage->title}}</span>
			</div>
			<div class="connect-info">
				{!! $contactUsPage->body !!}
				<strong>Call now: +971 2552 9007</strong>
				<strong>Mobile: +971 5444 68360</strong>
			</div>


			<div class="contact_info">
				<div class="contact_info_row">
					<i><img src="assets/images/pin-icon.png"/></i>
					<div class="contact_p">
						<p>ABU DHABI OFFICE</p>
						<span>{{setting('site.address')}}</span>
					</div>
				</div>
				<div class="contact_info_row">
					<i><img src="assets/images/phone-call.png"/></i>
					<div class="contact_p">
						<p>CALL US</p>
						<span>Telephone: {{setting('site.phone')}}</span>
						<span>Fax: {{setting('site.fax')}}</span>
					</div>
				</div>
				<div class="contact_info_row">
					<i><img src="assets/images/envelope.png"/></i>
					<div class="contact_p">
						<p>EMAIL US</p>
						<span><a href="mailto:{{setting('site.email')}}">{{setting('site.email')}}</a></span>
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
</div>
@endsection

<!-- Home page contact section end here -->


