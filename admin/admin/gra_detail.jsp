<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="top.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%>
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session" />
<!--
	作者：刘英杰
	时间：2017-12-23
	描述：研究所详情
-->
<!DOCTYPE HTML>

<!DOCTYPE html PUBLIC "" "">
<HTML lang="en">
<HEAD>
<META content="IE=11.0000" http-equiv="X-UA-Compatible">
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<TITLE>联盟详情</TITLE>
<META name="Keywords" content="辽东学院校企联盟">
<META name="Description" content="辽东学院校企联盟">
<META name="robots" content="index, follow">
<META name="googlebot" content="index, follow">
<LINK href="css/cn.css" rel="stylesheet" type="text/css">
<META http-equiv="Pragma" content="no-cache">
<META http-equiv="Cache-Control" content="no-cache">
<META http-equiv="Expires" content="0">
<SCRIPT language="javascript" src="js/jquery.js"></SCRIPT>

<SCRIPT language="javascript" src="js/jquerycssmenu.js"></SCRIPT>

<SCRIPT language="javascript" src="js/jquery.VLoadedImg.js"
	charset="utf-8"></SCRIPT>

<SCRIPT src="js/ckplayer.js" type="text/javascript"></SCRIPT>

<STYLE type="text/css"></STYLE>

<META name="GENERATOR" content="MSHTML 11.00.10570.1001">
</HEAD>
<BODY>


	<div class="main">
		<div class="l">
			<%


						String sql2 = "select title,id from dynamic where type= 3 and state=1  order by id desc limit 1";
						ResultSet rs2 = mkn.executeQuery(sql2);
						int k = 1;
						while (rs2.next()) {
							String t = rs2.getString(1);
							String t1 = rs2.getString(2);
							if (k > 1)
								break;
%>
			<div class="lmenu">
				<dl class="infolist1" id="ilist3">
					<dt class="title">
						<div class="tname">通知公告</div>
						<div class="tmore">
							<a href="rlist.jsp?cs=3&cs2=通知公告">更多>></a>
						</div>
					</dt>
					<dd>
						<div class="info" id="i1">
							<span class="stitle"><a href="intro.jsp?cs=<%=t1%>"><%=t%></a>
							</span>
						</div>
						<%
k++;
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
				<div class="totitle">
					当前位置： <a href="index.jsp">应用技术研究</a> &gt; <a
						href="graduate_table.jsp">研究所列表 &gt; <a href="gra_detail.jsp">研究所详情</a><span></span>
				</div>
			</div>

			<div class="content">
				<% String cs=request.getParameter("cs");
if(cs==null)cs="";
cs=new String(cs.getBytes("iso-8859-1"),"UTF-8");
						String sql4 = "select * from intro,member where intro.fatherid=member.id and fatherid='"+cs+"'";
						ResultSet rs3 = mkn.executeQuery(sql4);
						int n = 1;
						while (rs3.next()) {
							String t = rs3.getString(2);
							String t1 = rs3.getString(6);
						
%>
				<span style="font-size:14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;<%=t %></span><br />
				<%
}
mkn.closeConnection(); 
%>
			</div>

		</div>
	</div>

</BODY>
</HTML>

<%@ include file="foot.jsp"%>
