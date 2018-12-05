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
<link rel="stylesheet" href="../css/bootstrapValidator.min.css" />
<script type="text/javascript" src="../js/bootstrapValidator.min.js" ></script>

</head>

<body>

	<!--表格-->
	<div id="page-wrapper">
		<div class="col-lg-12">
			<div class="header">
				<h1 class="page-header">
					<i class="fa fa-user-secret"></i>&nbsp;应用技术研究管理<small>&nbsp;&nbsp;&nbsp;研究所管理</small>
                   
				</h1>
			</div>
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						当前位置：<a href="research_table.jsp">应用技术研究管理</a>&nbsp;>>>&nbsp;<a href="research_table.jsp">研究所</a>
					</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table
							class="table table-bordered table-hover table-striped tablesorter">
							<thead>
								<tr>
									<th>题目</th>
									<th>删除</th>
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
								String sql = "select * from member where type=2 order by id desc";
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
									
							%>
							<tbody>
								<tr>
									<td style="width:60%;vertical-align: middle;"><%=xm%></td>
									<td style="width:20%;vertical-align: middle;">
									<%
										String sql1 = "select * from intro where fatherID="+id;
										ResultSet rs = mkn.executeQuery(sql1);
										rs.next();
										int zj = 0;
										zj = rs.getRow();
										if(zj<1) {%>
										 <a href="<%=request.getContextPath()%>/admin/ueditor/bjk2.jsp?cs=3&cs2=<%=id%>&cs3=/admin/Research/news_x.jsp" class="btn btn-primary">增加</a>
									<%}else{%>
										<a class="btn btn-success" href="news_x.jsp?cs=<%=id%>">查看</a>
									<%}%>
										<a href="news_d.jsp?cs=<%=id%>" class="btn btn-danger">删除</a></td>
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
			<table style="width:100%;">
			<tbody>
			  <tr>
			  <td>
			  <form class="form" action="news_i.jsp" id="registerForm"> 
			  <div class="input-group" align=right style="width:40%;">
						<input type="text" class="form-control" name="name"/>
						<div class="input-group-btn" >
							<input class="btn btn-primary" type="submit" value="增加研究所">
						</div>
					</div>
				</form>
				<script>
				$(function() {
					$('#registerForm').bootstrapValidator({
							message: 'This value is not valid',
					        feedbackIcons: {
					            valid: 'glyphicon glyphicon-ok',
					            invalid: 'glyphicon glyphicon-remove'
					        },
			        fields: {
			            name: {
			                validators: {
			                    notEmpty: {
			                        message: '不能为空'
			                    }
			                }
			            }
			            }
			            })
			})
			</script>
			</td>
					<td><div align=right>
				<a class="btn btn-default" href="research_table.jsp?cs=<%=ys - 1%>">
					<span class="icon-angle-left"></span>上一页</a> <a
					href="research_table.jsp?cs=<%=ys%>"> <%
 	out.print(ys);
 %> </a> <a class="btn btn-default"
					href="research_table.jsp?cs=<%=ys + 1%>"> 下一页 <span
					class="icon-angle-right"></span> </a>
			</div></td>
			</tr>
			</tbody>
			</table>
			 
                     
			
		</div>
	</div>
	<!-- /.row -->
<%mkn.closeConnection();%>
	</div>
	<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->


</body>
</html>