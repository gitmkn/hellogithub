<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="../control.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%> 
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session"/>
<!--
	作者：马康宁
	时间：2017-12-23
	描述：新闻资讯发布与撤回
-->
<%

String cs=request.getParameter("cs");
String zt=request.getParameter("zt");
if(cs==null)cs="0";
if(zt.equals("1")){
zt="0";
}else{
zt="1";
}
String name = "发布了一个友情链接";
int id=Integer.parseInt(cs);
String sql="update link set state="+zt+" where id="+id;
boolean x1=mkn.executeUpdate(sql,name);

response.sendRedirect("news_1.jsp");



mkn.closeConnection(); 
%>
