<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../head.jsp"%>
<%@ include file="../control.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%>
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session" />

<!--
	作者：马康宁
	时间：2017-12-23
	描述：新闻资讯详情页
-->
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "" "">
<HTML lang="en">
<HEAD>
<META content="IE=11.0000" http-equiv="X-UA-Compatible">
<head>

<META name="GENERATOR" content="MSHTML 11.00.10570.1001">
</HEAD>

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


	<%
		String sql = "select * from intro where type=2";
		ResultSet rs1 = mkn.executeQuery(sql);
		rs1.last();
		String id = rs1.getString(1);
		String content = rs1.getString(2);




	%>
	<div id="page-wrapper">
		<div class="col-lg-12">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						当前位置：<a href="research_intro.jsp">应用技术研究管理</a>&nbsp;>>>&nbsp;简介
						<a href="<%=request.getContextPath()%>/admin/ueditor/bjk3.jsp?cs=<%=id%>&cs2=/admin/Research/research_intro.jsp" style="float:right;">修改</a>
					</h3>
					
				</div>
				<div class="panel-body">
					<div class="table-responsive">

						<div class="m">
							<div class="minfo">
								<DIV class="container"
									style="word-wrap: break-word;overflow :hidden;background: #FFFFFF;margin-left: 15px;margin-right: 15px;height: auto;width: auto;">
									<%=content%>
								</DIV>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.row -->

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

<%mkn.closeConnection();%>
</body>
</html>