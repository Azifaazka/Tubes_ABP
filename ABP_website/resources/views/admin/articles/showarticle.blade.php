@extends('layout')
@section('container')
<div class="row py-5"></div>
<section id="create" class="py-5">
  
  <div class="container">
    
  <div class="col">
    <a href="/article" style="font-size:20px;font-family: 'Lora';color: #FFAD57;" class="float-left">
      <u>Back To Article</u>
    </a>
  </div>
  <br>
  <hr style="width:100%" , size="4" , color=white>
        <center>
          <p style="font-size:50px;font-family: 'Lora';color: white;">{{ $post->title }}</p>
          <p style="font-size:20px;font-family: 'Lora';color: white;">
            {{ $post->author}}
          </p>
          <img src="{{ asset('images/'. $post->image) }}" alt="" width="500" height="300" align="center">
          <p style="font-size:20px;font-family: 'Lora';color: white;">
        {{ $post->description}}
      </p>
        </center>
      </div>
    </div>
  </div>
</section>
</div>
@endsection