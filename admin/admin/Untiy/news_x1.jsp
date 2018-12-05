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
		String id = request.getParameter("cs");
		String sql = "select title,content,date(createtime),type,pageview from dynamic where id=" + id;
		ResultSet rs1 = mkn.executeQuery(sql);
		rs1.next();
		String sj = rs1.getString(3);
		String title = rs1.getString(1);
		String nr = rs1.getString(2);
		int type = rs1.getInt(4);
		int pageview = rs1.getInt(5);
		String fid=request.getParameter("cs1");
		if(fid==null)fid="";
		String address = "news_1.jsp?cs=id";

		
	%>
	<div id="page-wrapper">
		<div class="col-lg-12">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						当前位置：<a href="untiy_intro.jsp">组建与参与联盟管理</a>&nbsp;>>>&nbsp;<a href="untiy_intro.jsp">组建联盟管理</a>&nbsp;>>>&nbsp;<a href="news_2.jsp">联盟管理</a>&nbsp;>>>&nbsp;<%=title%>
						<a href="news_2.jsp?cs=<%=type%>&cs1=<%=fid%>" style="float:right;">列表</a>
					</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">

						<div class="m">


							<div class="minfo">
								<h1 class="ititle" style="text-align:center;"><%=title%></h1>

								<h5 class="ioth" style="text-align:center;">
									<%=sj%>
									&nbsp;&nbsp; <span>浏览：</span><%=pageview%>
								</h5>
								<HR>
								<DIV class="container"
									style="word-wrap: break-word;overflow :hidden;background: #FFFFFF;margin-left: 15px;margin-right: 15px;height: auto;width: auto;">
									<%=nr%>
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
