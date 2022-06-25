@extends('layout')
@section('container')
<html lang="en">

<head>
  <title>Admin</title>
  <link href="{{asset('css/webstyle.css')}}" rel="stylesheet">
</head>

<body class="body">
<section id="about" class="py-5">
  <div class="row py-5"></div>
  <div class="container">
    <div class="text-center" style="margin-bottom: 20px;">
      <div>
        <a style="font-size:50px;font-family: 'Lora';color: white;"> Museum </a>
        <a style="font-size:50px;font-family: 'Lora';color: #FFAD57;"> Page </a>
      </div>
    </div>

    <div class="row py-7">

      <div class="col">

        @foreach ($data as $crudreview)

        <div class="card mb-3" style="align-content: center;max-height: 500px;">
          <div class="row g-0">
            <div class="float-center col-md-4">
              <div style="margin-top: 13px; margin-left: 8px;">
                <img src="{{asset('image/'.$crudreview->image) }}" style="height: 285px; border-radius: 10px; margin-bottom: 10px;" class="img-fluid">
              </div>
            </div>
            <div class="col">
              <div class="card-body">
                <h5 class="card-title">{{$crudreview->nama}}</h5>
                <p class="card-text">
                  <regular class="text-muted"><i class="fa fa-star" style="color: yellow;"></i>{{$crudreview->rating}}</regular>
                </p>
                <p class="card-text"><small class="text-muted"><b>{{$crudreview->lokasi}}</b></small></p>
                <p class="card-text">{{$crudreview->deskripsi}}</p>
                <p class="card-text"><small class="text-muted"><b>Open hour:</b> {{$crudreview->open}}</small></p>
                <a href="/userview/{{ $crudreview['id']}}" style="font-size:20px;font-family: 'Lora';color: #FFAD57;" class="float-right">
                  <u>See More</u>
                </a>
              </div>
            </div>
          </div>
        </div>

        @endforeach


      </div>
    </div>
    </section>
</body>

</html>
@endsection