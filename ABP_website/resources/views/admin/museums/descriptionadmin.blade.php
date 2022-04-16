@extends('layoutadmin')
@section('container')
<div class="row py-5"></div>
<section id="description" class="py-5">
    <div class="container">
        <center>
            <p style="font-size:40px;font-family: 'Lora';color: white;">{{ $data->nama_tempat }}</p>
            <img src="{{ asset('image/'. $data->image) }}" alt="" width="600" height="300" align="center">
            <br><br>
            <p style="font-size:25px;font-family: 'Lora';color: white;">Description</p>
            <p style="font-size:20px;font-family: 'Lora';color: white;">
            {{ $data->Description }}
            </p>
        </center>
        <div class="row">
            <div class="col-lg-4">
                <center>
                    <p style="font-size:25px;font-family: 'Lora';color: white;">Location</p>
                    <p style="font-size:20px;font-family: 'Lora';color: white;">
                    {{ $data->Location }}
                    </p>
                </center>
            </div>
            <div class="col-lg-4">
                <center>
                    <p style="font-size:25px;font-family:    'Lora';color: white;">Rating</p>
                    <i class="fa fa-star" style="color: yellow;"></i>
                    <a style="font-size:20px;font-family: 'Lora';color: white;">
                    {{ $data->Ratings }}
                    </a>
                </center>
            </div>
            <div class="col-lg-4">
                <center>
                    <p style="font-size:25px;font-family: 'Lora';color: white;">Opening Hours</p>
                    <p style="font-size:20px;font-family: 'Lora';color: white;">
                    {{ $data->open_hours }}
                    </p>
                </center>
            </div>
            <a href="/CRUDreview/{{$id}}/adminreview" style="font-size:30px;font-family: 'Lora';color: #FFAD57;margin-left:42%;">
                <u>See All Review</u>
            </a>
        </div>
    </div>
</section>
</div>

@endsection