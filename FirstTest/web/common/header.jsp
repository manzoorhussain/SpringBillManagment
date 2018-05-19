<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/common/include.jsp"%>
<%@include file="/common/notification.jsp"%>
<style>
.list {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

.listitem {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
     background-color: #4CAF50;
}

.active {
    background-color: #4CAF50;
}

</style>
<body>

<ul class='list'>
  <li class='listitem'><a href="<s:url action="productList"/>" >Product</a></li>
  <li class='listitem'><a href="<s:url action="productDetailList"/>">Product Detail</a></li>
  <li class='listitem'><a href="<s:url action="productdeal"/>">Deal</a></li>
  <li class='listitem'><a href="<s:url action="productbill"/>">Bill</a></li>
  <li class='listitem'><a href="<s:url action="orderdetail"/>">OrderDetail</a></li>
  <li class='listitem' style="float:right"><a href="<s:url action="logOut"/>">Logout</a></li>
</ul>


</body>
