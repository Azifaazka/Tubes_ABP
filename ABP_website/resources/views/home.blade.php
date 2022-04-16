@extends('layout')
@section('container')
<div class="site-blocks-cover overlay" style="height:350px;" id="home-section">

  <div class="container">
    <div class="row align-items-center justify-content-center">

      <div class="row py-5">
        <div class="col-lg-6 order-1 order-lg-2">
          <img src="{{asset('images/homeimage.png')}}" class="img-fluid" alt="">
        </div>
        <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1">
          <p style="font-family: Lora;font-size:55px" color="white" class="text-right mb-4">Find All The <br>Historical <br> Museum From <br>Here!</p>
        </div>
      </div>
    </div>

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
    <section id="contact" class="py-5">
      <div class="container">
        <div class="row py-5">
          <div class="col">
            <img src="{{asset('images/contactimage.png')}}" class="img-fluid" alt="">
          </div>
          <div class="col">
            <form action="" method="POST">
              <div class="form-group">
                <font size="4" color="white">Nama</font> <br>
                <input class="form-control" type="text" name="name" placeholder="nama" />
              </div>
              <div class="form-group">
                <font size="4" color="white">Email</font> <br>
                <input class="form-control" type="text" name="email" placeholder="email" />
              </div>

              <div class="form-group">
                <font size="4" color="white">Phone</font> <br>
                <input class="form-control" type="password" name="password" placeholder="Phone" />
              </div>

              <div class="form-group">
                <font size="4" color="white">Message</font> <br>
                <!-- <input class="form-control" type="password" name="confirm" placeholder="Message" /> -->
                <textarea class="ccformfield" style="border-radius:10px" name="message" cols="70" placeholder="Message" required></textarea>
              </div>
              <div class="ccfield-prepend" style="margin-left:35%;">
                <input style="background-color:#0A6C62" class="btn btn-info px-5 " type="submit" value="Submit">
              </div>


          </div>
          </form>

        </div>
      </div>

  </div>
  </section>




  @endsection