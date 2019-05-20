<%@page import="com.mongodb.QueryBuilder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"
	import="org.bson.Document" import="com.mongodb.DBCollection"%>
<%@ page import="com.search.servlet.*"%>
<%@ page import="com.search.servlet.Keysearch"%>
<%@ page import="java.util.regex.Pattern"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>List.js with Multiple Filters, Search, and Pagination</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel='stylesheet' href="resource/css/bootstrap.min.css">
<link rel='stylesheet' href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="resource/css/firststyle.css">
<script src="resource/js/expandsearch.js"></script>
<link rel="stylesheet" type="text/css" href="resource/css/search.css">
  <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="resource/css/loginemp1.css">

  
</head>
<style>
.checked {
  color: orange;
}
</style>

<body>

<div class="header" style="background-color: black;">
    <a href="#default" class="logo" style="color: white">CompanyLogo</a>
      <div class="header-right" style="margin-top: 1em">
      <a style="color: white" href="employerhomepage.jsp">Home</a>
      <a style="color: white">Job Options</a>
      <a style="color: white" href="postjob.jsp">Post Jobs</a>
    </div>
</div>  
<div class="container col-md-5" style="float: right;margin-right:25%;margin-top: 3% ;">
  <div class="row">
    <div id="users" class="col-md-11">
      <div class="filter-group row">
        <div class="form-group col-xs-12 col-sm-12 col-md-8" >
          <input type="text" class="search form-control" placeholder="Search" style="width: 30em;margin-top: 2em">
        </div>
        
        <div class="form-group col-xs-12 col-sm-12">
          <button class="btn btn-danger" onclick="resetList();">Clear</button>
        </div>
      </div>
      <ul class="list">
				<%
				// retrieve your list from the request, with casting 
					ArrayList<Search> list = (ArrayList<Search>) request.getAttribute("list");

					//print the information about every category of the list
					for (Search category : list) {
			%>
				<li class="list--list-item">
				<div class="well well-lg" style="outline: 2px solid black">
				<h4 class="name" style="font-size: 22px; margin-left:5%;">
					Name:
					<%
					out.println(category.getName());
				%>
				</h4>
				<br>
				<p class="qual" style="font-size: 20px;; margin-left:5%;"  data-exp="<% category.getQualif(); %>">
					Qualification:
					<%
					out.println(category.getQualif());
				%>
				</p>
				<br>
				<p class="ex" style="font-size: 20px; margin-left:5%;">
					Experience:
					<%
					out.println(category.getExp());
				%>
				</p>
				<br>
				<p class="jobi" style="font-size: 20px; margin-left:5%;">
					Job Interest:
					<%
					out.println(category.getJobi());
				%>
				</p>
				<br>
				<p class="state" style="font-size: 20px; margin-left:5%;">
					State:
					<%
					out.println(category.getStat());%>
					<br>
					<br>
				<a href="img/IIWM.docx"  style="font-size: 15px; margin-left:25%;">
				<button type="button" class="btn btn-success">View Resume</button>	</a>
<button type="button" class="btn btn-info">Select</button><br><br><%
					}
				%>
				</p>
</div>
				<br>
				</li>
			</ul>
			<div class="no-result">No Results</div>
			<ul class="pagination"></ul>
		</div>
	</div>
</div>
<script src="//cdnjs.cloudflare.com/ajax/libs/lodash.js/2.4.1/lodash.min.js"></script>
  <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/list.js/1.5.0/list.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/list.pagination.js/0.1.1/list.pagination.js"></script>

  

    <script  src="resource/js/searchdemo.js"></script>

<div class="col-md-3"  style=" background-color: #353b48;height:200%;float: left;">
    <div id="users" class="col-xs-12">
        <div class="filter-group row" style="color: white">    
          <div class="form-group col-xs-12 col-sm-12 col-md-4" style="color: white">
            <p>Qualification</p>
            <div class="radio-inline">
              <label>
              <input class="filter-all" type="radio" value="all" name="exp" id="all" checked /> All
              </label>
            </div>
            <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="BE/B.tech" name="exp" id="BE/B.tech" /> Engineers
              </label>
            </div>
            <div class="radio-inline">
              <label>
              <input class="filter" type="radio" value="post graduation" name="exp" id="post graduation" /> Post Graduates
              </label>
            </div>
          </div>
          <div class="form-group col-xs-12 col-sm-12 col-md-4">
            <p>Rating</p>
            <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="Blvd" name="address" id="address-all" />&nbsp;&nbsp;<span class="fa fa-star checked"></span>
  <span class="fa fa-star checked"></span>
  <span class="fa fa-star checked"></span>
              </label>
            </div>
            <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="St" name="address" id="address-street" />&nbsp;&nbsp;<span class="fa fa-star checked"></span>
  <span class="fa fa-star checked"></span>
  <span class="fa fa-star"></span>
              </label>
            </div>
            <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="Dr" name="address" id="address-drive" />&nbsp;&nbsp;<span class="fa fa-star checked"></span>
  <span class="fa fa-star"></span>
  <span class="fa fa-star"></span>
              </label>
            </div>
          </div>
        </div>
  </div>


 
  <div class="col-md-17" onclick="myFunction1()" Try itonclick="myFunction1()" style="background-color: white;margin-left:0px;height: 3em;border-radius: 100px">
  <h6 style="margin-left: 35%;padding-top: 10px">  experience </h6>
  </div>
  <div id="myDIV2">
          <div id="showmehideme">
            <div class="filter-group row" style="color: white">    
          
  <div class="form-group col-xs-12 col-sm-12 col-md-4" style="color: white">
    <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="Blvd" name="address" id="address-all" /> >8years
              </label>
            </div>
              <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="Blvd" name="address" id="address-all" /> >5years
              </label>
            </div>
            <div class="radio-inline">
              <label>
              <input class="filter" type="radio" value="St" name="address" id="address-street"/> >3years
              </label>
            </div>
            <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="Dr" name="address" id="address-drive" /> fresher
              </label>
            </div>
          </div>   
               </div>
  </div>


  <script>
  function myFunction1() {
    var y = document.getElementById("myDIV2");
    if (y.style.display === "none") {
      y.style.display = "block";
    } else {
      y.style.display = "none";
    }
  }
  </script>







  <div class="col-md-17" onclick="myFunction4()" Try itonclick="myFunction4()" style="background-color: white;margin-left:0px;height: 3em;border-radius: 100px;margin-top: 2%">
  <h6 style="margin-left: 35%;padding-top: 10px;margin-top: 2%">  Job Type </h6>
  </div>
  <div id="myDIV4">
          <div id="showmehideme">
  <div class="form-group col-xs-12 col-sm-12 col-md-5" style="color: white">
              <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="Blvd" name="address" id="address-all" /> Internship
              </label>
            </div>
            <div class="radio-inline">
              <label>
                <input class="filter" type="radio" value="St" name="address" id="address-street" /> Full-time
              </label>
            </div>
           
          </div>        
  </div>


  <script>
  function myFunction4() {
    var x = document.getElementById("myDIV4");
    if (x.style.display === "none") {
      x.style.display = "block";
    } else {
      x.style.display = "none";
    }
  }
  </script>



</body>

</html>
