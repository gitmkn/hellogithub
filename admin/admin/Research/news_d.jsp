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
String name=(String)session.getAttribute("name")+"执行了删除研究所及简介";
if(name==null)name="非法操作";
String sql1="delete from intro where fatherid="+id;
boolean x2=mkn.executeUpdate(sql1,name);
String sql="delete from member where id="+id;
boolean x1=mkn.executeUpdate(sql,name);


response.sendRedirect("research_table.jsp");
%>
<%mkn.closeConnection();%>