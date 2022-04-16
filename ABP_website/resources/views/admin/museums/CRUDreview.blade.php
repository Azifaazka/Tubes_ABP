@extends('layoutadmin')
@section('container')
<html lang="en">

<style>
  .button {
    background: #0B3B36;
    border: 1px solid #FFB61D;
    box-sizing: border-box;
    border-radius: 9px;
    width: 150px;
    height: 35px;
    text-align: center;
  }
</style>

<head>
  <title>Admin</title>
  <link href="{{asset('css/webstyle.css')}}" rel="stylesheet">
</head>
<div class="row py-5"></div>

<body class="body">
  <div class="text-center" style="margin-bottom: 20px;">
    <div>
      <a style="font-size:50px;font-family: 'Lora';color: white;"> CRUD </a>
      <a style="font-size:50px;font-family: 'Lora';color: #FFAD57;"> Museum </a>
    </div>
  </div>
  <div class="col">
    <!-- konten disini -->
    <div class="container">
      <div class="text-center">
        <a href="/tambahreview" type="button" class="btn btn-success btn-block" style=" background-color:#0A6C62; color:white "><b>New Museum</b></a>
      </div>
      <div style="margin-top: 15px;">
        @if($message = Session::get('success'))
        <div class="alert alert-success" role="alert">
          {{$message}}
        </div>
        @endif
      </div>
      <hr style="width:100%" , size="4" , color=white>
      @foreach ($data as $crudreview)

      <div class="card mb-3" style="align-content: center;max-height: 500px;">
        <div class="row g-0">
          <div class="float-center col-md-4">

            <div style="margin-top: 13px; margin-left: 8px;">
              <img src="{{asset('image/'.$crudreview->image) }}" style="height: 285px; border-radius: 10px; margin-bottom: 10px; " class="img-fluid">
            </div>
          </div>
          <div class="col">
            <div class="card-body">
              <a href="/delete/{{$crudreview->id}}" class="btn btn-danger" style="float:right">Delete</a>
              <a href="/tampilkandata/{{$crudreview->id}}" class="btn btn-warning" style="float:right; margin-right: 10px;">Edit</a>
              <h5 class="card-title">{{$crudreview->nama_tempat}}</h5>
              <p class="card-text">
                <regular class="text-muted"><i class="fa fa-star" style="color: yellow;"></i>{{$crudreview->Ratings}}</regular>
              </p>
              <p class="card-text"><small class="text-muted"><b>{{$crudreview->Location}}</b></small></p>
              <p class="card-text">{{$crudreview->Description}}</p>
              <p class="card-text"><small class="text-muted"><b>Open hour:</b> {{$crudreview->open_hours}}</small></p>
              <a href="/CRUDreview/{{ $crudreview['id']}}" style="font-size:20px;font-family: 'Lora';color: #FFAD57;" class="float-right">
                  <u>See More</u>
                </a>
            </div>
          </div>
        </div>
      </div>

      @endforeach
    </div>


    <!-- </div> -->
</body>
</script>

</html>
@endsection