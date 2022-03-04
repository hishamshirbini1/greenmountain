@extends('layout.master')
@section('content')

<!-- breadcrumbs start here -->


<div class="breadcrumbs_section" style="background-image: url(assets/images/breadcrumbs_product_bg.jpg);">
	<div class="container">
		<div class="page_title">
			<h1>{{$category->name}}</h1>
		</div>
		<div class="breadcrumbs_list">
			<ul>
				<li><a href="{{route('home')}}">Home </a></li>/
				<li>Products</li>
			</ul>
		</div>
	</div>
</div>

<!-- breadcrumbs end here -->


<!-- Page content start here -->

<div class="wrapper_page">
	<div class="container">
		<div class="sub-categories">
			@foreach ($category->children as $sub)
				<div class="sub-categories-row">
                    <a href="{{route('productOrCategory', $category->slug)}}/{{$sub->slug}}">
                        <div class="sub-categories-img"><img src="{{asset('storage/'.$sub->image)}}"/></div>
                        <div class="sub-categories-title"><h3>{{$sub->name}}</h3></div>
                    </a>
				</div>
			@endforeach

		</div>

	</div>


	{{-- <div class="other-categories">
		<div class="container">
			<p class="other_title">Other categories</p>
			<div class="other-categories-slider">

				<div class="other-categories-row">
					<div class="other-categories-img">
						<img src="assets/images/product-list-1.png"/>
					</div>
					<h3 class="categories-title"><a href="#">Name of the main category</a></h3>
				</div>

				<div class="other-categories-row">
					<div class="other-categories-img">
						<img src="assets/images/product-list-1.png"/>
					</div>
					<h3 class="categories-title"><a href="#">Name of the main category</a></h3>
				</div>
				<div class="other-categories-row">
					<div class="other-categories-img">
						<img src="assets/images/product-list-1.png"/>
					</div>
					<h3 class="categories-title"><a href="#">Name of the main category</a></h3>
				</div>
				<div class="other-categories-row">
					<div class="other-categories-img">
						<img src="assets/images/product-list-1.png"/>
					</div>
					<h3 class="categories-title"><a href="#">Name of the main category</a></h3>
				</div>
				<div class="other-categories-row">
					<div class="other-categories-img">
						<img src="assets/images/product-list-1.png"/>
					</div>
					<h3 class="categories-title"><a href="#">Name of the main category</a></h3>
				</div>
				<div class="other-categories-row">
					<div class="other-categories-img">
						<img src="assets/images/product-list-1.png"/>
					</div>
					<h3 class="categories-title"><a href="#">Name of the main category</a></h3>
				</div>
			</div>
		</div>
	</div> --}}

</div>

<!-- Page content end here -->

@endsection
