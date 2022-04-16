@extends('layout')
@section('container')
<div class="row py-5"></div>
<section id="all" class="py-5">
    <div class="container">
        <div class="text-center" style="margin-bottom: 20px;">
            <div>
                <a style="font-size:50px;font-family: 'Lora';color: white;"> Museum </a>
                <a style="font-size:50px;font-family: 'Lora';color: #FFAD57;"> Reviews </a>
            </div>
        </div>
        <hr style="width:100%" , size="4" , color=white>
        <p style="font-size: 20px; color:white" >What is on your mind on this museum?.. <p>
        <form action="" method="post">
            @csrf
            <input type="hidden" name="_token" value="<?php echo csrf_token() ?>">
            <div class="from-group">
                <label style="color:white">Username</label></br>
                <input type="text" name="name" id="ReviewText" class="form-control" placeholder="Type Your Username..."></br>
                <label style="color:white">Rating</label></br>
                <input id="input-4" name="ratings" class="rating rating-loading" data-show-clear="false" data-show-caption="true">
                <label style="color:white">Make Review</label></br>
                <input type="text" name="comment" id="ReviewText" class="form-control" placeholder="Type Your Username..."></br>
            </div>
            <input type="submit" class="btn btn-success btn-block" style=" background-color:#0A6C62; color:white ">
        </form>
        <br>
        <hr style="width:100%" , size="4" , color=white>
        <font color="white">Newest Review <font>
                <hr style="width:100%" , size="4" , color=white>
                @foreach($komen as $review)
                @if ($review->id_museum==$id)
                <div class="container" style="width: 90%">
                    <div class="row mt-4">
                        <div style=" width : 120px; height  : 120px">
                            <img src="https://www.shareicon.net/data/2016/09/15/829466_man_512x512.png" class="img-fluid">
                        </div>
                        <div class="col">
                            <div class="" style="margin-left: 30px;">
                                <p style="font-size:20px;font-family: 'Lora';color: white;">
                                    <b>{{$review->name}}</b>
                                </p>
                                <p style="font-size:17px;font-family: 'Lora';color: white;"><i class="fa fa-star" style="color: yellow;"></i> {{$review->ratings}}</regular>
                                </p>
                                <p style="font-size:15px;font-family: 'Lora';color: white;">
                                    {{$review->comment}}
                                </p>

                            </div>
                        </div>
                        <hr style="width:100%" , size="4" , color=white>
                    </div>
                </div>
                @endif
                @endforeach
    </div>
</section>
</div>

@endsection