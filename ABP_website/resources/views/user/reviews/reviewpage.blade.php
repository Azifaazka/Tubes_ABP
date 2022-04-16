@extends('layout')
<div style="margin-top: 130;"></div>


<head>
    <title>Reviews</title>
    <link href="{{asset('css/webstyle.css')}}" rel="stylesheet">
    <style>

    </style>
</head>

<body>
    <div class="container">
    <a href="{{ url('/userview') }}">
            <font color="#FFAD57"><u>Back</u><font>
        </a>

        <hr style="width:100%" , size="4" , color=white>
        <a href="{{ url('/createreview') }}" class="btn btn-success btn-block" style=" background-color:#0A6C62; color:white ">Add Review</a> <br>
        @if ($message = Session::get('message'))
        <div class="alert alert-success" role="alert">{{ $message }}</div>
        <br>
        @endif
        <font color="white">Newest Review <font>
            <br><br>
                <div class="row">
                    <div class="col">
                    </div>
                        @foreach($data as $userReview)
                        <div class="container" style="width: 90%">
                            <div class="row mt-4">
                                <div style=" width : 120px; height  : 120px">
                                    <img src="{{asset('images/ZprofilePic.png')}}" class="img-fluid">
                                </div>
                                <div class="col">
                                    <div class="d-flex justify-content-between" style="margin-left: 30px;">
                                        <a style="font-size:17px;font-family: 'Lora';color: white;">
                                            {{$userReview['name']}}</a>
                                        <a style="font-size:17px;font-family: 'Lora';color: white;">
                                            {{$userReview['created_at']->diffForHumans()}}</a>
                                    </div>
                                    <div style="margin-left: 30px; font-size:17px;font-family: 'Lora';color: white;">
                                        <i class="fa fa-star" style="color: yellow;"></i> {{$userReview['rating']}}
                                    </div>
                                    <div style="margin-left: 30px; font-size:17px;font-family: 'Lora';color: white;">
                                        {{$userReview['reviews']}}
                                    </div>
                                </div>
                                <hr style="width:100%" , size="4" , color=white>
                            </div>
                        </div>
                        @endforeach
                </div>
    </div>
</body>