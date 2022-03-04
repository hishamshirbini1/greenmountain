@extends('layout.master')

@section('content')

<div class="breadcrumbs_section" style="background-image: url(assets/images/breadcrumbs_about_bg.jpg);">
	<div class="container">
		<div class="page_title">
			<h1>catalogue</h1>
		</div>
	</div>
</div>

<!-- breadcrumbs end here -->


<!-- Page content start here -->

<div class="page_wrapper">
	<div class="container">
		<div class="about_content">

			<div class="about_content_img">
                <input type="image" value="{{$pdf}}">
			</div>
		</div>

	</div>
</div>

<!-- Page content end here -->


@endsection
