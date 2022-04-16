<html>
@extends('layout')
<div style="margin-top: 130;"></div>


    <head>
        <title>Reviews</title>
    </head>
    
    <body> 
        <div class="container" style="margin-left:10%;">
        <a href="{{ url('/reviewpage') }}">
            <font color="#FFAD57"><u>Back</u><font>
        </a>
        <hr style="width:100%" , size="4" , color=white>
        
            <form action="{{ route('createreview.addreview') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <lab elstyle="color:white">Username</label></br>
            <input type="text" name="name" id="ReviewText" class="form-control" placeholder="Type Your Username..."></br>
            <label style="color:white">Make Your Own Reviews Here!..</label></br>
            <input type="text" name="reviews" id="ReviewText" class="form-control" placeholder="Type Your Reviews Here..."></br>

            <label for="input-4" class="control-label">Rate This</label>
		    <input name="rating" class="rating rating-loading" data-show-clear="false" data-show-caption="true">
            <div style="margin-top: 40;"></div>
            <button class="btn btn-success btn-block" style=" background-color:#0A6C62; color:white ">Add Review</button> <br>
            </div>
            </form>
    <script>
		$(document).ready(function(){
		    $('#input-3').rating({displayOnly: true, step: 0.5});
		    $('#input-5').rating({clearCaption: 'No stars yet'});
		    $('#input-8').rating({rtl: true, containerClass: 'is-star'});
		    $('#input-9').rating();
		});
	</script>
    </body>
</html>