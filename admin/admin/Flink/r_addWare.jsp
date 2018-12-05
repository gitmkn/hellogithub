<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*,com.jspsmart.upload.*"%>
<%@ page import="com.fzn.JDBConnection"%> 
<jsp:useBean id="mkn" class="com.fzn.JDBConnection" scope="session"/>
<%
String mc=request.getParameter("mc");
if(mc==null)mc="";
mc=new String(mc.getBytes("iso-8859-1"),"UTF-8");
String jg=request.getParameter("jg");
if(jg==null)jg="";
jg=new String(jg.getBytes("iso-8859-1"),"UTF-8");
String tp=request.getParameter("tp");
if(tp==null)tp="";
tp=new String(tp.getBytes("iso-8859-1"),"UTF-8");
tp="img/"+tp;
String name = "增加一个友情链接";
 	 
	    String sql="insert into link(title,link,img,state) values('"+mc+"','"+jg+"','"+tp+"',0)";
         
            boolean x1=mkn.executeUpdate(sql,name); 	//调用数据库语句

if(x1==true){%>
<script>
 alert("上传成功");
 window.document.location.href="news_1.jsp";
</script>
<%}
%> 