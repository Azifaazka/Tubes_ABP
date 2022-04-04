@extends('layout')
@section('container')
<div class="row py-5"></div>

<!-- ======= Contact Us Section ======= -->
<section id="about" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 order-1 order-lg-1">
                <br><br><br><br>
                <img src="{{asset('images/contactimage.png')}}" class="img-fluid" alt="">
            </div>
            <div>
                <a style="font-size:50px;font-family: 'Lora';color: white;">
                    Contact
                </a>
                <a style="font-size:50px;font-family: 'Lora';color: #FFAD57;">
                    Us
                </a>
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
<!-- End About Us Section -->




@endsection