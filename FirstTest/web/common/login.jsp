<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/common/include.jsp"%>

<head>
<title>FirstApplication</title>
 <link rel="stylesheet" href="../css/login.css">
</head>
<style>
 @import url(http://fonts.googleapis.com/css?family=Roboto:400);
body {
  background-color:#fff;
  -webkit-font-smoothing: antialiased;
  font: normal 14px Roboto,arial,sans-serif;
}
.col-md-offset-5 {
    margin-left: 41.66666667%;
     bottom: -67px;
    left: -51px;
}
.container {
    padding: 25px;
    position: fixed;
}

.form-login {
    background-color: #EDEDED;
    padding-top: 10px;
    padding-bottom: 20px;
    padding-left: 20px;
    padding-right: 20px;
    border-radius: 15px;
    border-color:#d2d2d2;
    border-width: 5px;
    box-shadow:0 1px 0 #cfcfcf;


}

h4 {
 border:0 solid #fff;
 border-bottom-width:1px;
 padding-bottom:10px;
 text-align: center;
}

.form-control {
    border-radius: 10px;
}

.wrapper {
    text-align: center;
}

</style>
<body>
 <form name="loginForm" name="loginForm" action="wellcome.action">
<div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-5">
            <div class="form-login">
      <h4>Well Come</h4>

            <input type="text" id="userName" name="userName" class="form-control input-sm chat-input"  />
            </br>
            <input type="password" id="password"  name="password" class="form-control input-sm chat-input" />
            </br>
            <div class="wrapper">
            <span class="group-btn">

              <input type="submit" value="login" class="btn btn-primary btn-lg">
            </span>
            </div>
            </div>

        </div>
    </div>
</div>
</form>




 </body>
