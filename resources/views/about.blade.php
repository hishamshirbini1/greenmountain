@extends('layout.master')

@section('content')
    
<!-- breadcrumbs start here -->
@php
	$page = TCG\Voyager\Models\Page::where('slug', 'about-us')->first();
@endphp
<div class="breadcrumbs_section" style="background-image: url(assets/images/breadcrumbs_about_bg.jpg);">
	<div class="container">
		<div class="page_title">
			<h1>ABOUT</h1>
		</div>
		<div class="breadcrumbs_list">
			<ul>
				<li><a href="index.html">Home </a></li>/ 
				<li>About</li>
			</ul>
		</div>
	</div>
</div>

<!-- breadcrumbs end here -->


<!-- Page content start here -->

<div class="page_wrapper">
	<div class="container">
		<div class="about_content">
			<div class="about_content_left">
				<h2>{!! $page->title !!}</h2>
				{!! $page->excerpt !!}
			</div>

			<div class="about_content_img">
				<img src="{{asset('storage/'. $page->image)}}"/>
			</div>
		</div>

		<div class="about-bottom-content">
			{!! $page->body !!}
		</div>

	</div>
</div>

<!-- Page content end here -->


@endsection
