<%@ page language="java" contentType="text/html; charset=TIS-620"
	pageEncoding="TIS-620"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>King Math</title>
		<link href="bootstrap-3.3.7/dist/css/bootstrap.css" type="text/css"
			rel="stylesheet">
		<link href="bootstrap-3.3.7/docs/examples/dashboard/dashboard.css"
			type="text/css" rel="stylesheet">
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
			type="text/css" rel="stylesheet">
		<link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css"
			type="text/css" rel="stylesheet">
		<link href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css"
			type="text/css" rel="stylesheet">
	</head>
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> 
					</button>
					<a class="navbar-brand" href="#">King Math</a>
				</div>
			</div>
		</nav>

		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-3 col-md-2 sidebar">
					<ul class="nav nav-sidebar">
						<li id="stdRegister" class="active">
							<a href="javaScript:;" onClick="stdRegister();"> 
								<i class="fa fa-child" aria-hidden="true">
									สมัครเรียน 
								</i>
							</a>
						</li>
						<li id="teacherReg">
							<a href="javaScript:;" onClick="tRegister();"> 
								<i class="fa fa-user" aria-hidden="true"> 
									สมัครครู 
								</i>
							</a>
						</li>
						<li id="mgtClass">
							<a href="javaScript:;" onClick="mgtClass();"> 
								<i class="fa fa-university" aria-hidden="true"> 
									จัดห้องเรียน 
								</i>
							</a>
						</li>
						<li id="saveTeaching">
							<a href="javaScript:;" onClick="recordTeaching();">
								<i class="fa fa-pencil-square-o" aria-hidden="true">
									บันทึกการสอน 
								</i>
							</a>
						</li>
						<li id="calHire">
							<a href="javaScript:;" onClick="calHire();">
								<i class="fa fa-calculator" aria-hidden="true">
									คำนวณค่าจ้างครู 
								</i>
							</a>
						</li>
						<li id="teacherInfo">
							<a href="javaScript:;" onClick="teacherInfo();">
								<i class="fa fa-id-card-o" aria-hidden="true">
									ข้อมูลครู 
								</i>
							</a>
						</li>
						<li id="stdInfo">
							<a href="javaScript:;" onClick="studentInfo();"> 
								<i class="fa fa-id-card-o" aria-hidden="true">
									ข้อมูลนักเรียน 
								</i>
							</a>
						</li>
					</ul>
				</div>
				
				<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"
					id="ajaxContent"></div>
			</div>
		</div>
	</body>
</html>

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.js">	
</script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js">
</script>
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js">
</script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#ajaxContent").load("stdRegister.jsp");
	});

	// Control navbar active state.
	$(".nav a").on("click", function() {
		$(".nav").find(".active").removeClass("active");
		$(this).parent().addClass("active");
	});

	// Load student register page.
	function stdRegister() {
		$("#ajaxContent").load("stdRegister.jsp");
	}
	
	// Load teacher register page.
	function tRegister() {
		$("#ajaxContent").load("tRegister.jsp");
	}
	
	// Load management class page.
	function mgtClass() {
		$("#ajaxContent").load("mgtClass.jsp");
	}
	
	// Load record teaching.
	function recordTeaching() {
		$("#ajaxContent").load("recordTeaching.jsp");
	}
	
	// Load calculate hire.
	function calHire() {
		$("#ajaxContent").load("calHire.jsp");
	}
	
	// Load student information page.
	function studentInfo() {
		$("#ajaxContent").load("studentInfo.jsp");
	}

	// Load teacher information page.
	function teacherInfo() {
		$("#ajaxContent").load("teacherInfo.jsp");
	}
</script>