<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../control.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%> 
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session"/>
<!--
	作者：马康宁
	时间：2017-12-23
	描述：新闻资讯删除
-->

<%
String cs=request.getParameter("cs");
if(cs==null)cs="0";
int id=Integer.parseInt(cs);
String name ="删除一个友情链接";
String sql="delete from link where id="+id;
boolean x1=mkn.executeUpdate(sql,name);

response.sendRedirect("news_1.jsp");


%>
<%mkn.closeConnection(); %>