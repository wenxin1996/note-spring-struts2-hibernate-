<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Big_Boss
  Date: 2017/9/25
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,  initial-scale=1.0,maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="http://localhost:8080/css/bootstrap.min.css">
    <script type="text/javascript" src="http://localhost:8080/js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="http://localhost:8080/js/bootstrap.min.js"></script>
    <title>Note</title>
</head>
<style>
    .img-com{
        max-width: 100%;
    }
    a:hover,a:focus{
        text-decoration: none;
    }
</style>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="http://localhost:8080/loadhome.action">HOME</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="http://localhost:8080/loadhome.action">home</a></li>
                <li class="active"><a href="http://localhost:8080/loadNotebar.action">note</a></li>
                <li><a href="http://localhost:8080/noteAdd.html">note+</a></li>
                <li><a href="http://localhost:8080/htmlAdd.html">html+</a></li>
            </ul>
        </div>
    </div>
</nav>
<section>
    <div class="container">
        <s:iterator value="list">
        <div class="row">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-1">
                        <button class="btn btn-default" onclick=window.open("http://localhost:8080/changeNote.jsp?id=<s:property value="id"/>&content=<s:property value="content"/>")>改</button>
                    </div>
                    <div class="col-lg-10">
                        <h5 class="text-muted">--<s:property value="time"/></h5>
                        <h5 class="text-left">
                            <s:property value="content"/>
                        </h5>
                    </div>
                </div>
            </div>
            <div class="col-xs-12">
                <hr>
            </div>
        </div>
        </s:iterator>
    </div>
</section>

</body>
</html>