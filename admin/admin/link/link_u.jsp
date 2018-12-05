<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../control.jsp"%>
<%@ page import="com.fzn.link"%> 
<%@ page import="com.fzn.toolbean.MyTools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%> 
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session"/>
<HTML>
<BODY><Font size=1>
<jsp:useBean id="jx" class="com.fzn.link" scope="page">
<jsp:setProperty name="jx" property="*"/>
</jsp:useBean>
<!--
	作者：马康宁
	时间：2017-12-23
	描述：新闻资讯发布与撤回
-->
<%
String name=(String)session.getAttribute("name")+"执行了修改联系我们";
if(name==null)name="非法操作";
String sql="update contact set title='"+MyTools.toChinese(jx.getT1())+"',address='"+MyTools.toChinese(jx.getT2())+"',phone='"+jx.getT3()+"',email='"+jx.getT4()+"',code='"+jx.getT5()+"'";
boolean x1=mkn.executeUpdate(sql,name);
%>
<script>
alert("联系我们信息修改成功！！！"); 
window.document.location.href="link.jsp"; 
</script>

<%mkn.closeConnection();%> 

