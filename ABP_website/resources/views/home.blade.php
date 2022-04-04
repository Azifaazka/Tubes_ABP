@extends('layout')
@section('container')
<div class="site-blocks-cover overlay" style="height:350px; data-aos=" id="home-section">

  <div class="container">
    <div class="row align-items-center justify-content-center">

      <div class="row py-5">
        <div class="col-lg-6 order-1 order-lg-2">
          <img src="{{asset('images/homeimage.png')}}" class="img-fluid">
        </div>
        <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1">
          <p style="font-family: Lora; font-size:55px" color="white" class="text-right mb-4">Find All The <br>Historical <br> Museum From <br>Here!</p>
        </div>

      </div>
    </div>




    @endsection