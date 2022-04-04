@extends('layout')
@section('container')
<html lang="en">

<head>
    <title>Login</title>
    <link href="{{asset('css/webstyle.css')}}" rel="stylesheet">
    <style>
        p {
            color: white
        }

        /* .row{
                margin-top: 150px;
                margin-left: 100px
            } */
        .background-img {
            position: absolute;
            right: 10px;
            bottom: 10px
        }

        .body {
            background: url("{{asset('images/bgloginnn.png')}}");
            -webkit-background-size: cover;
            -moz-background-size: cover;
            background-size: cover;
            -o-background-size: cover;
        }
    </style>
</head>

<body class="body">
    <div class="container mt-5">
        <div class="row py-5">
            <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1">
                <br><br>

                <form action="" method="POST">
                    <div class="form-group">
                        <font size="5" color="white">Username</font> <br>
                        <input class="form-control" type="text" name="username" placeholder="Username atau email" />
                    </div>
                    <br>
                    <div class="form-group">
                        <font size="5" color="white">Password</font> <br>
                        <input class="form-control" type="password" name="password" placeholder="Password" />
                    </div>
                    <br>
                    <input type="submit" class="btn btn-success btn-block" name="login" value="Login" />
                    <br>
                    <p>tidak punya akun? <a href="register.blade.php">
                            <font color="gold">Register <font>
                        </a></p>

            </div>
            </form>
        </div>
    </div>

</body>

</html>
@endsection