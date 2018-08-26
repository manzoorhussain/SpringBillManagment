<html>
<body>
<%@include file="/common/header.jsp" %>
<%@include file="/common/open-model.jsp"%>
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
  var dealArray = [];
  function addDealValue(obj) {

    var currentItemId = obj.id;
    var currentTextId = 'TEXT_' + currentItemId;
    var currentNoOfItem = 'NOOFITEM_' + currentItemId;
    var currentProductPrice = 'PRODUCTPRICE_' + currentItemId;
    var currentText = $("#" + currentTextId).text();
    var currentNoOfItemText = $("#" + currentNoOfItem).val();
    var currentProductPriceText= $("#" + currentProductPrice).val();

    if (currentNoOfItemText == '') {
      currentNoOfItemText = 1;
    }

   //var dealDone = currentText + currentNoOfItemText+currentProductPriceText;
    var dealDone = "{"+"nameofitem:"+currentText+","+"noofitem:"+currentNoOfItemText+","+"priceofitem:"+currentProductPriceText+"}";
    var len = dealArray.length;
    dealArray[len] = dealDone;
  }

  function showBillModel(){
alert(dealArray);
   // $('#productdealValue').val(deal);
    //window.location = "billmodel.action?showBillModel=true&bill="+dealArray;

    $.ajax({
      url: 'billmodel.action?showBillModel=true',
      type: 'POST',
      data: JSON.stringify(dealArray),
      contentType: 'application/json; charset=utf-8',
      dataType: 'json',
      success: function(response) {
        alert(response);
      }
    });
  }
</script>
<body>

<h2>Bill</h2>
<jsp:useBean id="dealAction" class="com.example.action.BillAction"/>
<c:set var="productDetail" value="${productDetailMap}"/>
<c:set var="productDealModelList" value="${productDealModelList}"/>

<div>
  <form action='/saveproductdeal.action' name="productdeal" id="productdeal" method="post" class="productdeal">
    <label for="customerName">Customer Name</label>
    <input type="text" id="customerName" name="customerName" placeholder="Walking Customer">


    <label for="productdealTitle">Title</label>
    <input type="text" id="productdealTitle" name="productdealTitle" placeholder="Title"/>


    <label for="productdealPrice">Price</label>
    <input type="text" id="productdealPrice" name="productdealPrice" placeholder="Price"/>


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
                  <td>
                    <input type="checkbox" name="dealItem" id="${dealListKey}_${dealListCounter.index}"
                           onclick="addDealValue(this);">
                    <input type="hidden" name="productPrice" id="PRODUCTPRICE_${dealListKey}_${dealListCounter.index}"
                           value="${dealListNameList.productDetailprice}"/>
                  </td>
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


    <!--DEAL LIST START-->
    <div class="row">

      <table border="2" id="dealTable" width="100%">
        <tr>
          <th>select</th>
          <th>Id</th>
          <th>Name</th>
          <th>Title</th>
          <th>Price</th>
          <th>Item</th>
        </tr>
        <c:forEach var="productDealList" items="${productDealModelList}" varStatus="productDealCounter">
          <c:set value="${fn:split(productDealList.dealValue,'~')}" var="dealValues"/>
          <tr>
            <td>
              <input type="checkbox" name="deal" id="deal_${productDealCounter.index}">
              <input type="hidden" name="dealPrice" id="DEALPRICE_${productDealCounter.index}" value="${productDealList.dealPrice}"/>
            </td>
            <td id="dealId_${productDealCounter.index}">${productDealList.dealId}</td>
            <td id="dealName_${productDealCounter.index}">${productDealList.dealName}</td>
            <td id="dealTitle_${productDealCounter.index}">${productDealList.dealTitle}</td>
            <td id="dealPrice_${productDealCounter.index}">${productDealList.dealPrice}</td>
            <td>
              <table>
                <tr>
                  <c:forEach var="dealValuesList" items="${dealValues}">
                    <td id="dealItem_"${productDealCounter.index}>
                        ${dealValuesList}
                    </td>
                  </c:forEach>
                </tr>
              </table>

            </td>

          </tr>
        </c:forEach>
      </table>

    </div>
    <!--DEAL LIST END-->
    <!--End Row-->

    <!--End container-->
    <input type="hidden" name="productdealValue" id="productdealValue"/>
    <input type="hidden" name="userName" value="${sessionScope.userName}"/>

    <div style="width: 100%">
      <%--<input type="button" value="Generate Bill" onclick="generatBill()"/>&nbsp;---%>
    <input type="button" value="Generate Bill" onclick="showBillModel()"/>
      <%--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>

    </div>
  </form>
</div>

</body>
<html>
<body>
