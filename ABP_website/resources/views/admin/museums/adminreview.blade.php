@extends('layoutadmin')

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
        <font color="white">Newest Review <font>
                <hr style="width:100%" , size="4" , color=white>
                @foreach($komen as $komen)
                @if ($komen->id_museum==$id)
                <div class="container" style="width: 90%">
                    <div class="row mt-4">
                        <div style=" width : 120px; height  : 120px">
                            <img src="https://www.shareicon.net/data/2016/09/15/829466_man_512x512.png" class="img-fluid">
                        </div>
                        <div class="col">
                            <div class="" style="margin-left: 30px;">
                                <p style="font-size:20px;font-family: 'Lora';color: white;">
                                    <b>{{$komen->name}}</b>
                                </p>
                                <p style="font-size:17px;font-family: 'Lora';color: white;"><i class="fa fa-star" style="color: yellow;"></i> {{$komen->ratings}}</regular>
                                </p>
                                <p style="font-size:15px;font-family: 'Lora';color: white;">
                                    {{$komen->comment}}
                                </p>
                                <!-- /CRUDreview/{$id}/adminreview/delete/{{$komen->id}} -->
                                <a href="{{'/CRUDreview/'.$id.'/adminreview/delete/'.$komen->id}}" class="btn btn-danger" style="float:right">Delete</a>
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
