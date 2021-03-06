<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Big_Boss
  Date: 2017/9/20
  Time: 21:50
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
  .changeColor:hover{
    background-color: #EAA19F;
    color: #943936;
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
        <li class="active"><a href="http://localhost:8080/loadhome.action">home</a></li>
        <li><a href="http://localhost:8080/loadNotebar.action">note</a></li>
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
        <div class="col-lg-3 col-xs-4 text-center">
          <a href="http://localhost:8080/loadhtml?id=<s:property value="id"/>">
            <img class="img-rounded img-com" src="<s:property value="picture"/> " style="max-width: 100%"/>
          </a>
        </div>
        <div class="col-lg-6">
          <a href="http://localhost:8080/loadhtml?id=<s:property value="id"/>">
            <h3 class="text-left" style="color: #EE7A6B">
              <s:property value="headline"/>
            </h3>
          </a>
          <h5 class="text-muted">by wenxin</h5>
          <h5 class="text-left">
            <s:property value="resume"/>
          </h5>
        </div>
        <div class="col-lg-2 visible-lg">
          <a class="text-center" href="">
            <span class="label label-danger changeColor" style="font-size: large">改</span>
          </a>

        </div>
        <div class="col-xs-12">
          <hr>
        </div>
      </div>
    </s:iterator>

  </div>
</section>

<section>
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-sm-12">
        <ul class="pagination">
          <li><a href="#">&laquo;</a></li>
          <li class="active"><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#">&raquo;</a></li>
        </ul>
      </div>
    </div>
  </div>
</section>
</body>
</html>