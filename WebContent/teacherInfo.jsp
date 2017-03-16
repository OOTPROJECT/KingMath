<%@ page language="java" contentType="text/html; charset=TIS-620"
	pageEncoding="TIS-620"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h1 class="page-header">ข้อมูลครู</h1>
<table id="teacherTable" class="table">
	<thead>
		<tr>
			<th>ชื่อ</th>
			<th>ที่อยู่</th>
			<th>เบอร์โทรศัพท์</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><a href="javascript:;" onClick="editTeacher();">ทดสอบ ทดสอบ</a></td>
			<td>ทดสอบ ทดสอบ</td>
			<td>081-123-4567</td>
		</tr>
	</tbody>
</table>
<script type="text/javascript">
	
	function editTeacher() {
		$("#ajaxContent").load("editTeacher.jsp");
	}
	
</script>