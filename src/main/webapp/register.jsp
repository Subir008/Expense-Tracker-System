<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>

<%@include file="assets/css/css.jsp"%>

<link href="assets/css/style.css" rel="stylesheet">

</head>
<body>

	<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
		xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
		width="100%" height="100%" viewBox="0 0 1600 900"
		preserveAspectRatio="xMidYMax slice">
    <defs>
      <linearGradient id="bg">
        <stop offset="0%" style="stop-color:rgba(130, 158, 249, 0.06)"></stop>
        <stop offset="50%" style="stop-color:rgba(76, 190, 255, 0.6)"></stop>
        <stop offset="100%" style="stop-color:rgba(115, 209, 72, 0.2)"></stop>
      </linearGradient>
      <path id="wave" fill="url(#bg)"
			d="M-363.852,502.589c0,0,236.988-41.997,505.475,0
	s371.981,38.998,575.971,0s293.985-39.278,505.474,5.859s493.475,48.368,716.963-4.995v560.106H-363.852V502.589z" />
    </defs>
    <g>
      <use xlink:href='#wave' opacity=".3">
        <animateTransform attributeName="transform" attributeType="XML"
			type="translate" dur="10s" calcMode="spline"
			values="270 230; -334 180; 270 230" keyTimes="0; .5; 1"
			keySplines="0.42, 0, 0.58, 1.0;0.42, 0, 0.58, 1.0"
			repeatCount="indefinite" />
      </use>
      <use xlink:href='#wave' opacity=".6">
        <animateTransform attributeName="transform" attributeType="XML"
			type="translate" dur="8s" calcMode="spline"
			values="-270 230;243 220;-270 230" keyTimes="0; .6; 1"
			keySplines="0.42, 0, 0.58, 1.0;0.42, 0, 0.58, 1.0"
			repeatCount="indefinite" />
      </use>
      <use xlink:href='#wave' opacty=".9">
        <animateTransform attributeName="transform" attributeType="XML"
			type="translate" dur="6s" calcMode="spline"
			values="0 230;-140 200;0 230" keyTimes="0; .4; 1"
			keySplines="0.42, 0, 0.58, 1.0;0.42, 0, 0.58, 1.0"
			repeatCount="indefinite" />
      </use>
    </g>
  </svg>

	<!-- Modal of Regiser Successful -->
	<a:if test="${not empty Success }">
		<div class="modal fade" id="myModal" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">

					<div class="modal-body">
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
						<br>
						<h3 class="text-success">${Success}</h3>
					</div>

				</div>
			</div>
		</div>
		<a:remove var="Success" />
	</a:if>

	<!-- Modal of Regiser Failure -->
	<a:if test="${not empty Failed }">
		<div class="modal fade" id="myModal" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">

					<div class="modal-body">
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
						<br>
						<h3 class="text-danger">${Failed}</h3>
					</div>

				</div>
			</div>
		</div>
		<a:remove var="Failed" />
	</a:if>

	<!-- Modal of Password Mismatched -->
	<a:if test="${not empty Password }">
		<div class="modal fade" id="myModal" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">

					<div class="modal-body">
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
						<br>
						<h3 class="text-warning">${Password}</h3>
					</div>

				</div>
			</div>
		</div>
		<a:remove var="Password" />
	</a:if>

	<!-- Register Section -->
	<div class="register-section  ml-2 mr-2">
		<div class="container">
			<div class="inner-container">
				<div class="row  paint-card">
					<div class="col-6 image-container">
						<img alt="" src="assets/image/image1.jpg">
					</div>
					<div class="col-lg-6 col-sm-12  p-5">

						<!-- Login Form -->
						<div class="styled-form">

							<form method="post" action="userRegister">
								<div class="form-group">
									<label>Full Name</label> <input type="text" name="fullname"
										value="" placeholder="Enter Your Name" required>
								</div>
								<br>
								<div class="form-group">
									<label>Contact Number</label> <input type="tel" name="contact"
										value="" placeholder="Enter Contact Number" required>
								</div>

								<br>

								<div class="form-group">
									<label>New Password</label> <input type="password"
										name="new_password" value="" placeholder="Create password"
										required>
								</div>
								<br>
								<div class="form-group">
									<label>Confirm Password</label> <input type="password"
										name="confirm_password" value="" placeholder="Create password"
										required>
								</div>
								<br> <br>
								<div class="form-group ">
									<button
										class="theme-btn btn-style-one d-flex justify-content-center col-12">
										<span class="text-one">Login here</span>

									</button>
								</div>
							</form>
							<div class="anchor">
								<a href="index.jsp">Back To Home</a>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>
	<!-- End Register Section -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<%@include file="assets/js/js-file.jsp"%>
	<script type="text/javascript">
		var myModal = document.getElementById('myModal')

		$(document).ready(function() {
			$(myModal).modal('show');
		});
	</script>

</body>
</html>