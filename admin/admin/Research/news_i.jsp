<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../control.jsp"%>
<%@ page import="com.fzn.zengjia"%> 
<%@ page import="com.fzn.toolbean.MyTools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%> 
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session"/>
<HTML>
<BODY><Font size=1>
<jsp:useBean id="jx" class="com.fzn.zengjia" scope="page">
<jsp:setProperty name="jx" property="*"/>
</jsp:useBean>
<%
String name=(String)session.getAttribute("name")+"执行了增加研究所";
if(name==null)name="非法操作";
String sql="insert into member(name,type) values('"+MyTools.toChinese(jx.getName())+"','2')";  
boolean x=mkn.executeUpdate(sql,name);

if(x == true){%>
<script>
 alert("success");
 window.document.location.href="research_table.jsp";
</script>

<%}%>
 </BODY></HTML>