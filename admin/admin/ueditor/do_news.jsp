<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%> 	
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session"/>
<%


String bt=request.getParameter("title");
if(bt==null)bt="";
bt=new String(bt.getBytes("iso-8859-1"),"utf-8");

String news = new String(request.getParameter("editorValue").getBytes("iso-8859-1"),"utf-8");
String name=(String)session.getAttribute("name")+"执行了新闻添加";
if(name==null)name="非法操作";
String sql="insert into dynamic (title,content,type,fatherID,user)values('"+bt+"','"+news+"','"+session.getAttribute("cs")+"','"+session.getAttribute("cs2")+"','发布人："+session.getAttribute("name")+"')";
boolean x1=mkn.executeUpdate(sql,name);
if(x1){
%>
<script>
	alert("上传成功");
	window.self.location="<%=request.getContextPath()%><%=session.getAttribute("cs3")%>?cs=<%=session.getAttribute("cs")%>&cs1=<%=session.getAttribute("cs2")%>";
	
</script>

<%
	}
	mkn.closeConnection();
%>