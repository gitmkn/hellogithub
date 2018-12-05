<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%> 	
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session"/>
<%
String name = "修改了研究所简介";
String news = new String(request.getParameter("editorValue").getBytes("iso-8859-1"),"utf-8");

String sql="update intro set content ='"+news+"' where id="+session.getAttribute("cs");
boolean x1=mkn.executeUpdate(sql,name);
if(x1){
%>
<script>
	alert("修改成功");
	window.document.location.href="<%=request.getContextPath()%><%=session.getAttribute("cs2")%>?cs5=<%=session.getAttribute("cs5")%>";
</script>

<%
	}
	mkn.closeConnection();
%>