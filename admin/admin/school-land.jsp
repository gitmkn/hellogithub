<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="top.jsp"%>
<%@ page import="com.fzn.JDBConnection"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session" />
<!DOCTYPE HTML>
<!--
	作者：吴双双
	时间：2017-12-25
	描述：校地联盟
-->
<!DOCTYPE html PUBLIC "" ""><HTML lang="en"><HEAD><META content="IE=11.0000" 
http-equiv="X-UA-Compatible">
 
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<TITLE>校地合作</TITLE> 
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
	
	
<DIV class="main">
<SCRIPT language="javascript" src="js/jquery.jslides.js" type="text/javascript"></SCRIPT>

<DIV class="hl">
<DL class="infolist1" id="ilist2">
  <DT>
  <DIV class="tname">校地新闻</DIV>
  <DIV class="tmore"><A href="rlist.jsp?cs=5&cs2=校地新闻">更多&gt;&gt;</A></DIV></DT>
  <DD class="KinSlideshow">
  <DIV id="KinSlideshow" style="overflow: hidden;"><A intro.jsp"><IMG 
  width="266" height="199"  alt="辽东学院校企联盟"  src="img/111.jpg"></A> 
  </DIV>
<SCRIPT language="javascript" src="js/jquery.KinSlideshow.js" type="text/javascript"></SCRIPT>
       
<SCRIPT type="text/javascript">
        $(function () {
            $("#KinSlideshow").KinSlideshow({ titleBar: { titleBar_height: 25, titleBar_bgColor: "#222", titleBar_alpha: 0.5 }, isHasTitleFont: true, titleFont: { TitleFont_size: 10, TitleFont_color: "#fff", TitleLine_height: 25 }, btn: { btn_bgColor: "#afafb1", btn_bgHoverColor: "#fff", btn_fontColor: "#afafb1", btn_fontHoverColor: "#FFF", btn_fontFamily: "Arial",
                btn_borderColor: "#afafb1", btn_borderHoverColor: "#fff",
                btn_borderWidth: 0, btn_bgAlpha: 0.9
            }
            });
        })  
		</SCRIPT>
        </DD>
  <DD>
 <%
String sql = "select title,replace(title,substring(title from 15),'...'), date(createtime),id from dynamic where type=5 and state=1 order by id desc";
						ResultSet rs = mkn.executeQuery(sql);
						int i = 1;
						while(rs.next()) {
						String t = rs.getString(1);
						String t1 = rs.getString(2);
						String t2 = rs.getString(3);
                         String t3 = rs.getString(4);
						if (i > 8)
								break;
					%>
  <DIV class="info" id="i1">
  	<SPAN class="stitle">
  		<A title="<%=t%>"  href="intro.jsp?cs=<%=t3%>"><%=t1%></A>
  	</SPAN>
  	<SPAN class="sdate"><%=t2%></SPAN>
  </DIV>
<%
i++;}
%>
  </DD>
 </DL>
</DIV>

<DIV class="hr">
<DL class="infolist1" id="ilist3">
  <DT class="title">
  <DIV class="tname">最新成果</DIV>
  <DIV class="tmore"><A href="rlist.jsp?cs=6&cs2=校地合作最新成果">更多&gt;&gt;</A></DIV></DT>
  <DD>
<%
						String sql2 = "select title,replace(title,substring(title from 15),'...'),date(createtime),id from dynamic where type=6 and state=1 order by createtime desc";
						ResultSet rs2 = mkn.executeQuery(sql2);
						int k = 1;
						while (rs2.next()) {
							String t = rs2.getString(1);
							String t1 = rs2.getString(2);
							String t2 = rs2.getString(3);
                                                        String t3 = rs2.getString(4);
							if (k > 8)
								break;
					%>
  <DIV class="info" id="i1"><SPAN class="stitle"><A title="<%=t%>" 

  href="intro.jsp?cs=<%=t3%>"><%=t1%></A></SPAN><SPAN 
  class="sdate"><%=t2%></SPAN></DIV>
<%
k++;}
%>
</DD></DL></DIV>

<DIV class="blk"></DIV>
<DIV class="ml">
<DL class="infolist1" id="ilist4">
  <DT class="title">
  <DIV class="tname">行业资讯</DIV>

  <DIV class="tmore"><A 
  href="list.jsp?cs=5&cs2=校校合作行业资讯&cs3=6&cs4=7">更多&gt;&gt;</A>
  </DIV>
  </DT>
 <DD id="ilist4dd"> 
    <UL><%
						String sql1 = "select title,replace(title,substring(title from 15),'...'),date(createtime),id from dynamic where state=1 and id in( select id from dynamic where type=5 or type=6 or type=7)  order by createtime desc";
						ResultSet rs1 = mkn.executeQuery(sql1);
						int j = 1;
						while (rs1.next()) {
							String t = rs1.getString(1);
							String t1 = rs1.getString(2);
							String t2 = rs1.getString(3);
                            String t3 = rs1.getString(4);
                              if(j>10)
                              break;
					%>

  <DIV class="info" id="i1"><SPAN class="stitle"><A title="<%=t%>" 
  href="intro.jsp?cs=<%=t3%>"><%=t1%></A></SPAN><SPAN class="sdate"><%=t2%></SPAN></DIV>
<%
j++;}%>
 </UL></DD></DL></DIV>
  

  

         
<SCRIPT>
            $(function () { 
                $('#ilist4dd').kxbdSuperMarquee({
                    isEqual: true,
                    isMarquee: true,
                    scrollDelay: 40,
                    direction: 'up',
                    
                });
            });  
</SCRIPT>

<DIV class="mr">
<DL class="infolist1" id="ilist5">
  <DT class="title">

  <DIV class="tname">地方政策</DIV>
  <DIV class="tmore"><A 
  href="rlist.jsp?cs=7&cs2=校地合作地方政策">更多&gt;&gt;</A></DIV></DT>
  <DD>
 	  
	<%
						String sql3 = "select title,replace(title,substring(title from 15),'...'),date(createtime),id from dynamic where type=7 and state=1 order by createtime desc";
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
mkn.closeConnection(); %>
  </DD></DIV></DIV><DT></DL></DIV>



</BODY></HTML>
<%@ include file="foot.jsp"%>
