<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE HTML>
<!DOCTYPE html PUBLIC "" ""><HTML lang="zh-CN"><HEAD><META content="IE=11.0000" 
http-equiv="X-UA-Compatible">
 
<BODY>
	
<DIV class="header">
<div class="panel panel-default">	
	<div class="panel-body" > 
		<img src="img/logo.jpg">
	</div>
<div class="link">
<script language=JavaScript type="text/javascript">
var enabled = 0; today = new Date();
 
var day; var date;
 
if(today.getDay()==0) day = " 星期日"
 
if(today.getDay()==1) day = " 星期一"
 
if(today.getDay()==2) day = " 星期二"
 
if(today.getDay()==3) day = " 星期三"
 
if(today.getDay()==4) day = " 星期四"
 
if(today.getDay()==5) day = " 星期五"
 
if(today.getDay()==6) day = " 星期六"
 
date = (today.getFullYear()) + "年" + (today.getMonth() + 1 ) + "月" + today.getDate() + "日" + day +"";
 
document.write(date);

</script>
</div>
</div>

</div>
<div class="container">
<DIV class="menu" id="jqmenu" style="background:#3f94e7 ">
<UL>
  <LI><A class="m-home " href="index.jsp">网站首页</A></LI>           

  <LI class="sp">|</LI>              
  <LI><A class="m- " >组建和参与联盟</A>
  <UL style="width: 155px;">
    <LI id="lm23" level="2"><A 
href="unity_intro.jsp" style="text-indent:2em;">组建联盟</A></LI>
    <LI id="lm24" level="2"><A 
    href="union_table.jsp" style="text-indent:2em;">参与联盟</A></LI>
   </UL></LI>           
  <LI class="sp">|</LI>              
  <LI><A class="m- " href="school-land.jsp">校地合作</A>
 </LI>           
  <LI class="sp">|</LI>              
  <LI><A class="m- " href="school-company.jsp">校企合作</A>
  </LI>          
   
  <LI class="sp">|</LI>              
  <LI><A class="m- " href="school-school.jsp">校校合作</A>
  </LI>           
  <LI class="sp">|</LI>              
  <LI><A class="m- " >应用技术研究</A>
  <UL style="width: 148px;">
    <LI id="lm43" level="2"><A 
    href="research_intro.jsp" style="text-indent:3em;">简介</A></LI>
    <LI id="lm44" level="2"><A 
    href="graduate_table.jsp" style="text-indent:2em;">研究所详情</A></LI>
 </UL></LI>                 
  <LI class="sp">|</LI>              
  <LI><A class="m-Contact us " 
  href="link.jsp">联系我们</A></LI>             
</UL></DIV></DIV></DIV>
</BODY></HTML>