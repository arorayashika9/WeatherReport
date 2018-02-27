<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Weather Report</title>
<link href='https://fonts.googleapis.com/css?family=Rye' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Molle' rel='stylesheet'>
<style>
.navbar{
    font-family: 'Rye';
}
div{
font-family: 'Molle';
}
</style>
</head>
<body>
<nav class="navbar navbar-light bg-light">
  <h1 class="display-4">Weather 24*7</h1>
</nav>
<div class="jumbotron">
    <h2 class="text-center display-3">Get Current weather</h2>
</div>    
<div class="container">
    <div class="row">
        <h3 class="text-primary">Enter City name</h3>
        <span id="error"></span>
    </div>
        <div class="row form-group form-inline text-center">
         <form class="form-inline">
    <input class="form-control mr-sm-2" id="data" type="search" placeholder="search"name="search" aria-label="search" name="">
    <button class="btn btn-outline-success my-2 my-sm-0" id="submit" onclick="getData()" type="submit">Search</button>
  </form>
    </div>
    <div id="show"></div>
</div>
<p id="demo"></p>
<script type="text/javascript">
function getData(){
	var xmlHttp = new XMLHttpRequest();
	var word=document.getElementById("data").value;
	document.write(word);
	var url ="http://api.openweathermap.org/data/2.5/weather?q="+word+"&units=metric&appid=4f51cc3581658734467f957800c7625d";
	//xmlHttp.open("GET",url, true);
	//xmlHttp.send();
	xmlHttp.onreadystatechange = function() {
	    if(this.readyState == 4 && this.status == 200){
	        var myArr= JSON.parse(this.responseText);
	        var dataObj= JSON.stringify(myArr);
	        document.write(dataObj);
	        document.getElementById("demo").innerHTML = dataObj.id;
	       // document.getElementById("objData").innerHTML = show(dataObj);
	       
	    }
	    
	};
	xmlHttp.open("GET",url, true);
	xmlHttp.send();
	}
</script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>