<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<%@include file="../assets/css/css.jsp"%>

<link href="../assets/css/style.css" rel="stylesheet">

</head>
<body>
	<h1>Dashboard</h1>
	
		<!-- Modal of login Successful -->
	<a:if test="${not empty Login }">
		<div class="modal fade" id="myModal" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">

					<div class="modal-body">
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
						<br>
						<h3 class="text-success">${Login}</h3>
					</div>

				</div>
			</div>
		</div>
		<a:remove var="Login" />
	</a:if>
	
	
	
	
	
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<%@include file="../assets/js/js-file.jsp"%>
	<script type="text/javascript">
		var myModal = document.getElementById('myModal')

		$(document).ready(function() {
			$(myModal).modal('show');
		});
	</script>
	
</body>
</html>