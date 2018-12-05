<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../head.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%>
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>辽东学院校企联盟官网后台</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
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
<script type="text/javascript" charset="utf-8" src="ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8" src="lang/zh-cn/zh-cn.js"></script>

<style type="text/css">
#box1 {
	width: 100%;
}
</style>
</head>
<body>

<%
String tp=request.getParameter("cs");
if(tp==null)tp="";
session.setAttribute("cs",tp);

String fid=request.getParameter("cs2");
if(fid==null)fid="";
session.setAttribute("cs2",fid);

String dz=request.getParameter("cs3");
if(dz==null)dz="";
session.setAttribute("cs3",dz);


%>
 
 
    
	<div id="page-wrapper">
		<div class="col-lg-12">
			<div class="header">
				<h1 class="page-header">
					<i class="fa fa-user-secret"></i>&nbsp;首页管理<small>&nbsp;&nbsp;&nbsp;新闻咨询管理</small>
					<a class="btn btn-success" href="<%=request.getContextPath()%><%=dz%>?cs=<%=tp %>&cs1=<%=fid %>" style="float:right;">返回</a>
				</h1>
			</div>
			
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						当前位置：<a href="<%=request.getContextPath()%>/index.jsp">首页管理</a>&nbsp;>>>&nbsp;<a
							href="news1.jsp">新闻资讯管理</a>
					</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<div id="box1" align="center">
							<form action="do_news.jsp" name="upfile" method="post" id="registerForm">
							
								<div class="input-group">
									<span class="input-group-addon">标题：</span>
									<input type="text" class="form-control" style="width:100%;" name="title" placeholder="请填写标题"/>
								</div>
								
								<br> 
								
								<script id="editor" type="text/plain" style="width:100%;height:360px;"></script>
								
								<br> 
								
								<input type="submit" class="btn btn-success" value="提交">
								
							</form>
						</div>
						<script type="text/javascript">
							//实例化编辑器
							//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
							var ue = UE.getEditor('editor');
						</script>

					</div>
				</div>

			</div>

		</div>
	</div>

</body>
</html>
