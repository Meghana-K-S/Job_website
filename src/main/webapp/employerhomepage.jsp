<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="resource/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resource/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="resource/css/loginemp.css">
  <script src="resource/js/homepage.js"></script>
<meta charset="ISO-8859-1">
<style>
body {
background-image: url(img/hdr1.jpg);
-moz-background-size: cover;
-webkit-background-size: cover;
background-size: cover;
background-position: top center !important;
background-repeat: no-repeat !important;
background-attachment: fixed;
}
</style>
</head>
<body>
	<div class="header" style="background-color: black">
		<a href="#default" class="logo" style="color: white">CompanyLogo</a>
		<div class="header-right">
			<a href="#default" class="logo" style="color: white">Profile</a> <a
				href="index.jsp" class="logo" style="color: white">logout</a>
		</div>
	</div>

	<div>
		<div class="col-md-5"
			style="float: left; margin-top: 2em; background-color: white; margin-bottom: 2em; margin-left: 2em; margin-right: 2em">
			<form method="get" action="jobposting.jsp">
				<div class="imgcontainer">
					<h1 class="text-center">Post Jobs</h1>
					<img src="img/post.png" alt="Avatar" class="avatar">
				</div>

				<div class="container">
					<p>let us help you send your job offers to our vast network of
						users, where our users will be provided with your information and
						we will bring the right candidates to you, we will make sure that
						mutual growth of both parties can take place.</p>
					<button type="submit" style="border-radius: 100px; width: 10em;">Post
						Jobs</button>
				</div>
			</form>
		</div>
	</div>
	<div>
		<div class="col-md-5"
			style="float: right; margin-top: 2em; background-color: white; margin-bottom: 2em; margin-left: 2em; margin-right: 2em">
			<form method="post" action="searchServlet">
				<div class="imgcontainer">
					<h1 class="text-center">Search Candidates</h1>
					<img src="img/searchcandidates.jpeg" alt="Avatar" class="avatar">
				</div>

				<div class="container"><br>
					<p>search for perfect candidates based on your requirements and
						select the best from the large collections of candidates we
						provide.</p>
		<div class="container" align="left">
			<div class="row">
				<div id="custom-search-input">
					<div class="input-group col-md-15">
						<input type="text" class="  search-query form-control" name="keytext"
							id="keytext" placeholder="Search" style="font-size: 25px" />
						<!--   <button class="btn btn-info" type="button" style="width:5em;height:3.5em;font-size:10px;">
                                        <span class=" glyphicon glyphicon-search"></span>&nbsp;&nbsp;
                                    </button>-->
                                    <button type="submit" style="border-radius: 100px; width: 10em;">Search</button>
			
					</div>
				</div>
			</div>
						</div>
				</div>
			</form>
		</div>
	</div>

	<div class="container">
		<div class="col-md-20"
			style="background-color: white; position: relative; margin-top: 60%; height: 10%">
			<form>
				<div class="imgcontainer">
					<h1 class="text-center">random space</h1>
				</div>

				<div class="container">
					<p>let us help you send your job offers to our vast network of
						users, where our users will be provided with your information and
						we will bring the right candidates to you, we will make sure that
						mutual growth of both parties can take place.</p>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
