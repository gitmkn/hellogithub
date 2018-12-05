<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="top.jsp"%>
<%@ page import="com.fzn.JDBConnection"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session" />
<!DOCTYPE HTML>
<!--
	作者：李佳隆
	时间：2017-12-24
	描述：联系我们
-->
<!DOCTYPE html PUBLIC "" ""><HTML lang="zh-CN"><HEAD><META content="IE=11.0000" 
http-equiv="X-UA-Compatible">
 
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<TITLE>联系我们</TITLE> 
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


						String sql = "select title,id from dynamic where type= 3 and state=1 order by id desc limit 1";
						ResultSet rs = mkn.executeQuery(sql);
						int i = 1;
						while (rs.next()) {
							String t = rs.getString(1);
							String t1 = rs.getString(2);
							if (i > 1)
								break;
%>   
<div class="lmenu">
     <dl class="infolist1" id="ilist3">
     <dt class="title">
<div class="tname">通知公告</div><div class="tmore"><a href="rlist.jsp?cs=3&cs2=通知公告"">更多>></a></div>
</dt>
<dd>
<div class="info" id="i1"><span class="stitle"><a href="intro.jsp?cs=<%=t1%>" ><%=t%></a></span></div>
<%
i++;
}
%>
</dd>
</dl>

<div class="blk"></div>

    <dl class="infolist1" id="ilistSearch"> 
         <dt class="title">
             <div class="tname">站内搜索</div>
         </dt>  
         <dd>
            <div class="search">
            <form action="match.jsp">
           
                <input type="text" class="keyword" placeholder="站内搜索..." value=""  name="keyword" id="keyword" align="top" />

                <input type="submit"  id="sub" value="搜索" class="btn btn-info" align="top"/>
                </form>
         </div> 
        </dd>
    </dl>    
</div>
   </div>
                        
   <div class="m">     
	<div class="tom">
		<div class="totitle"><a href="/Contact us">联系我们<span></span></a>
	    <div class="toinfo">当前位置：<a href="/">网站首页</a> &gt; <a href="/Contact us">联系我们</a></div></div></div>
        <div class="content">
          			    <% 
          			    String sql2 = "select * from contact";
						ResultSet rs2 = mkn.executeQuery(sql2);
						rs2.last();
          			    int link = 0;
                        link = rs2.getRow();
                        if(link<1){ 
    					%>
    								<script>
									alert("数据请求错误！！！");  
									</script>
						<%}else{ %>
						<% 
						String t2 = rs2.getString(2);
						String t3 = rs2.getString(3);
                        String t4 = rs2.getString(4);
                        String t5 = rs2.getString(5);
                        String t6 = rs2.getString(6);
                        int t7 = rs2.getInt(7);
                        %>
			<p style="text-indent:32pt;" class="MsoNormal">
				<span style="font-family:仿宋_GB2312;font-size:24pt;"><strong><%=t2%></strong></span>
			</p>
			<p style="text-indent:32pt;" class="MsoNormal">
				<span style="font-family:仿宋_GB2312;font-size:16pt;">地址：<%=t3%></span>
			</p>
			<p style="text-indent:32pt;" class="MsoNormal">
				<span style="font-family:仿宋_GB2312;font-size:16pt;">办公电话：<span><%=t4%></span>
			</p>
			<p style="text-indent:32pt;" class="MsoNormal">
				<span style="font-family:仿宋_GB2312;font-size:16pt;">邮箱：<a href="<%=t5%>"><%=t5%></a></span>
			</p>
			<p style="text-indent:32pt;" class="MsoNormal">
				<span style="font-family:仿宋_GB2312;font-size:16pt;">邮编：<%=t6%></span>
			</p>
			<%} %>
      </div>
   </div>
</div>
   
<%mkn.closeConnection();%>
   </div></div>
</div>


</BODY></HTML>
<%@ include file="foot.jsp"%>