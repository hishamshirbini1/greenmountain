@extends('layout.master')

@section('content')
    
<!-- breadcrumbs start here -->

<div class="breadcrumbs_section" style="background-image: url({{asset('assets/images/breadcrumbs_product_bg.jpg')}});">
	<div class="container">
		<div class="page_title">
			<h1>PRODUCTS</h1>
		</div>
		<div class="breadcrumbs_list">
			<ul>
				<li><a href="index.html">Home </a></li>/ 
				<li>Products</li>
			</ul>
		</div>
	</div>
</div>

<!-- breadcrumbs end here -->


<!-- Page content start here -->

<div class="page_wrapper">
	<div class="container">
		
		<div class="products-details">
			<div class="products-details-left">
				
				<div class="products-sldier">
					@php $images = json_decode($product->img_gallery) @endphp
					@foreach ($images as $image)
						<div class="products-sldier-row">
							<img src="{{asset('storage/'. $image)}}">
						</div>
					@endforeach
					
				</div>

				<div class="products-sldier-nav">
					@php $images = json_decode($product->img_gallery) @endphp
					@foreach ($images as $image)
						<div class="products-sldier-row">
							<img src="{{asset('storage/'. $image)}}">
						</div>
					@endforeach
				</div>

			</div>
			<div class="products-details-right">
				<div class="products-search">
					<p>Search</p>
					<input type="text" name="" placeholder="Seach here...">
				</div>
				<div class="products-list-row">
					<p>{{$product->name}}</p>
					<ul>
						@foreach ($categories as $cat)
							<li class="{{ $cat->id == ($product_category->id ??'') ? 'active' : ''}}"><a href="{{route('products.index',['category'=> $cat->name])}}">{{$cat->name}}</a></li>
						@endforeach
					</ul>
				</div>
			</div>
		</div>

		<div class="products-info">
			<h2>{{$product->name}}</h2>
			<h3>{{$product_category->name??''}}</h3>
			{!! $product->description !!}
		</div>

	</div>
</div>

<!-- Page content end here -->


@endsection
