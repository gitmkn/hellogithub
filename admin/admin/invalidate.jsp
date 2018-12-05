<%@ page contentType="text/html;charset=UTF-8"%>

<%
session.invalidate();

String cs1=request.getParameter("cs");
if(cs1==null)cs1="0";
int cs2=Integer.parseInt(cs1);

if(cs2==1)
{
response.sendRedirect("index.jsp");
}else{
response.sendRedirect("login.jsp");
}%>
