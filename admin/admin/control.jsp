<%@ page contentType="text/html;charset=UTF-8" %>

<!--
	作者：马康宁
	时间：2017-12-22
	描述：控制页面登录
-->
<%

String ka=(String)session.getAttribute("key");
		if(ka==null)ka="";
//out.print(k1);
if(!ka.equals("ok")){
//response.sendRedirect("../user/login.jsp");
%>

<script>
 alert("请登录!!!");
 window.document.location.href="<%=request.getContextPath()%>/admin/login.jsp";
</script>
<%}%>