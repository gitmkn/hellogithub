<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="head.jsp"%>
<%@ include file="control.jsp"%>

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
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="css/admin.css" rel="stylesheet">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<!-- Page Specific CSS -->
<link rel="stylesheet" href="css/morris-0.4.3.min.css">
<!-- JavaScript -->
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/raphael-min.js"></script>
<script src="js/morris-0.4.3.min.js"></script>

</head>

<body>

	<!--表格-->
	<div id="page-wrapper">
		<div class="col-lg-12">
			<div class="header">
				<h1 class="page-header">
					<i class="fa fa-user-secret"></i>&nbsp;统计管理<small>&nbsp;&nbsp;&nbsp;新闻统计管理</small>
				</h1>
			</div>
		
				
				<div class="panel-body">
					
						<div class="row">
          <div class="col-lg-3">
            <div class="panel panel-info">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-comments fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                  <%
				String sql1 = "select count(id) from dynamic where state=1 and type=1 or type=2 or type=3";
				ResultSet rs1 = mkn.executeQuery(sql1);
				rs1.last();
				String t1 = rs1.getString(1);
				 %>
                    <p class="announcement-heading"><%=t1%></p>
                    <p class="announcement-text">首页新闻</p>
                  </div>
                </div>
              </div>
              <a href="#">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      View Mentions
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-check fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                  <%
				String sql2 = "select count(id) from dynamic where state=1 and type=3";
				ResultSet rs2 = mkn.executeQuery(sql2);
				rs2.last();
				String t2 = rs2.getString(1);
				 %>
                    <p class="announcement-heading"><%=t2%></p>
                    <p class="announcement-text">通知公告</p>
                  </div>
                </div>
              </div>
              <a href="#">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Complete Tasks
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-tasks fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                  <%
				String sql3 = "select count(id) from dynamic where state=1 and type=16";
				ResultSet rs3 = mkn.executeQuery(sql3);
				rs3.last();
				String t3 = rs3.getString(1);
				 %>
                    <p class="announcement-heading"><%=t3%></p>
                    <p class="announcement-text">联盟新闻</p>
                  </div>
                </div>
              </div>
              <a href="#">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Fix Issues
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="panel panel-success">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-comments fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                  <%
				String sql4 = "select count(id) from link where state=1";
				ResultSet rs4 = mkn.executeQuery(sql4);
				rs4.last();
				String t4 = rs4.getString(1);
				 %>
                    <p class="announcement-heading"><%=t4%></p>
                    <p class="announcement-text">友情链接</p>
                  </div>
                </div>
              </div>
              <a href="#">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Complete Orders
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
        </div><!-- /.row -->
					</div>
					<div class="panel-body">
					
						<div class="row">
          
          <div class="col-lg-3">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-tasks fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                  <%
				String sql5 = "select count(id) from dynamic where state=1 and type=11 or type=12 or type=13";
				ResultSet rs5 = mkn.executeQuery(sql5);
				rs5.last();
				String t5 = rs5.getString(1);
				 %>
                    <p class="announcement-heading"><%=t5%></p>
                    <p class="announcement-text">校企合作新闻</p>
                  </div>
                </div>
              </div>
              <a href="#">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Fix Issues
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="panel panel-success">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-comments fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                  <%
				String sql6 = "select count(id) from dynamic where state=1 and type=8 or type=9 or type=10";
				ResultSet rs6 = mkn.executeQuery(sql6);
				rs6.last();
				String t6 = rs6.getString(1);
				 %>
                    <p class="announcement-heading"><%=t6%></p>
                    <p class="announcement-text">校校合作新闻</p>
                  </div>
                </div>
              </div>
              <a href="#">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Complete Orders
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="panel panel-info">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-comments fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                  <%
				String sql7 = "select count(id) from dynamic where state=1 and type=5 or type=6 or type=7";
				ResultSet rs7 = mkn.executeQuery(sql7);
				rs7.last();
				String t7 = rs7.getString(1);
				 %>
                    <p class="announcement-heading"><%=t7%></p>
                    <p class="announcement-text">校地合作新闻</p>
                  </div>
                </div>
              </div>
              <a href="#">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      View Mentions
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
          
          <div class="col-lg-3">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-check fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                  <%
				String sql8 = "select count(id) from dynamic where state=1 and type=15";
				ResultSet rs8 = mkn.executeQuery(sql8);
				rs8.last();
				String t8 = rs8.getString(1);
				 %>
                    <p class="announcement-heading"><%=t8%></p>
                    <p class="announcement-text">研究所个数</p>
                  </div>
                </div>
              </div>
              <a href="#">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Complete Tasks
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
        </div><!-- /.row -->
					</div>
					<div class="panel-body" align=center>
						辽东学院-信息工程学院-信息管理与信息系统-无名团队开发
					</div>
				</div>

			
		
	</div>
	<!-- /.row -->
	</div>
	<!-- /#page-wrapper -->
<script src="js/flot/chart-data-flot.js"></script>
<script src="js/flot/jquery.flot.js"></script>
	<script src="js/flot/jquery.flot.tooltip.min.js"></script>
	<script src="js/flot/jquery.flot.resize.js"></script>
	<script src="js/flot/jquery.flot.pie.js"></script>
	</div>
	<!-- /#wrapper -->


</body>
</html>
