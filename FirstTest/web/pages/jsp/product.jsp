<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<body>
<%@include file="/common/header.jsp" %>

<style>

  * {
    box-sizing: border-box;
  }

  input[type=text], select, textarea {
    width: 25%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
  }

  label {
    padding: 12px 12px 12px 6px;
    display: inline-block;
  }

  input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
  }

  input[type=submit]:hover {
    background-color: #45a049;
  }

  .container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
  }

  .col-25 {
    float: left;
    width: 13%;
    margin-top: 6px;
  }

  .col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
  }

  /* Clear floats after the columns */
  .row:after {
    content: "";
    display: table;
    clear: both;
  }

  /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
  @media (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
      width: 100%;
      margin-top: 0;
    }
  }

  #output_image {
    max-width: 200px;
  }

  #wrapper {
    text-align: center;
    margin: 0 auto;
    padding: 0px;
    width: 995px;
  }

  .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
  }

  table {
    border-collapse: collapse;
    width: 100%;
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  }

  th, td {
    text-align: left;
    padding: 8px;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2
  }

  th {
    background-color: #4CAF50;
    color: white;
  }

  .rightpanel {

    position: fixed;
    bottom: 0;
    right: 0;
    width: 65%;
    border: 3px solid #73AD21;
    top: 87px;
  }

  tr:hover {
    background-color: green;
    color: white;
  }

  input[type=file] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 250px;

  }

</style>

<!-- End Container -->
<script type="text/javascript">


  function ajaxSubmit(action, formId, actiontype) {

    $("#" + formId).submit(function (e) {

      var postData = $(this).serializeArray();
      var formURL = action

      $.ajax(
        {
          url: formURL,
          type: 'POST',
          data: postData,
          success: function () {
            window.location = "productList.action?actiontype=" + actiontype;
          },
          error: function () {

          }
        }
      );

      e.preventDefault(); //STOP default action
      // e.unbind();

    });
    $("#" + formId).submit();
  }

  function deleteRecord(rowNo, formId, actiontype) {

    var className = $('table').attr('class');
    var currentRowIndex = (rowNo - 1);

    var classselecter = "." + className + ' tbody tr:nth(' + currentRowIndex + ')';


    var prodIdValue = $(classselecter).find('input[type=hidden]').val();
//window.location="/deleteproduct.action?prodId="+prodIdValue+"&actiontype="+actiontype;
    window.location = "/deleteproduct.action?prodId=" + prodIdValue;


  }

  function uploadFile() {
    var filename = document.getElementById("fileImageUploadFile").value;
    $('#fileImageUpload').val(filename);
  }
</script>

<body>
<jsp:useBean id="productListBean" class="com.example.action.ProductAction"></jsp:useBean>
<h4>Product</h4>

<div class="container" style='width: 100%;height:600px' id="containerDiv">
  <form name="product" method="post" id="product" enctype="multipart/form-data">

    <div class="row">
      <div class="col-25">
        <label for="prodId">ProductId</label>
      </div>
      <div class="col-75">
        <input type="text" id="prodId" name="prodId" value="">

      </div>

    </div>


    <div class="row">
      <div class="col-25">
        <label for="prodName">Product Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="prodName" name="prodName" value=""/>

      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="prodDesc">Product Desc</label>
      </div>
      <div class="col-75">
        <input type="text" id="prodDesc" name="prodDesc" value="">

      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="status">Status</label>
      </div>
      <div class="col-75">
        <select id="status" name="status">
          <option value="AC">Active</option>
          <option value="UA">UnActive</option>

        </select>

      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label>Image</label>
      </div>
      <div class="col-75">
        <input type="file" id="fileImageUploadFile" value="" onchange="uploadFile()">
        <input type="hidden" name="fileImageUpload" value="" id="fileImageUpload">
      </div>
    </div>

    &nbsp;
    &nbsp;
    <div class="row">
      <input type="button" value="Save" onclick="ajaxSubmit('/saveProduct.action','product','save')" class="button">
      &nbsp;<input type="button" value="Update" onclick="ajaxSubmit('/updateProduct.action','product','update')"
                   class="button">
    </div>

    <input type="hidden" name="userName" value="${sessionScope.userName}">
  </form>


  <div class="rightpanel" id="rightpanel">
    <display:table id="product" class="product" name="productList" defaultsort="1" pagesize="10"
                   requestURI="productList.action">
      <display:column><input type="checkbox" name="selectedItem"></display:column>
      <display:column property="productId" title="ProductId"/>
      <display:column property="productName" title="ProductName"/>
      <display:column property="productDesc" title="Description"/>
      <display:column property="status" title="Status"/>
      <display:column class="test">
        <input type="hidden" name="deleter" class="deleter" id="deleter${product.productId}"
               value="${product.productId}">
        <input type="button" value="Delete" name="deleted" class="deleted"
               onclick="deleteRecord(${product_rowNum},'product','delete')"
               style="background-color: #4CAF50;color: white;border-radius: 12px">
      </display:column>
      <display:setProperty name="paging.banner.placement" value="bottom"/>
    </display:table>
  </div>

</div>

</body>












