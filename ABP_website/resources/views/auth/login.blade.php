
@extends('layout')
@section('container')

<head>
    <title>Login</title>
    <link href="{{asset('css/webstyle.css')}}" rel="stylesheet">
    <style>
        label {
            color: white
        }

        .background-img {
            position: absolute;
            right: 10px;
            bottom: 10px
        }

        body {
            background: url("{{asset('images/bgloginnn.png')}}");
            -webkit-background-size: cover;
            -moz-background-size: cover;
            background-size: cover;
            -o-background-size: cover;
        }
    </style>
</head>

<body>
<section id="about" class="py-5">
    <div class="container">
        <div class="row py-5">
        <div class="col-lg-6">
                <br><br><br><br><br><br>
                        <form method="POST" action="{{ route('login') }}">
                            @csrf
                            <div class="form-group">
                                <label for="username" class="col-md-4 col-form-label text-md-end">{{ __('Username') }}</label><br>

                                <div class="col-md-10">
                                    <input id="username" type="username" class="form-control @error('username') is-invalid @enderror" name="username" value="{{ old('emaiusernamel') }}" required autocomplete="username" autofocus>
                                    @error('username')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label><br>

                                <div class="col-md-10">
                                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-6">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                        <label class="form-check-label" for="remember">
                                            {{ __('Remember Me') }}
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-8 offset-md-4">
                                    <button type="submit" class="btn btn-primary" style="background-color:#0A6C62">
                                        {{ __('Login') }}
                                    </button>
                                </div>
                            </div>
                        </form>
        </div>
        </div>
        
    </div>
</section>
<br><br><br>
</body>
@endsection
