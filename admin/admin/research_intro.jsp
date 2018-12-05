<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="top.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%>
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session" />
<!DOCTYPE HTML>
<!--
	作者：李佳隆
	时间：2017-12-24
	描述：研究所简介
-->
<!DOCTYPE html PUBLIC "" ""><HTML lang="en"><HEAD><META content="IE=11.0000" 
http-equiv="X-UA-Compatible">
 
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<TITLE>应用技术研究所简介</TITLE> 
<META name="Keywords" content="辽东学院校企联盟"> 
<META name="Description" content="辽东学院校企联盟"> 
<META name="robots" content="index, follow"> 
<META name="googlebot" content="index, follow"> <LINK href="css/cn.css" 
rel="stylesheet" type="text/css">  
<META http-equiv="Pragma" content="no-cache">    
<META http-equiv="Cache-Control" content="no-cache">    
<META http-equiv="Expires" content="0">   
<SCRIPT language="javascript" src="js/jquery.js"></SCRIPT>
 
<SCRIPT language="javascript" src="js/jquerycssmenu.js"></SCRIPT>
 
<SCRIPT language="javascript" src="js/jquery.VLoadedImg.js" charset="UTF-8"></SCRIPT>
 
<SCRIPT src="js/ckplayer.js" type="text/javascript"></SCRIPT>
 
<STYLE type="text/css"></STYLE>
 
<META name="GENERATOR" content="MSHTML 11.00.10570.1001"></HEAD> 
<BODY>
	

<div class="main">
   <div class="l">     
   <%
						String sql2 = "select title,id from dynamic where type= 3 and state=1 order by id desc limit 1";
						ResultSet rs = mkn.executeQuery(sql2);
						int k = 1;
						while (rs.next()) {
							String t = rs.getString(1);
							String t1 = rs.getString(2);
							if (k > 1)
								break;
%>     
<div class="lmenu">
     <dl class="infolist1" id="ilist3"><dt class="title"><div class="tname">通知公告</div>
<div class="tmore"><a href="list.jsp?cs=3&cs2=通知公告">更多>></a></div></dt><dd>

<div class="info" id="i1">
<span class="stitle"><a href="intro.jsp?cs=<%=t1%>"  class="red0"><%=t%></a></span>
</div>
<%
k++;
}
%>
     	</dd>
     </dl>
     <div class="blk">
     </div>
    
    <dl class="infolist1" id="ilistSearch"> 
         <dt class="title">
             <div class="tname">站内搜索</div>
         </dt>  
         <dd>
          <div class="search">
            <div class="search">
            <form action="match.jsp">
           
                <input type="text" class="keyword" placeholder="站内搜索..." value=""  name="keyword" id="keyword" align="top" />

                <input type="submit"  id="sub" value="搜索" class="btn btn-info" align="top"/>
                </form>
         </div> 
         </div> 
        </dd>
    </dl>   
</div>
   </div>
   
   
    <div class="m">
      <div class="tom">
      	<div class="totitle">
      		当前位置：
			<a href="index.jsp">网站首页</a> &gt; 
			<a href="#">应用技术研究</a> &gt;
			<a href="research_intro.jsp">简介</a><span></span>
      
		
		</div>
      </div>
<%




						String sql = "select * from intro where type= 2 order by id desc limit 1";
						ResultSet rs2 = mkn.executeQuery(sql);
						int n = 1;
						while (rs2.next()) {
							String t = rs2.getString(2);
							if (n > 1)
								break;
%>
      <div class="content">
         <span style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<%=t %></span><br />
      </div>
      <%
n++;
}
mkn.closeConnection(); 
%>
   </div>
</div>

</BODY></HTML>
<%@ include file="foot.jsp"%>
