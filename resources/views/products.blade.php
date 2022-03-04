@extends('layout.master')

@section('content')
<!-- breadcrumbs start here -->
    
<div class="breadcrumbs_section" style="background-image: url({{asset('assets/images/breadcrumbs_product_bg.jpg')}});">
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
{{-- <div class="breadcrumbs_section" style="background-image: url(assets/images/breadcrumbs_product_bg.jpg);">
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
</div> --}}

<!-- breadcrumbs end here -->


<!-- Page content start here -->
<div class="page_wrapper">
	<div class="container">
        <div class="product_page">
            @foreach ($category->products as $product)
                <div class="product_page_box">
                     @php $image = !empty($product->img_gallery) ? 'storage/'.(json_decode($product->img_gallery))[0]  : 'assets/images/hover_bg.jpg'@endphp
                    <div class="hover_img"><img src="{{asset($image)}}"/></div>
                    <div class="product_box_midd">
                        <h2>{{$product->name}}</h2>
                        {!! $product->description !!}
                        <a href="{{route('products.show', $product->id)}}" class="read_more">Read More</a>
                    </div>
                </div>
            @endforeach
        </div>
				
        {{-- <div class="pagination">
            <a href="#" class="prev"></a>
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#" class="next"></a>
        </div> --}}
	</div>
</div>

<!-- Page content end here -->
@endsection


