﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="top.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%>
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session" />
<!--
	作者：刘英杰
	时间：2017-12-23
	描述：研究所列表
-->
<!DOCTYPE HTML>

<!DOCTYPE html PUBLIC "" ""><HTML lang="en"><HEAD><META content="IE=11.0000" 
http-equiv="X-UA-Compatible">
 
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<TITLE>研究所列表</TITLE> 
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
						ResultSet rs2 = mkn.executeQuery(sql2);
						int k = 1;
						while (rs2.next()) {
							String t = rs2.getString(1);
							String t1 = rs2.getString(2);
							if (k > 1)
								break;
%>     
<div class="lmenu">
     <dl class="infolist1" id="ilist3"><dt class="title"><div class="tname">通知公告</div>
<div class="tmore"><a href="rlist.jsp?cs=3&cs2=通知公告">更多>></a></div></dt><dd>

<div class="info" id="i1">
<span class="stitle"><a href="intro.jsp?cs=<%=t1%>"  class="red0"><%=t%></a></span>
</div>
<%
k++;
}
%>

</dd></dl>
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
      
<div class="tom"><div class="totitle">当前位置：
<a href="index.jsp">网站首页</a> &gt;
 <a href="#">应用技术研究</a> &gt; 
 <a href="graduate_table.jsp">研究所列表</a><span></span>
</div>
</div>
      <div class="content">
        <table border="1" cellspacing="0" cellpadding="0" width="600" align="center" style="border-bottom: #cccccc 1px solid;border-left: #cccccc 1px dashed;border-top: #cccccc 1px;border-right: #cccccc 1px"> 
        <tbody> 
	        <tr> 
	        <td bgcolor="#e2e2e2" height="35" colspan="2" align="middle" style="border-bottom: #cccccc 1px;border-left: #cccccc 1px;border-top: #cccccc 1px solid;border-right: #cccccc 1px dashed">研究所列表</td>
	        </tr>

<%!int zys=1;
int gs=1000;
int zgs=1;
int ys=1;
%>

<%
String yss=request.getParameter("cs");
if(yss==null)yss="1";
ys=Integer.parseInt(yss);
if(ys<1)ys=1;
if(ys>zys)ys=zys;
String sql="select id,name from member where type=2 order by id desc";
ResultSet rs=mkn.executeQuery(sql);
rs.last();
zgs=rs.getRow();
if(zgs>0){
zys=(zgs%gs==0)?(zgs/gs):(zgs/gs+1);
int x1=1;
rs.absolute((ys-1)*gs+1);
for(int i=0;i<gs;i++){
if(rs.isAfterLast())break;
String bh=rs.getString(1);
String bt=rs.getString(2);
if(x1%2==1){
%>
			
			<tr>
 
				<td class="table1"><a href="gra_detail.jsp?cs=<%=bh%>" 
				style="margin-left: 10px;color: #393c3d;" ><%=bt%></a></td> 
				<%}else{%>
				<td class="table1"><a href="gra_detail.jsp?cs=<%=bh%>" 
				style="margin-left: 10px;color: #393c3d;" ><%=bt%></a></td>
			<%
}
x1++;
rs.next();
}}
mkn.closeConnection();
%>
	</tr>
 </tbody> 
		</table>
</div>
</div>
</div>

</BODY></HTML>

<%@ include file="foot.jsp"%>
