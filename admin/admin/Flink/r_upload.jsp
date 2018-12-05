<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*,com.jspsmart.upload.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path=application.getRealPath("/admin/img");

SmartUpload su = new SmartUpload();

su.initialize(pageContext); 
su.setAllowedFilesList("png,jpg"); 
 

su.upload(); 
int count = su.save(path); 


for(int i=0;i<su.getFiles().getCount();i++){
com.jspsmart.upload.File file=su.getFiles().getFile(i);
String filename=file.getFileName();

session.setAttribute("fname",filename);
response.sendRedirect("addWare.jsp");
}%>