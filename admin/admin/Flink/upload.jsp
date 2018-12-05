<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../head.jsp"%>
<%@ include file="../control.jsp"%>


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
					<i class="fa fa-user-secret"></i>&nbsp;友情链接管理<small>&nbsp;&nbsp;&nbsp;链接管理</small>
				</h1>
			</div>
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						当前位置：<a href="news_1.jsp">友情链接管理</a>&nbsp;>>>&nbsp;<a href="news_1.jsp">链接管理</a>
						<a href="news_1.jsp" style="float:right;">返回</a>
					</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<form method="post" action="r_upload.jsp" enctype="multipart/form-data">
<input type="hidden" class="form-control" name="test" value="good">
<table width="0%" align="center">
<tr>
<td><div align="center">
<input type="file" class="form-control" name="file1" size="30">
</div></td>
</tr>
<tr>
<td><div align="center">
<p>注：此图片不能用中文命名！！！</p>
</div></td>
</tr>
</table>

					</div>
				</div>

			</div>
			<div align=center>
			<input class="btn btn-primary" type="submit" value="上传" />
			</div>
			</form>
			</div>
</form>
		</div>
	</div>
	<!-- /.row -->

	</div>
	<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

</body>
</html>