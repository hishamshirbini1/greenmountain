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
				<li><a href="index.html">Home </a></li>/ 
				<li>Services</li>
			</ul>
		</div>
	</div>
</div>

<!-- breadcrumbs end here -->


<!-- Page content start here -->

<div class="page_wrapper">
	<div class="container">
		
		<div class="services_page">
            @foreach ($services as $service)
                <div class="services_page_box">
                    <div class="services_img">
                        <a href="{{route('services.show', $service->id)}}">
                            @php $prev = !empty($service->icon) ? $service->icon : $service->image @endphp
                        <i><img src="{{asset('storage/'. $prev)}}"></i>
                        </a>
                    </div>
                    <div class="services-intro">
                        <h3><a href="{{route('services.show', $service->id)}}">{{$service->title}}</a></h3>
                        <p>{!! $service->short_description !!}</p>
                    </div>
                    <a href="{{route('services.show', $service->id)}}" class="services_link">Read More</a>
                </div>
            @endforeach
		</div>
{{-- 
		<div class="pagination">
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


