<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="top.jsp"%>
<%@ page import="com.fzn.JDBConnection"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session" />
<!DOCTYPE HTML>
<!--
	作者：李佳隆
	时间：2018-01-04
	描述：参与联盟模块页
-->
<!DOCTYPE html PUBLIC "" ""><HTML lang="en"><HEAD><META content="IE=11.0000" 
http-equiv="X-UA-Compatible">
 
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<TITLE>校企合作</TITLE> 
<META name="Keywords" content="辽东学院校企联盟"> 
<META name="Description" content="辽东学院校企联盟"> 
<META name="robots" content="index, follow"> 
<META name="googlebot" content="index, follow"> <LINK href="css/cn.css" 
rel="stylesheet" type="text/css">  
<META http-equiv="Pragma" content="no-cache">    
<META http-equiv="Cache-Control" content="no-cache">    
<META http-equiv="Expires" content="0">   
<SCRIPT language="javascript" src="js/jquery.js"></SCRIPT>
  <SCRIPT src="js/Marquee.js" type="text/javascript"></SCRIPT>
<SCRIPT language="javascript" src="js/jquerycssmenu.js"></SCRIPT>
<SCRIPT language="javascript" src="js/jquery.VLoadedImg.js" charset="UTF-8"></SCRIPT>
<SCRIPT src="js/ckplayer.js" type="text/javascript"></SCRIPT>
<STYLE type="text/css"></STYLE>
<META name="GENERATOR" content="MSHTML 11.00.10570.1001"></HEAD> 
<BODY>
	
	<%String id=request.getParameter("cs");
						if(id==null)id="0";
	 %>
<DIV class="main">
<SCRIPT language="javascript" src="js/jquery.jslides.js" type="text/javascript"></SCRIPT>  

<DIV class="ml">

<DL class="infolist1" id="ilist4">
  <DT class="title">
  <DIV class="tname">联盟动态</DIV>

  <DIV class="tmore"><A 
  href="rlist.jsp?cs=20&cs3=<%=id%>&cs2=参与联盟联盟动态">更多&gt;&gt;</A></DIV></DT>
  <DD id="ilist4dd"> 
<%
						
						String sql1 = "select title,replace(title,substring(title from 15),'...'),date(createtime),id from dynamic where type=20 and state=1 and fatherID='"+id+"' order by createtime desc";
						ResultSet rs1 = mkn.executeQuery(sql1);
						int j = 1;
						while (rs1.next()) {
							String t = rs1.getString(1);
							String t1 = rs1.getString(2);
							String t2 = rs1.getString(3);
                            String t3 = rs1.getString(4);
                              if (j > 10)
								break;
					%>

  <DIV class="info" id="i1"><SPAN class="stitle"><A title="<%=t%>" 
  href="intro.jsp?cs=<%=t3%>"><%=t1%></A></SPAN><SPAN class="sdate"><%=t2%></SPAN></DIV>
<%
j++;}%>
</DD></DL></DIV>
  

         


<DIV class="mr">
<DL class="infolist1" id="ilist5">
  <DT class="title">

  <DIV class="tname">新闻资讯</DIV>
  <DIV class="tmore"><A 
  href="rlist.jsp?cs=21&cs3=<%=id%>&cs2=参与联盟新闻资讯">更多&gt;&gt;</A></DIV></DT>
  <DD>
 	  
	<%
						String sql3 = "select title,replace(title,substring(title from 15),'...'),date(createtime),id from dynamic where type=21 and state=1 and fatherID='"+id+"' order by createtime desc";
						ResultSet rs3 = mkn.executeQuery(sql3);
						int n = 1;
						while (rs3.next()) {
							String t = rs3.getString(1);
							String t1 = rs3.getString(2);
							String t2 = rs3.getString(3);
                                                        String t3 = rs3.getString(4);
							if (n > 8)
								break;
					%>	  				 
  <DIV class="info" id="i2"><SPAN class="stitle"><A title="<%=t%>" 
  href="intro.jsp?cs=<%=t3%>"><%=t1%></A></SPAN><SPAN 
  class="sdate"><%=t2%></SPAN></DIV>
<%
n++;}
mkn.closeConnection(); 
%>
  </DD></DIV></DIV><DT></DL></DIV>



</BODY></HTML>
<%@ include file="foot.jsp"%>
