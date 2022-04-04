@extends('layout')
@section('container')
<div class="row py-5"></div>


<!-- ======= About Us Section ======= -->
<section id="about" class="py-5">
    <div class="container">
        <div class="row py-5">
            <div class="col-lg-6 order-1 order-lg-2">
                <br>
                <br>
                <br>
                <a style="font-size:35px;font-family: 'Lora';color: white;">
                    Hi! Story
                </a>
                <br>
                <a style="font-size:50px;font-weight: bold;font-family: 'Lora';color: white;">
                    "Welcome To A <br>Portal To The Past"
                </a>
                <br>
                <a style="font-size:25px;font-family: 'Lora';color: white;">
                    <i>A platform that provides historical museum reviews that take you back to the past.</i>
                </a>

            </div>
            <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1">
                <a style="font-size:50px;font-family: 'Lora';color: white;">
                    About
                </a>
                <a style="font-size:50px;font-family: 'Lora';color: #FFAD57;">
                    Us
                </a>
                <img src="{{asset('images/aboutimage.png')}}" class="img-fluid" alt="">
            </div>
        </div>

    </div>
</section>
<!-- End About Us Section -->




@endsection