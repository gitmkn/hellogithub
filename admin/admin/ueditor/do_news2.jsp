<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%> 	
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session"/>
<%

String news = new String(request.getParameter("editorValue").getBytes("iso-8859-1"),"utf-8");
String name=(String)session.getAttribute("name")+"执行了简介增加";
if(name==null)name="非法操作";
String sql="insert into intro (content,type,fatherID)values('"+news+"','"+session.getAttribute("cs")+"','"+session.getAttribute("cs2")+"')";
boolean x1=mkn.executeUpdate(sql,name);
if(x1){
%>
<script>
	alert("上传成功");
	window.document.location.href="<%=request.getContextPath()%><%=session.getAttribute("cs3")%>?cs=<%=session.getAttribute("cs2")%>";
</script>

<%
	}
	mkn.closeConnection();
%>