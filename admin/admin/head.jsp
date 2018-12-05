<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>辽东学院校企联盟</title>

  </head>

  <body>

    <div id="wrapper">

      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">校企联盟</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><img src="<%=request.getContextPath()%>/admin/img/logo.png" style="width:10%;height:10%;" />辽东学院校企联盟</a>
        </div>
        <%
        String admin=(String)session.getAttribute("name");
		if(admin==null)admin="";
         %>
        <ul class="nav navbar-nav navbar-right navbar-user">
            <li class="dropdown user-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>&nbsp;<%=admin%>&nbsp;<b class="caret"></b></a>
              <ul class="dropdown-menu">
              <li><a href="<%=request.getContextPath()%>/admin/invalidate.jsp?cs=1"><i class="fa fa-sign-out"></i> 网站</a></li>
                <li class="divider"></li>
                <li><a href="<%=request.getContextPath()%>/admin/invalidate.jsp"><i class="fa fa-power-off"></i> 退出</a></li>
              </ul>
            </li>
          </ul>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-dashboard"></i> 首页管理 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<%=request.getContextPath()%>/admin/index1/news_1.jsp">  新闻资讯</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/index1/news_3.jsp">  通知公告</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/index1/news_4.jsp">  最新成果</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/index1/news_2.jsp">  产业动态</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/Flink/news_1.jsp">友情链接</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-edit"></i> 组建与参与联盟管理 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<%=request.getContextPath()%>/admin/Untiy/untiy_intro.jsp">  组建联盟</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/Untiy/untiy_table.jsp">  参与联盟</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-exchange"></i> 校地合作管理 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<%=request.getContextPath()%>/admin/Sland/news_1.jsp">  校地新闻</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/Sland/news_2.jsp">  校地成果</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/Sland/news_3.jsp">  地方政策</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-random"></i> 校企合作管理 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<%=request.getContextPath()%>/admin/Scompany/news_1.jsp">  校企新闻</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/Scompany/news_2.jsp">  最新成果</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/Scompany/news_3.jsp">  地方政策</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-tasks"></i> 校校合作管理 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<%=request.getContextPath()%>/admin/Sschool/news_1.jsp">  校校新闻</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/Sschool/news_2.jsp">  最新成果</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/Sschool/news_3.jsp">  地方政策</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-file"></i> 应用技术研究管理 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<%=request.getContextPath()%>/admin/Research/research_intro.jsp">  简介</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/Research/research_table.jsp">  研究所详情</a></li>
              </ul>
            </li>
            <li><a href="<%=request.getContextPath()%>/admin/link/link.jsp"><i class="fa fa-comments"></i> 联系我们管理</a></li>
          </ul>

          
        </div><!-- /.navbar-collapse -->
        
      </nav>

    </div><!-- /#wrapper -->



  </body>
</html>
