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
String cs1=request.getParameter("cs1");
if(cs1==null)cs1="0";
int tp=Integer.parseInt(cs1);
out.print(cs1);
String name=(String)session.getAttribute("name")+"执行了联盟及新闻删除";
if(name==null)name="非法操作";
String sql="delete from dynamic where fatherid="+id;
boolean x=mkn.executeUpdate(sql,name);

String sql1="delete from member where id="+id;
boolean x1=mkn.executeUpdate(sql1,name);
if(tp==1){
response.sendRedirect("untiy_table.jsp");
}else{
response.sendRedirect("untiy_intro.jsp");
}
%>
<%mkn.closeConnection();%>