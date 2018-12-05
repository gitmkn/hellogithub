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
String cs2=request.getParameter("cs2");
if(cs2==null)cs="0";
int type=Integer.parseInt(cs2);
String name=(String)session.getAttribute("name")+"执行了校地合作删除";
if(name==null)name="非法操作";
String sql="delete from dynamic where id="+id;
boolean x1=mkn.executeUpdate(sql,name);
if(type==5){
response.sendRedirect("news_1.jsp");
}
if(type==6){
response.sendRedirect("news_2.jsp");
}
if(type==7){
response.sendRedirect("news_3.jsp");
}

%>
<%mkn.closeConnection(); %>