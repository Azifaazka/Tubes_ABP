@extends('layoutadmin')
@section('container')
<div class="row py-5"></div>
<section id="crud" class="py-5">
    <div class="container">
        <div class="w-4/5 m-auto text-center">
            <div class="py-15 border-b border-gray-200">
                <a style="font-size:50px;font-family: 'Lora';color: white;"> CRUD </a>
                <a style="font-size:50px;font-family: 'Lora';color: #FFAD57;"> Article </a>
            </div>
        </div>
        @if (session()->has('success'))
            <div class="alert alert-success alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>  
                <a> {{ session()->get('success') }}</a> 
            </div>
        @endif
        @if (session()->has('warning'))
            <div class="alert alert-warning alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>  
                <a> {{ session()->get('warning') }}</a> 
            </div>
        @endif
        @if (session()->has('danger'))
            <div class="alert alert-danger alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>  
                <a> {{ session()->get('danger') }}</a> 
            </div>
        @endif
        <div class="pt-15 w-4/5 m-auto">
            <a href="{{ route('articlepage.create') }}" class="btn btn-success btn-block" style=" background-color:#0A6C62; color:white ">Create Article</a>
        </div>
        <hr size="4" width="100%" color="white">
        @foreach ($Post as $article)
        <div class="card mb-3">
            <div>
                <center>
                    <a style="font-size:40px;font-family: 'Lora';color: black;">{{ $article->title }}</a>
                    <p style="font-size:15px;font-family: 'Lora';color: black;">
                        {{ $article->author}}
                    </p>
                    <img src="{{ asset('images/'. $article->image) }}" width="500" height="300" align="center">
                </center>
                
                <p style="font-size:20px;font-family: 'Lora';color: black; margin-top:10px;" class="text-center">
                    {{ $article->description}}
                </p>

                <span class="float-right" style="margin-right: 15px; margin-bottom:15px">
                    <a href="/articlepage/{{ $article->slug }}/edit" class="btn btn-warning" >
                        Edit</a>
                </span>

                <span class="float-right" style="margin-right:10px;">
                    <form action="/articlepage/{{ $article->slug }}" method="POST">
                        @csrf
                        @method('delete')
                        <button class="btn btn-danger float-right" type="submit" >
                            Delete
                        </button>

                    </form>
                </span>
            </div>
        </div>
        <br>
        @endforeach
    </div>
    </div>
</section>
</div>

@endsection