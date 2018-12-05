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
		<div class="col-lg-12">
			<div class="header">
				<h1 class="page-header">
					<i class="fa fa-user-secret"></i>&nbsp;友情链接管理<small>&nbsp;&nbsp;&nbsp;友情链接管理</small><a
						class="btn btn-success" href="upload.jsp" style="float:right;">增加链接</a>
				</h1>
			</div>
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						当前位置：<a href="news_1">友情链接管理</a>
					</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table
							class="table table-bordered table-hover table-striped tablesorter">
							<thead>
								<tr>
									<th>标目</th>
									<th>链接地址</th>
									<th>图片</th>
									<th>状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<%!int zys = 1;
								int gs = 7;
								int zgs = 1;
								int ys = 1;%>
							<%
								String yss = request.getParameter("cs");
								if (yss == null)
									yss = "1";
								ys = Integer.parseInt(yss);
								if (ys < 1)
									ys = 1;
								if (ys > zys)
									ys = zys;
							%>
							<%
								String xy = "";
								String sql = "select * from link order by id desc";
								ResultSet rs1 = mkn.executeQuery(sql);
								rs1.last();
								zgs = rs1.getRow();
								if(zgs<1)
								{%>
								<%}else{
								zys = (zgs % gs == 0) ? (zgs / gs) : (zgs / gs + 1);
								int x1 = 1;
								rs1.absolute((ys - 1) * gs + 1);//分页显示
								for (int i = 0; i < gs; i++) {
									if (rs1.isAfterLast())
										break;
									String id = rs1.getString(1);
									String xm = rs1.getString(2);
									String mm = rs1.getString(3);
									String img = rs1.getString(4);
									int zt = rs1.getInt(5);
									String zt1 = "";
									if (zt == 1) {
										zt1 = "已发布";
										xy = "撤回";
									} else {
										zt1 = "待发布";
										xy = "发布";
									}
							%>
							<tbody>
								<tr>
									<td style="vertical-align: middle;"><%=xm%></td>
									<td  style="width:200px;vertical-align: middle;"><%=mm%></td>
									<td  style="width:60px;vertical-align: middle;"><img src="../<%=img%>" style="width:40px;height:30px;" /></td>
									<td  style="width:60px;vertical-align: middle;"><%=zt1%></td>
									<td style="width:150px;vertical-align: middle;"><a class="btn btn-primary"
										href="news_u.jsp?cs=<%=id%>&zt=<%=zt%>"><%=xy%></a>
										<a href="news_d.jsp?cs=<%=id%>" class="btn btn-danger">删除</a>
									</td>
								</tr>
								<%
									x1++;
										rs1.next();
									}}
								%>
							</tbody>
						</table>

					</div>
				</div>

			</div>
			<h3 align=right>
				<a class="btn btn-default" href="news_1.jsp?cs=<%=ys - 1%>">
					<span class="icon-angle-left"></span>上一页</a> <a
					href="news_1.jsp?cs=<%=ys%>"> <%
 	out.print(ys);
 %> </a> <a class="btn btn-default"
					href="news_1.jsp?cs=<%=ys + 1%>"> 下一页 <span
					class="icon-angle-right"></span> </a>
			</h3>
		</div>
	</div>
	<!-- /.row -->

	</div>
	<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

<%mkn.closeConnection(); %>
</body>
</html>
