<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="top.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="com.fzn.JDBConnection"%>
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session" />
<!--
	作者：吴双双、刘英杰、高雅、李佳隆
	时间：2017-12-22
	描述：首页
-->
<!DOCTYPE HTML>

<!DOCTYPE html PUBLIC "" ""><HTML lang="en"><HEAD><META content="IE=11.0000" 
http-equiv="X-UA-Compatible">
 
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<TITLE>辽东学院校企联盟</TITLE> 
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
<DIV class="main">
<SCRIPT language="javascript" src="js/jquery.jslides.js" type="text/javascript"></SCRIPT>
  <!--slider{-->   <!--轮播图{-->       
<DIV class="banner">
<DIV id="full-screen-slider">
<UL id="slides">
  <LI style='background: url("img/1.jpg") no-repeat top;'><A></A></LI>
  <LI style='background: url("img/2.jpg") no-repeat top;'><A></A></LI>
  <LI style='background: url("img/3.jpg") no-repeat top;'><A></A></LI></UL></DIV></DIV><!--}slider--> 

<DIV class="hl">
<DL class="infolist1" id="ilist2">
  <DT class="title">
  <DIV class="tname">新闻资讯</DIV>
  <DIV class="tmore"><A href="rlist.jsp?cs=1&cs2=首页新闻资讯">更多&gt;&gt;</A></DIV></DT>
  <DD class="KinSlideshow">
  <DIV id="KinSlideshow" style="overflow: hidden;"><A href="intro.jsp"><IMG 
  width="266" height="199"  alt="辽东学院校企联盟"  src="img/linfan2.jpg"></A> 
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
						String sql4 = "select title,replace(title,substring(title from 15),'...'),date(createtime),id from dynamic where type= 1 and state=1 order by createtime desc limit 8";
						ResultSet rs = mkn.executeQuery(sql4);
						int i = 1;
						while (rs.next()) {
						    String t = rs.getString(1);
						    String t1 = rs.getString(2);
                            String t11 = rs.getString(3);
                            String t111 = rs.getString(4);
							if (i > 8)
								break;
					%> 
  
					<DIV class="info" id="i2">
						<SPAN class="stitle"><A title="<%=t%>" class="red0"
							href="intro.jsp?cs=<%=t111%>"><%=t1%></A> </SPAN><SPAN
							class="sdate"><%=t11 %></SPAN>
					</DIV>
					<%
						i++;
						}
					%>
  </DD></DL></DIV>

<DIV class="hr">
<DL class="infolist1" id="ilist3">
  <DT class="title">
  <DIV class="tname">通知公告</DIV>
  <DIV class="tmore"><A href="rlist.jsp?cs=3&cs2=通知公告">更多&gt;&gt;</A></DIV></DT>
  <DD>
    <%
						String sql2 = "select title,replace(title,substring(title from 15),'...'),date(createtime),id from dynamic where type= 3 and state=1 order by createtime desc limit 8";
						ResultSet rs2 = mkn.executeQuery(sql2);
						int k = 1;
						while (rs2.next()) {
							String t = rs2.getString(1);
							String t1 = rs2.getString(2);
                            String t11 = rs2.getString(3);
                            String t111 = rs2.getString(4);
							if (k > 8)
								break;
					%>
					<DIV class="info" id="i1">
						<SPAN class="stitle"><A title="<%=t%>"
							class="red0" href="intro.jsp?cs=<%=t111%>"><%=t1%></A> </SPAN><SPAN class="sdate"><%=t11 %></SPAN>
					</DIV>
					<%
						k++;
						}
					%>
					
  </DD></DL></DIV>
<DIV class="blk"></DIV>
<DIV class="ml">
<DL class="infolist1" id="ilist4">
  <DT class="title">
  <DIV class="tname">最新成果</DIV>
  <DIV class="tmore"><A href="rlist.jsp?cs=4&cs2=最新成果">更多&gt;&gt;</A></DIV></DT>
  <DD id="ilist4dd">
  <UL><%
						String sql1 = "select title,replace(title,substring(title from 15),'...'),date(createtime),id from dynamic where type= 4 and state=1  order by createtime desc";
						ResultSet rs1 = mkn.executeQuery(sql1);
						int j = 1;
						while (rs1.next()) {
							String t = rs1.getString(1);
							String t1 = rs1.getString(2);
                            String t11 = rs1.getString(3);
                            String t111 = rs1.getString(4);
                            if(j>10)
                            break;

					%>
  	
					<DIV class="info" id="i2">
							<SPAN class="stitle"><A title="<%=t%>" class="red0"
								href="intro.jsp?cs=<%=t111%>"><%=t1%></A> </SPAN><SPAN
								class="sdate"><%=t11%></SPAN>
						</DIV>

					<%
						j++;
						}
					%>
 </UL></DD></DL></DIV>
  
  <SCRIPT src="js/Marquee.js" type="text/javascript"></SCRIPT>
         
<SCRIPT>
            $(function () { 
                $('#ilist4dd').kxbdSuperMarquee({
                    isEqual: true,
                    isMarquee: true,           
                    scrollDelay: 40,
                    direction: 'up'                   
                });
            });  
</SCRIPT>

<DIV class="mr">
<DL class="infolist1" id="ilist5">
  <DT class="title">
  <DIV class="tname">产业动态</DIV>
  <DIV class="tmore"><A href="rlist.jsp?cs=2&cs2=产业动态">更多&gt;&gt;</A></DIV></DT>
  <DD>
  	  
					<%
						String sql3 = "select title,replace(title,substring(title from 15),'...'),date(createtime),id from dynamic where type= 2 and state=1 order by createtime desc limit 8";
						ResultSet rs3 = mkn.executeQuery(sql3);
						int n = 1;
						while (rs3.next()) {
							String t = rs3.getString(1);
							String t1 = rs3.getString(2);
                            String t11 = rs3.getString(3);
                            String t111 = rs3.getString(4);
							if (n > 8)
								break;
					%>	

					<DIV class="info">
						<SPAN class="stitle"><A title="<%=t%>"
							class="red0" href="intro.jsp?cs=<%=t111%>"><%=t1%></A>
						</SPAN><SPAN class="sdate"><%=t11%></SPAN>
					</DIV>
					<%
						n++;
						}
					%>
  </DD></DL></DIV>
  <DIV class="blk"></DIV>
					

<DL class="infolist1" id="ilist18">
  <DT class="title">
  <DIV class="tname">友情链接</A></DIV>
  <DIV class="tmore"></DIV>
  </DT>
  
  <DD>
  <%
						String sql5 = "select * from link where state=1 limit 6";
						ResultSet rs7 = mkn.executeQuery(sql5);
						int m = 1;
						while (rs7.next()) {
							String t1 = rs7.getString(2);
                            String t2 = rs7.getString(3);
                            String t3 = rs7.getString(4);
							if (m >6)
								break;
					%>	 
  <DIV id="gdimg">
  <DIV>
  <A href="<%=t2%>"><IMG title="<%=t1%>" src="<%=t3%>" border="0"></A></DIV></DIV>
  <%
m++;}
mkn.closeConnection();
%>
  </DD>
  </DL></DIV>
<DIV class="clear"></DIV>


</BODY></HTML>
<%@ include file="foot.jsp"%>


