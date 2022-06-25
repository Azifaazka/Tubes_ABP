@extends('layoutadmin')
@section('container')
<html lang="en">

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
            <center>
              <h3 class="card-title">New Museum</h3>
            </center>
          </div>
          <form action="/insertdata" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="card-body">
              <div class="form-group">
                <label for="nama">Nama Museum</label>
                <input type="name" name="nama" class="form-control" id="nama" placeholder="nama museum">
              </div>
              <div class="form-group">
                <label>Deskripsi</label>
                <textarea class="form-control" name="deskripsi" rows="3" placeholder="Enter ..."></textarea>
              </div>

              <div class="mb-2">
                <input class="form-control" type="file" id="formFile" name="image" onchange="preview()">
              </div>
              <img id="frame" src="" class="img-fluid" />

              <div class="form-group">
                <label for="lok">Link Image</label>
                <input type="text" name="link_image" class="form-control" id="lok" placeholder="Masukan link">
              </div>
              <div class="form-group">
                <label for="lok">Lokasi</label>
                <input type="text" name="lokasi" class="form-control" id="lok" placeholder="Masukan Lokasi">
              </div>
              <div class="form-group">
                <label for="lok">Kota</label>
                <input type="text" name="kota" class="form-control" id="lok" placeholder="Masukan kota">
              </div>
              <div class="form-group">
                <label for="lok">Latitude</label>
                <input type="text" name="latitude" class="form-control" id="lok" placeholder="Masukan latitude">
              </div>
              <div class="form-group">
                <label for="lok">Longitude</label>
                <input type="text" name="longitude" class="form-control" id="lok" placeholder="Masukan longitude">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">rating</label>
                <input id="input-4" name="rating" class="rating rating-loading" data-show-clear="false" data-show-caption="true">
              </div>
              <div class="form-group">
                <label for="jam">jam operasional</label>
                <input type="text" name="open" class="form-control" id="jam" placeholder="input jam">
              </div>
            </div>

            <div class="card-footer">
              <button type="submit" class="btn btn-primary" style="background-color:#0A6C62">Submit</button>
            </div>
          </form>
        </div>
      </div>

    </div>
  </div>

</body>
<script>
  $(document).ready(function() {
    $('#input-3').rating({
      displayOnly: true,
      step: 0.5
    });
    $('#input-5').rating({
      clearCaption: 'No stars yet'
    });
    $('#input-8').rating({
      rtl: true,
      containerClass: 'is-star'
    });
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