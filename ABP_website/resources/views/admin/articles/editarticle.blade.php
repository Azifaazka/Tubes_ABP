@extends('layoutadmin')
@section('container')
<div class="row py-5"></div>
<section id="crud" class="py-5">
    <div class="container">
        <div class="w-4/5 m-auto text-center">
            <div class="py-15 border-b border-gray-200">
                <a style="font-size:50px;font-family: 'Lora';color: white;"> Update </a>
                <a style="font-size:50px;font-family: 'Lora';color: #FFAD57;"> Article </a>
            </div>
        </div>
        <div class="m-auto">
            <form action="/articlepage/{{ $post->slug }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <font size="4" color="white">Title</font> <br>
                <input type="text" name="title" value="{{ $post->title }}" class="form-control">
                <br>
                <font size="4" color="white">Author</font> <br>
                <input type="text" name="author" value="{{ $post->author }}" class="form-control">
                <br>
                <font size="4" color="white">Description</font> <br>
                <textarea name="description" placeholder="Description..." class="form-control">{{ $post->description }}</textarea>
                <br>
                <div class="ccfield-prepend" style="margin-left:45%;">
                    <input style="background-color:#0A6C62" class="btn btn-info px-5 " type="submit" value="Submit">
                </div>
            </form>
        </div>
    </div>
</section>
</div>

@endsection