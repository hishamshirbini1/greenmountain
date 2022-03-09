@extends('layout.master')

@section('content')

<!-- breadcrumbs start here -->

<div class="breadcrumbs_section" style="background-image: url({{asset('assets/images/breadcrumbs_product_bg.jpg')}});">
	<div class="container">
		<div class="page_title">
			<h1>Product Category</h1>
		</div>
		<div class="breadcrumbs_list">
			<ul>
				<li><a href="{{route('home')}}">Home </a></li>/
				<li>Product Category</li>
			</ul>
		</div>
	</div>
</div>

<!-- breadcrumbs end here -->


<!-- Page content start here -->

<div class="wrapper_page">
	<div class="container">
		<div class="main-category row">
			@foreach ($categories as $category)
				<div class="product-category-row col-md-6">
					<a href="{{route('productOrCategory', $category->slug)}}">
						<div class="product-category-img">
							<img src="{{asset('storage/'. $category->image)}}"/>
						</div>
						<div class="product-category-title">
							<h2>{{$category->name}}</h2>
						</div>
					</a>
				</div>
			@endforeach
		</div>
	</div>
</div>

<!-- Page content end here -->


@endsection
