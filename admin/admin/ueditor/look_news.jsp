<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%> 
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session"/>

<!DOCTYPE html>
<html>
<head>
<title>查看</title>
<meta http-equiv="Content-Type" content="text/html;charset=gb2312"/>
<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>

</head>

<body>
<% 
String sql = "select * from dynamic";
ResultSet rs = mkn.executeQuery(sql);
while(rs.next()){
String xm = rs.getString(3);

%>
		<%=xm%>
	<%
	}
	mkn.closeConnection();
	%>
			
</body>
</HTML>