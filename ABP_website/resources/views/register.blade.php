@extends('layout')
@section('container')
<html lang="en">

<head>
    <title>Register</title>
    <link href="{{asset('css/webstyle.css')}}" rel="stylesheet">
    <style>
        p {
            color: white
        }

        /* .row{
                margin-top: 50px;
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

                <form action="" method="POST">
                    <div class="form-group">
                        <font size="4" color="white">Name</font> <br>
                        <input class="form-control" type="text" name="name" placeholder="name" />
                    </div>

                    <div class="form-group">
                        <font size="4" color="white">Username</font> <br>
                        <input class="form-control" type="text" name="username" placeholder="Username" />
                    </div>

                    <div class="form-group">
                        <font size="4" color="white">Email</font> <br>
                        <input class="form-control" type="text" name="email" placeholder="email" />
                    </div>

                    <div class="form-group">
                        <font size="4" color="white">Password</font> <br>
                        <input class="form-control" type="password" name="password" placeholder="Password" />
                    </div>

                    <div class="form-group">
                        <font size="4" color="white">Confirm</font> <br>
                        <input class="form-control" type="password" name="confirm" placeholder="confirm" />
                    </div>

                    <input type="submit" class="btn btn-success btn-block" name="register" value="register" />

                    <p>sudah punya akun? <a href="login.blade.php">
                            <font color="gold">Login <font>
                        </a></p>

            </div>
            </form>
        </div>
    </div>

</body>

</html>
@endsection