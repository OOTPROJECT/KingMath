<%@ page language="java" contentType="text/html; charset=TIS-620"
	pageEncoding="TIS-620"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h1 class="page-header">�����Ť��</h1>
<table id="teacherTable" class="table">
	<thead>
		<tr>
			<th>����</th>
			<th>�������</th>
			<th>�������Ѿ��</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><a href="javascript:;" onClick="editTeacher();">���ͺ ���ͺ</a></td>
			<td>���ͺ ���ͺ</td>
			<td>081-123-4567</td>
		</tr>
	</tbody>
</table>
<script type="text/javascript">
	
	function editTeacher() {
		$("#ajaxContent").load("editTeacher.jsp");
	}
	
</script>