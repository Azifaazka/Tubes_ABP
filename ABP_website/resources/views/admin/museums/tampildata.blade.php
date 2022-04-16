@extends('layoutadmin')
@section('container')
<html lang="en">

<style>
  .button{
      background: #0B3B36;
      border: 1px solid #FFB61D;
      box-sizing: border-box;
      border-radius: 9px;
      width: 230px;
      height: 50px;
  }
</style>
<head>
    <title>Admin</title>
    <link href="{{asset('css/webstyle.css')}}" rel="stylesheet">
</head>

<body class="body">
    <div class="container">
        <div class="row py-5">
            <div class="col">
               <br></br>
               <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Edit Data</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="/updatedata/{{$data->id}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="nama">Nama Museum</label>
                    <input type="name" name="nama_tempat" class="form-control" id="nama" placeholder="nama museum" value="{{$data->nama_tempat}}">
                  </div>
                  <div class="form-group">
                        <label>Deskripsi</label>
                        <textarea class="form-control" name="Description" rows="3"placeholder="Enter ...">{{$data->Description}}"</textarea>
                  </div>

                  <div class="form-group">
                    <label for="lok">Lokasi</label>
                    <input type="text" name="Location" class="form-control" id="lok" placeholder="Masukan Lokasi" value="{{$data->Location}}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">rating</label>
                      <input id="input-4" name="Ratings" class="rating rating-loading" data-show-clear="false" data-show-caption="true"  value="{{$data->Ratings}}">
                  </div>
                  <div class="form-group">
                    <label for="jam">jam operasional</label>
                    <input type="text" name="open_hours" class="form-control" id="jam" placeholder="input jam" value="{{$data->open_hours}}">
                  </div>
                </div>

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            </div>
            
        </div>
    </div>

</body>
<script>
		$(document).ready(function(){
		    $('#input-3').rating({displayOnly: true, step: 0.5});
		    $('#input-5').rating({clearCaption: 'No stars yet'});
		    $('#input-8').rating({rtl: true, containerClass: 'is-star'});
		    $('#input-9').rating();
		});

    function preview() {
      frame.src = URL.createObjectURL(event.target.files[0]);
    }
    function clearImage() {
        document.getElementById('formFile').value = null;
        frame.src = "";
      }
	</script>
 
</html>
    @endsection
  