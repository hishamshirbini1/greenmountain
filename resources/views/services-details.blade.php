@extends('layout.master')
<!-- breadcrumbs start here -->

@section('content')
    
<div class="breadcrumbs_section" style="background-image: url({{asset('assets/images/breadcrumbs_service_bg.jpg')}});">
	<div class="container">
		<div class="page_title">
			<h1>SERVICES</h1>
		</div>
		<div class="breadcrumbs_list">
			<ul>
				<li><a href="{{route('home')}}">Home </a></li>/ 
				<li><a href="{{route('services.index')}}">Services </a></li>/
				<li>{{$service->title}}</li>
			</ul>
		</div>
	</div>
</div>

<!-- breadcrumbs end here -->


<!-- Page content start here -->

<div class="page_wrapper">
	<div class="container">
		
		<div class="services-details">
			<div class="services-details-img">
				@php $prev = !empty($service->image) ? $service->image : $service->icon @endphp
				<img src="{{asset('storage/'.$prev)}}">
			</div>
			<div class="services-details-content">
				<h2>{{$service->breif}}</h2>
				<h3>{{$service->title}}</h3>
				{!! $service->short_description !!}
				<ul>
                    @php
                        $specs = json_decode($service->specs);
                    @endphp
                    @foreach ($specs as $spec)
					    <li>{{$spec}}</li>
                    @endforeach
				</ul>
			</div>
		</div>

		<div class="service_bottom">
		{!! $service->description !!}
		</div>

	</div>
</div>

<!-- Page content end here -->


@endsection
