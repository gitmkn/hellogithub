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
String cs2=request.getParameter("cs2");
if(cs2==null)cs2="0";
int type=Integer.parseInt(cs2);
String cs=request.getParameter("cs");
String zt=request.getParameter("zt");
if(cs==null)cs="0";
if(zt.equals("1")){
zt="0";
}else{
zt="1";
}
int id=Integer.parseInt(cs);
String name=(String)session.getAttribute("name")+"执行了新闻资讯"+zt;
if(name==null)name="非法操作";
if(id==1){
String sql="update dynamic set state=1 where id="+id;
boolean x1=mkn.executeUpdate(sql,name);
}else{
String sql="update dynamic set state="+zt+" where id="+id;
boolean x1=mkn.executeUpdate(sql,name);
}
if(type==1){
response.sendRedirect("news_1.jsp");
}
if(type==2){
response.sendRedirect("news_2.jsp");
}
if(type==3){
response.sendRedirect("news_3.jsp");
}
if(type==4){
response.sendRedirect("news_4.jsp");
}


%>
