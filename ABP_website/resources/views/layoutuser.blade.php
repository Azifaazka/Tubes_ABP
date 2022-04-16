<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hi! Story</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="{{asset('css/jquery-ui.css')}}">
  <link href="{{asset('css/ jquery.fancybox.min.css')}}" rel="stylesheet">
  <link href="{{asset('css/aos.css')}}" rel="stylesheet">

  <link href="{{asset('css/style.css')}}" rel="stylesheet">
  <link href="{{asset('css/footer.css')}}" rel="stylesheet">

  <link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css" />

    <!-- with v4.1.0 Krajee SVG theme is used as default (and must be loaded as below) - include any of the other theme CSS files as mentioned below (and change the theme property of the plugin) -->
    <link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/themes/krajee-svg/theme.css" media="all" rel="stylesheet" type="text/css" />

    <!-- important mandatory libraries -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/js/star-rating.min.js" type="text/javascript"></script>
  @yield('css')

</head>


<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


  <!-- <div id="overlayer"></div>
  <div class="loader">
    <div class="spinner-border text-primary" role="status">
      <span class="sr-only">Loading...</span>
    </div>
  </div> -->


  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    <!-- Navbar -->
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">
      <div class="container">

        <div class="row align-items-center">

          <div class="col-6 col-xl-2">
            <a href="{{ url('/') }}">
              <img src="{{asset('images/logo.png')}}" alt="Steel" style="height:70px;width:100px;">
            </a>
          </div>

          <!-- <div class="col-12 col-md-10 d-none d-xl-block py-1" style="background-color: #0B3B36;">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu main-menu js-clone-nav mr-2 d-none d-lg-block">
                <li id="navBtn"><a href="{{ url('/') }}" class="nav-link"><b>Home</b></a></li>
                <li id="navBtn"><a href="{{ url('/article') }}" class="nav-link"><b>Article</b></a></li>
                <li id="navBtn"><a href="{{ url('/about') }}" class="nav-link"><b>About Us</b></a></li>
                <li id="navBtn"><a href="{{ url('/contact') }}" class="nav-link"><b>Contact Us</b></a></li>
                <li id="navBtn"><a href="{{ url('') }}" class="nav-link"><b>Logout</b></a></li>

              </ul>
            </nav>
          </div> -->


          <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3"></span></a></div>

        </div>
      </div>

    </header>

<!-- 
    @yield('container')

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"> </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <script src="{{asset('js/jquery-ui.js')}}"></script>
    <script src="{{asset('js/jquery.countdown.min.js')}}"></script>
    <script src="{{asset('js/aos.js')}}"></script>
    <script src="{{asset('js/main.js')}}"></script>

    @yield('js') -->

</body>

</html>