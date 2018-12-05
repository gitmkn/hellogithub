<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../head.jsp"%>
<%@ include file="../control.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%>
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session" />

<!DOCTYPE html>
<!--
	作者：马康宁
	时间：2017-12-23
	描述：首页新闻资讯管理
-->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>辽东学院校企联盟官网后台</title>

<!-- Bootstrap core CSS -->
<link href="../css/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="../css/admin.css" rel="stylesheet">
<link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css">
<!-- Page Specific CSS -->
<link rel="stylesheet" href="../css/morris-0.4.3.min.css">
<!-- JavaScript -->
<script src="../js/jquery-1.10.2.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/raphael-min.js"></script>
<script src="../js/morris-0.4.3.min.js"></script>

</head>

<body>

	<!--表格-->
	<div id="page-wrapper">
		<form class="form" action="link_u.jsp">
		<div class="col-lg-12">
			<div class="header">
				<h1 class="page-header">
					<i class="fa fa-user-secret"></i>&nbsp;联系我们管理<small>&nbsp;&nbsp;&nbsp;联系管理</small>
				</h1>
			</div>
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						当前位置：<a href="link.jsp">联系我们管理</a>&nbsp;>>>&nbsp;<a href="link.jsp">联系管理</a>
					</h3>
				</div>
				<%
				String sql = "select * from contact";
				ResultSet rs1 = mkn.executeQuery(sql);
				rs1.last();
				String t1 = rs1.getString(2);
				String t2 = rs1.getString(3);
				String t3 = rs1.getString(4);
				String t4 = rs1.getString(5);
				String t5 = rs1.getString(6);
				int t6 = rs1.getInt(7);
				 %>
				<div class="panel-body">
					<div class="table-responsive">
						<table style="border:none;">
							<tbody>
								<tr >
									<td style="width:15%; text-align:center;"><h3>标题：</h3></td>
									<td><input class="form-control" name=t1 size=150 value="<%=t1%>"/></td>
								</tr>
								<tr>
									<td style="width:15%; text-align:center;"><h3>地址：</h3></td>
									<td><input class="form-control" name=t2 size=150 value="<%=t2%>"/></td>
								</tr>
								<tr>
									<td style="width:15%; text-align:center;"><h3>联系电话：</h3></td>
									<td><input class="form-control" name=t3 size=150 value="<%=t3%>"/></td>
								</tr>
								<tr>
									<td style="width:15%; text-align:center;"><h3>邮箱：</h3></td>
									<td><input class="form-control" name=t4 size=150 value="<%=t4%>"/></td>
								</tr>
								<tr>
									<td style="width:15%; text-align:center;"><h3>邮编：</h3></td>
									<td><input class="form-control" name=t5 size=150 value="<%=t5%>"/></td>
								</tr>
							</tbody>
						</table>

					</div>
				</div>
			</div>
			<div align=center>
			<input class="btn btn-primary" type="submit" value="修改" />
			</div>
			</form>
		</div>
	</div>



</body>
</html>
