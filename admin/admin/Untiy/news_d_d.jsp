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
String fid=request.getParameter("cs2");
if(fid==null)fid="";
int id=Integer.parseInt(cs);
String name=(String)session.getAttribute("name")+"执行了联盟新闻删除";
if(name==null)name="非法操作";
String sql="delete from dynamic where id="+id;
boolean x1=mkn.executeUpdate(sql,name);
if(id==1){
response.sendRedirect("news_1.jsp?cs="+id);
}else{
response.sendRedirect("news_2.jsp?cs="+id);
}
%>
<%mkn.closeConnection();%>