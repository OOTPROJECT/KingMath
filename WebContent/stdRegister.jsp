<%@ page language="java" contentType="text/html; charset=TIS-620"
	pageEncoding="TIS-620"%>
<h1 class="page-header">การสมัครเรียน</h1>
<!-- Alert messages. -->
<div class="row">
	<div class="alert alert-success" role="alert" id="stdRegAlert" style="display:none"></div>
</div>
<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">ข้อมูลผู้สมัคร</h3>
	</div>
	<div class="panel-body">
		<form action="addStudent" method="POST" id="addStdForm">
			<div class="row">
				<div class="col-sm-8 col-md-8"></div>
				<div class="col-sm-2 col-md-2 text-right">รหัสนักเรียน:</div>
				<div class="col-sm-2 col-md-2 text-left">
					<input type="text" name="stdCode" class="form-control" placeholder="">
				</div>
			</div>
			</br>
			<div class="row">
				<div class="col-sm-1 col-md-1 text-right">วันที่:</div>
				<div class="col-sm-3 col-md-3">
				<div id="datepicker" class="input-group date" data-date-format="yyyy-mm-dd">
    				<input class="form-control" type="text" name="regDate" readonly />
    				<span class="input-group-addon">
    					<i class="glyphicon glyphicon-calendar"></i>
    				</span>
				</div>
				</div>
				
				<div class="col-sm-1 col-md-1 text-right">Login:</div>
				<div class="col-sm-3 col-md-3 text-left">
					<input type="text" name="stdUsername" class="form-control"
						placeholder="ไม่เกิน 8 ตัวต้องเป็น a-z, A-Z, 0-9">
				</div>
				<div class="col-sm-1 col-md-1 text-right">Password:</div>
				<div class="col-sm-3 col-md-3 text-left">
					<input type="text" name="stdPassword" class="form-control"
						placeholder="ไม่เกิน 6 ตัวต้องเป็น a-z, A-Z, 0-9">
				</div>
			</div>
			</br>
			<div class="row">
				<div class="col-sm-9 col-md-11"></div>
				<div class="col-sm-3 col-md-1 text-right">
					<button type="submit" class="btn btn-primary">บันทีก</button>
				</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	
	$(function () {
		$("#datepicker").datepicker({ 
	        autoclose: true, 
	        todayHighlight: true
	    }).datepicker('update', new Date());;
	});
	
	var form = $("#addStdForm");
	form.submit(function () { 
		$.ajax({
			type: form.attr('method'),
			url: form.attr('action'),
			data: form.serialize(),
			success: function (data) {
				var resp = data;
				$("#stdRegAlert").show();
				$('#stdRegAlert').html(resp);
			}
		});
 
		return false;
	});
	
</script>