<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.fzn.mkn"%> 
<%@ page import="com.fzn.toolbean.MyTools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%> 
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session"/>
<HTML>
<BODY><Font size=1>
<jsp:useBean id="jx" class="com.fzn.mkn" scope="page">
<jsp:setProperty name="jx" property="*"/>
</jsp:useBean>
<%
String sql="select * from admin where name='"+MyTools.toChinese(jx.getName())+"' and password='"+jx.getPassword()+"'";
ResultSet rs1=mkn.executeQuery(sql); 


if(rs1.next()){//��֤��¼
rs1.last();
int id=rs1.getInt(1);

session.setAttribute("key","ok");
session.setAttribute("name",MyTools.toChinese(jx.getName()));
%><script>
 window.document.location.href="index1/news_1.jsp";
</script><%
}else{%>
<script>
 alert("密码或账号错误，请重新登录");
 window.document.location.href="login.jsp";
</script>
<%}
%>

