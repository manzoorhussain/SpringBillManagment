<html>
<body>
<%@include file="/common/header.jsp" %>
<style>
  input[type=text], select {
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }

  input[type=submit] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

  input[type=submit]:hover {
    background-color: #45a049;
  }

  div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;

  }

  /* Clear floats after the columns */
  .row:after {
    content: "";
    display: table;
    clear: both;
  }

  #dealtable {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;

  }

  #dealtable td, #dealtable th {
    border: 1px solid #ddd;
    padding: 8px;
    font-family: Arial;
    font-size: 13px;
    height: 10px;
  }

  #dealtable tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  #dealtable tr:hover {
    background-color: #ddd;
  }

  #dealtable th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
  }

  .fonts {
    font: italic bold 12px/30px Georgia, serif;
  }

  input[type=button] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }

</style>
<script>
  var dealArray = new Array();
  function addDealValue(obj) {

    var currentItemId = obj.id;
    var currentTextId = 'TEXT_' + currentItemId;
    var currentNoOfItem = 'NOOFITEM_' + currentItemId;
    var currentText = $("#" + currentTextId).text();
    var currentNoOfItemText = $("#" + currentNoOfItem).val();

    if (currentNoOfItemText == '') {
      currentNoOfItemText = 1;
    }

    var dealDone = currentText + currentNoOfItemText;
    var len = dealArray.length;
    dealArray[len] = dealDone;
  }

  function createDeal() {
    var deal = '';

    for (var v = 0; v < dealArray.length; v++) {
      deal += dealArray[v] + "~";

    }
    console.log(deal);
    $('#productdealValue').val(deal);
  }

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
            window.location = "productdeal.action?actiontype=" + actiontype;
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
</script>
<body>

<h2>Deal Form</h2>
<jsp:useBean id="dealAction" class="com.example.action.ProductDealAction"/>
<c:set var="productDetail" value="${productDetailMap}"/>

<div>
  <form  name="productdeal" id="productdeal" method="post" class="productdeal">
    <label for="peroductdealId">Deal Id</label>
    <input type="text" id="peroductdealId" name="peroductdealId" placeholder="Deal Id">

    <label for="productdealName">Name</label>
    <input type="text" id="productdealName" name="productdealName" placeholder="Name">


    <label for="productdealTitle">Title</label>
    <input type="text" id="productdealTitle" name="productdealTitle" placeholder="Title"/>


    <label for="productdealPrice">Price</label>
    <input type="text" id="productdealPrice" name="productdealPrice" placeholder="Price"/>
<br>

    <label for="productdealStatus">Status</label>
    <select id="productdealStatus" name="productdealStatus">
      <option value="AC">Active</option>
      <option value="UA">UnActive</option>

    </select>


    <div class="row">
      <c:forEach var="row" items="${productDetail}" varStatus="outerCounter">
        <c:set value="${row.value}" var="dealListValue"/>
        <c:set value="${row.key.split('~')[1]}" var="dealListKey"/>
        <c:set var="currentIndex" value="${outerCounter.index+1}"/>

        <div class="col-md-4">
          <div class="card" style="border: hidden green;height: 300px;width: 300px;overflow-y: scroll;">

            <h5 class="card-header">${dealListKey}</h5>

            <div class="card-body">

              <p class="card-text" style="height: auto">

                <c:forEach var="dealListNameList" varStatus="dealListCounter" items="${dealListValue}">
              <table id="dealtable">

                <tr>
                  <td><input type="checkbox" name="dealItem" id="${dealListKey}_${dealListCounter.index}"
                             onclick="addDealValue(this);"></td>
                  <td id="TEXT_${dealListKey}_${dealListCounter.index}">${dealListNameList.productDetailName}</td>
                  <td><input type="text" name="dealItemValue" id="NOOFITEM_${dealListKey}_${dealListCounter.index}"
                             value=""
                             style="height: 13px;width: 50px">

                  </td>
                </tr>
              </table>


              <br>

              </c:forEach>

              </p>
            </div>
          </div>
        </div>

        <!--End column-->

      </c:forEach>

    </div>
    <!--End Row-->

    <!--End container-->
    <input type="hidden" name="productdealValue" id="productdealValue"/>
    <input type="hidden" name="userName" value="${sessionScope.userName}"/>

    <div style="width: 100%">
      <input type="button" value="CreateDeal" onclick="createDeal()"/>&nbsp;
      <%--<input type="submit" value="Save"/>--%>
      <input type="button" value="Save" onclick="ajaxSubmit('/saveproductdeal.action','productdeal','save')" class="button">
    </div>
  </form>
</div>

</body>
<html>
<body>
