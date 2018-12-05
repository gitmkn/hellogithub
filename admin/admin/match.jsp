<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="top.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%>
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session" />
<!DOCTYPE HTML>
<!--
	作者：高雅
	时间：2017-12-23
	描述：模糊查询跳转页
-->
<!DOCTYPE html PUBLIC "" "">
<HTML lang="en">
<HEAD>
<META content="IE=11.0000" http-equiv="X-UA-Compatible">

<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<TITLE>联盟列表</TITLE>
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
<SCRIPT language="javascript" src="js/jquery.VLoadedImg.js"charset="UTF-8"></SCRIPT>
<SCRIPT src="js/ckplayer.js" type="text/javascript"></SCRIPT>
<STYLE type="text/css"></STYLE>
<META name="GENERATOR" content="MSHTML 11.00.10570.1001">
</HEAD>
<BODY>
	<div class="main">
		<div class="l">
			<%
				String sql = "select title,id from dynamic where type= 3 and state=1 order by id desc limit 1";
				ResultSet rs2 = mkn.executeQuery(sql);
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
					搜索结果
					<span></span>

				</div>
			</div>


			<div class="minfo">
				<DIV class="container"
					style="word-wrap: break-word;overflow :hidden;background: #FFFFFF;
	 margin-left: 15px;margin-right: 15px;height: auto;width: auto;">
					<%!int zys = 1;
	int gs = 12;
	int zgs = 0;
	int ys = 1;%>
					<%
					String mc=request.getParameter("keyword");
					if(mc==null)mc="";
					mc=new String(mc.getBytes("iso-8859-1"),"UTF-8");
						String cs = request.getParameter("cs");
						if (cs == null)
							cs = "";
						String yss = request.getParameter("cs1");
						if (yss == null)
							yss = "1";
						ys = Integer.parseInt(yss);
						if (ys < 1)
							ys = 1;
						if (ys > zys)
							ys = zys;
						String sql2 = "select title,date(createtime),id from dynamic where title like '%"+mc+"%' and state=1";
						ResultSet rs1 = mkn.executeQuery(sql2);
						rs1.last();
						zgs = rs1.getRow();
						if(zgs>0){
						zys = (zgs % gs == 0) ? (zgs / gs) : (zgs / gs + 1);
						int x1 = 1;
						rs1.absolute((ys - 1) * gs + 1);
						for (int i = 0; i < gs; i++) {
							if (rs1.isAfterLast())
								break;
							String bt = rs1.getString(1);
							String sj = rs1.getString(2);
							String id = rs1.getString(3);
							
					%>

					<DIV class="info" id="i2" style="line-height: 35px;">
						<SPAN class="stitle"><A title="<%=bt%>"
							href="intro.jsp?cs=<%=id%>"><%=bt%></A>
						</SPAN> <SPAN style="float: right;" style="line-height: 35px;"><%=sj%></SPAN>
					</DIV>

					<%
						x1++;
							rs1.next();
						}}
					%>
					<%
				String sql4 = "select count(*) from dynamic where title like '%"+mc+"%' and state=1";
				ResultSet rs4 = mkn.executeQuery(sql4);
				
				rs4.next();
					int co = rs4.getInt(1);
			%>
			 
					<h3 align=center>
					<font size=2>查询到<%
								out.print(co);
							%>条记录</font>
						<a
							href="match.jsp?cs1=<%=ys - 1%>&cs=<%=cs%>&keyword=<%=mc%>">
							<button class="btn btn-default">
								<span class="icon-angle-left"></span>上一页
							</button>
						</a>
						
							<%
							
							int s=co/12;
						if(co%12>0)s=s+1;
								out.print(ys);
							%>/
							<%
								out.print(s);
							%>
						 <a href="match.jsp?cs1=<%=ys + 1%>&cs=<%=cs%>&keyword=<%=mc%>">
							<button class="btn btn-default">
								下一页 <span class="icon-angle-right"></span>
							</button> </a>
					</h3>
				</DIV>
			</div>
		</DIV>
	</div>
</BODY>
</HTML>
<%mkn.closeConnection(); %>

<%@ include file="foot.jsp"%>


