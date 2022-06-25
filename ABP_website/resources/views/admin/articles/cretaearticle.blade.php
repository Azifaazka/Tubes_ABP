@extends('layoutadmin')
@section('container')
<div class="row py-5"></div>
<section id="create" class="py-5">
    <div class="container">
        <div class="w-4/5 m-auto text-left">
            <div class="py-15">
                <a style="font-size:50px;font-family: 'Lora';color: white;"> Create </a>
                <a style="font-size:50px;font-family: 'Lora';color: #FFAD57;"> Article </a>
            </div>
        </div>
        <div class="w-4/5 m-auto pt-20">
            <form action="{{ route('articlepage.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <font size="4" color="white">Title</font> <br>
                <input type="text" name="title" placeholder="Title..." class="form-control">
                <br>
                <font size="4" color="white">Author</font> <br>
                <input type="text" name="author" placeholder="author..." class="form-control">
                <br>
                <font size="4" color="white">Description</font> <br>
                <textarea name="description" placeholder="Description..." class="form-control"></textarea>
                <br>
                <font size="4" color="white">Link Image</font> <br>
                <textarea name="link_image" placeholder="Link image..." class="form-control"></textarea>
                <br>
                <font size="4" color="white">Image</font> <br>
                <div style="background-color:white ;border-radius:30px ">
                    <input type="file" name="image" class="hidden" style="margin-left:2%">
                </div>
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