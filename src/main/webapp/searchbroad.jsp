<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/loginemp.css">
<meta charset="ISO-8859-1">
</head>
<body style='background-image: url("img/misbg.jpg")';>
	<div class="header" style="background-color: black">
		<a href="#default" class="logo" style="color: white">CompanyLogo</a>
		<div class="header-right">
			<a style="color: white">Home</a> <a style="color: white">logout</a>
		</div>
	</div>



	<div class="row" style="position: relative; margin-left: 28%">
		<div class="col-md-15"
			style="margin-top: 2em; background-color: grey; margin-bottom: 2em; margin-top: 20%; border-radius: 25px; border: 2px solid #73AD21; padding: 20px;">
			<form id="search_form" name="searchForm" method="post"
				action="searchServlet">
				<div class="search-job text-center" id="box" style="margin-top: 2em">
					<div class="col-md-15" style="margin-right: 1em; margin-left: 1em">
						<!--  <input style="width: 14em;border-radius: 100px;" type="text" placeholder="Enter keyword" name="keyword" id="keyword" required> -->

						<select style="border-radius: 100px; width: 14em; height: 3em" name="qual" id="qual">
							<option value="">Select experience</option>
							<option value="12th">12th</option>
							<option value="diploma">diploma</option>
							<option value="graduate">BE/B.tech</option>
							<option value="postgraduate">post graduation</option>
							<option value>
						</select>  <select style="border-radius: 100px; width: 14em; height: 3em"
							name="job_title" id="job_title" required>
							<option value="">Select job title</option>
							<option value="architect">architect</option>
							<option value="coding">coding</option>
							<option value="java developer">java developer</option>
							<option value="teacher">teacher</option>
							<option value="doctor">doctor</option>
							<option value="system engineer">system engineer</option>
							<option value="IT services">T services</option>
							<option value="system engineer">system engineer</option>
							<option value="marketing ">marketing</option>
							<option value="human resources">human resources</option>
							<option value="sales research">sales research</option>
							<option value="developer">developer</option>
							<option value>
						</select>  <select input
							style="border-radius: 100px; width: 14em; height: 3em"
							name="stateslist" id="stateslist">
							<option value="">Select State</option>
							<option value="Andaman and Nicobar Islands">Andaman and
								Nicobar Islands</option>
							<option value="Andhra Pradesh">Andhra Pradesh</option>
							<option value="Arunachal Pradesh">Arunachal Pradesh</option>
							<option value="Assam">Assam</option>
							<option value="Bihar">Bihar</option>
							<option value="Chandigarh">Chandigarh</option>
							<option value="Chhattisgarh">Chhattisgarh</option>
							<option value="Dadra and Nagar Haveli">Dadra and Nagar
								Haveli</option>
							<option value="Daman and Diu">Daman and Diu</option>
							<option value="Delhi">Delhi</option>
							<option value="Goa">Goa</option>
							<option value="Gujarat">Gujarat</option>
							<option value="Haryana">Haryana</option>
							<option value="Himachal Pradesh">Himachal Pradesh</option>
							<option value="Jammu and Kashmir">Jammu and Kashmir</option>
							<option value="Jharkhand">Jharkhand</option>
							<option value="Karnataka">Karnataka</option>
							<option value="Kerala">Kerala</option>
							<option value="Lakshadweep">Lakshadweep</option>
							<option value="Madhya Pradesh">Madhya Pradesh</option>
							<option value="Maharashtra">Maharashtra</option>
							<option value="Manipur">Manipur</option>
							<option value="Meghalaya">Meghalaya</option>
							<option value="Mizoram">Mizoram</option>
							<option value="Nagaland">Nagaland</option>
							<option value="Orissa">Orissa</option>
							<option value="Pondicherry">Pondicherry</option>
							<option value="Punjab">Punjab</option>
							<option value="Rajasthan">Rajasthan</option>
							<option value="Sikkim">Sikkim</option>
							<option value="Tamil Nadu">Tamil Nadu</option>
							<option value="Tripura">Tripura</option>
							<option value="Uttaranchal">Uttaranchal</option>
							<option value="Uttar Pradesh">Uttar Pradesh</option>
							<option value="West Bengal">West Bengal</option>
						</select>
					</div>
					<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="submit" style="border-radius: 100px; width: 10em">Search</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>