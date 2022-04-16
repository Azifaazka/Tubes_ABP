@extends('layout')
@section('container')
<div class="row py-5"></div>

<head>
  <title>User Artikel</title>
  <link href="{{asset('css/webstyle.css')}}" rel="stylesheet">
</head>
<!-- ======= About Us Section ======= -->
<section id="article" class="py-5">
<div class="text-center" style="margin-bottom: 20px;">
    <div>
      <a style="font-size:50px;font-family: 'Lora';color: white;"> Museum </a>
      <a style="font-size:50px;font-family: 'Lora';color: #FFAD57;"> Article </a>
    </div>
  </div>
  
    @foreach ($data as $item)
    <div class="container">
        
    <div class="card mb-3" style="align-content: center;max-height: 500px;">
        <div class="row g-0">
        <div class="float-center col-md-4">
            <div style="margin-top: 13px; margin-left: 8px; margin-bottom:15px">
                <img src="{{ asset('images/'. $item['image']) }}" class="img-fluid" style="height: 285px; border-radius: 10px;" >
            </div>
        </div>
        <div class="col" style="margin-top: 13px; margin-left: 8px;">
            <h5 style="font-size:35px;font-family: 'Lora';" class="card-title">{{$item['title']}}</h5   >
            <h6 style="font-size:20px;font-family: 'Lora';" class="card-text">Author : {{$item['author']}}</h6>
            <h6 style="font-size:20px;font-family: 'Lora';"class="card-text">Date : {{$item['created_at']}}</h6>
            <div class="align-self-end ml-auto">
                <a href="/article/{{ $item['slug']}}" style="font-size:20px;font-family: 'Lora';color: #FFAD57; margin-right: 30px;" > <u>See More</u></a>
            </div>
        </div>
        </div>
    </div>
</div>
@endforeach
</section>

@endsection