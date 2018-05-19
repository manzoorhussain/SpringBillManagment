<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="/common/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<style>
.width100{
width:100%;
}
.width30{
width:30%;
}
.width40{
width:40%;
}


.width80{
width:80%;
}
:height20{
height:20%;
}
. borderthin{
	border-style: solid;
    border-width: thin;
}
.width166{
width: 166px;
}
.width218{
width:130px;
}
.width38{
width:38%px;
}
.pading{
    padding: 0px;
    padding-bottom: 16px;
}
.scrollBar{
overflow-y: scroll;
max-height: 225px;"
}

::-webkit-scrollbar {
    width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
    background: #f1f1f1; 
}
 
/* Handle */
::-webkit-scrollbar-thumb {
    background: #888; 
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
    background: #555; 
}
.lavenderblushcolor{
background-color:lavenderblush;
}
.pinkcolor{
background-color:pink;
}
.width95{
width:95px;
}
.width295{
width:295px;
}
.heigth50{
height:50px;
font-size:30px;
}
.button-left{
margin-left: 515px;
}
</style>

<script type="text/javascript">

function showBurgerTotal(index){

	var price=parseInt($('#price'+index).val());
	var quantity=parseInt($('#quantity'+index).val());
	var totalprice=(price*quantity);
	$('#total'+index).text(totalprice);
	
	
	if(totalprice>0){
	$('#selectItem'+index).prop('checked', true);
	}
	
	
}

 function showBurgerSum(){
	var sum=0;
	var eachprodtotal = document.getElementsByName("total")
    for(var i=0;i<eachprodtotal.length;i++){
   	var eachtotal=$('#'+eachprodtotal[i].id).text();
    var v=parseInt(eachtotal);
    sum+=v;
    }
	
	$('#burgerSumText').val(sum);
} 
 
 function ClearBurger(){
	 for(var q=1 ;q<=4 ;q++){
		$('#quantity'+q).val(''); 
		$('#total'+q).text('0');
		
	 }
	 $('#burgerSumText').text('0');
	
 }

 function showShakeTotal(index){

		var price=parseInt($('#shakeprice'+index).val());
		var quantity=parseInt($('#shakequantity'+index).val());
		
		var totalprice=(price*quantity);
		$('#shaketotal'+index).text(totalprice);
		
		if(totalprice>0){
		$('#shakeselectItem'+index).prop('checked', true);
		}
		
		
		
		
		
	}
 
 function showShakeSum(){
		var sum=0;
		var eachprodtotal = document.getElementsByName("shaketotal")
	    for(var i=0;i<eachprodtotal.length;i++){
	   	var eachtotal=$('#'+eachprodtotal[i].id).text();
	    var v=parseInt(eachtotal);
	    sum+=v;
	    }
		
		$('#shakeitemCalculationtext').val(sum);
	} 
</script>



<body onload="startTime()" style="background-color:lavender;">

 <jsp:useBean id="currentDate" class="java.util.Date" />
<div class="container-fluid">
<div class="row">
    <div class="col-sm-2" style="background-color:LightBlue;"><b>LOGO</b></div>
    <div class="col-sm-8" style="background-color:lavenderblush;"><center><marquee><b>Fast Food Restaurant Management System</b></marquee></center></div>
    <div class="col-sm-2" style="background-color:LightBlue;">
    Date: <b><fmt:formatDate type ="date" value = "${currentDate}" pattern = "dd-MMM-yyyy"/></b><br>
	Day:Monday<br>
	Time:<b><label id="clock"></label></b>
    </div>
</div>
&nbsp 
   <div class="row">
    <div class="col-sm-6 scrollBar">
    <table border="2" id="shakesTable">

 <tr>
 <th></th>
 <th colspan="4">Item</th>
 <th>Price(PKR)</th>
 <th>Quantity</th>
 <th>Total</th>
 <tr>
 
 
  <tr>
  <th><input type="checkbox" name="selectItem" id="selectItem1"></th>
 <th colspan="4">Zinger Buger</th>
 <th><input type="text" class="width80 lavenderblushcolor" value="150" disabled id="price1"></th>
 <th><input type="text" class="width80" name="quantity"  id="quantity1" value="0" onblur='showBurgerTotal(1);'></th>
 <th><label id='total1' name="total">0</label></th>
 <tr>
 
 
   <tr>
   <th><input type="checkbox" name="selectItem" id="selectItem2"></th>
 <th colspan="4">Beef Buger</th>
 <th><input type="text" class="width80 lavenderblushcolor" value="150" disabled  id="price2"></th>
 <th><input type="text" class="width80" name="quantity"  id="quantity2" value="0" onblur='showBurgerTotal(2);'></th>
 <th><label id='total2' name="total">0</label></th>
 <tr>
 
   <tr>
   <th><input type="checkbox" name="selectItem" id="selectItem3"></th>
 <th colspan="4">Chicken Buger</th>
 <th><input type="text" class="width80 lavenderblushcolor" value="150" disabled id="price3"></th>
 <th><input type="text" class="width80" name="quantity"  id="quantity3" value="0" onblur='showBurgerTotal(3);'></th>
 <th><label id='total3'name="total">0</label></th>
 <tr>
 
 
    <tr>
 <th><input type="checkbox" name="selectItem" id="selectItem4"></th>
 <th colspan="4">Simple Buger</th>
 <th><input type="text" class="width80 lavenderblushcolor" value="150" disabled id="price4"></th>
 <th><input type="text" class="width80" name="quantity"  id="quantity4" value="0" onblur='showBurgerTotal(4);'></th>
 <th><label id='total4' name="total">0</label></th>
</tr>

    

<tr>

<th colspan="10">
<input type="button" name="itemCalculationButton" id="itemCalculationtextBurger" value="Calculate" class="width95 btn btn-primary " onclick='showBurgerSum();'>
	&nbsp;
<input type="text" name="itemCalculationtext" id="burgerSumText" value="0" class="width218 pinkcolor">
<!-- <input type="button" name="clearButtonBurger" id="clearButtonBurger" value="Clear" class="width95 btn btn-primary " onclick='ClearBurger();'> -->
</th>

</tr>
</table>
    
    </div>
    
   
    <div class="col-sm-6 scrollBar">
    <table border="2" id="shakesTable">

 <tr>
 <th></th>
 <th colspan="4">Item</th>
 <th>Price(PKR)</th>
 <th>Quantity</th>
 <th>Total</th>
 <tr>
 
 
  <tr>
  <th><input type="checkbox" name="selectItem" id="shakeselectItem1"></th>
 <th colspan="4">Milk Shake</th>
 <th><input type="text"  id="shakeprice1" class="width80 lavenderblushcolor" value="150" disabled  ></th>
 <th><input type="text" class="width80" name="quantity"  id="shakequantity1" value="0" onblur='showShakeTotal(1)' ></th>
 <th><label id='shaketotal1' name="shaketotal">0</label></th>
 <tr>
 
 
   <tr>
   <th><input type="checkbox" name="selectItem" id="shakeselectItem2"></th>
 <th colspan="4">Vallena Shake</th>
 <th><input type="text"  id="shakeprice2" class="width80 lavenderblushcolor" value="150" disabled></th>
 <th><input type="text" class="width80" name="quantity"  id="shakequantity2" value="0" onblur='showShakeTotal(2)'></th>
 <th><label id='shaketotal2' name="shaketotal">0</label></th>
 <tr>
 
   <tr>
   <th><input type="checkbox" name="selectItem" id="shakeselectItem3"></th>
 <th colspan="4">Chocolate Shake</th>
 <th><input type="text"  id="shakeprice3" class="width80 lavenderblushcolor" value="150" disabled></th>
 <th><input type="text" class="width80" name="quantity"  id="shakequantity3" value="0" onblur='showShakeTotal(3)'></th>
 <th><label id='shaketotal3' name="shaketotal">0</label></th>
 <tr>
 
 
    <tr>
 <th><input type="checkbox" name="selectItem" id="shakeselectItem4"></th>
 <th colspan="4">chocolate</th>
 <th><input type="text" id="shakeprice4" class="width80 lavenderblushcolor" value="150" disabled></th>
 <th><input type="text" class="width80" name="quantity"  id="shakequantity4" value="0" onblur='showShakeTotal(4)'></th>
<th><label id='shaketotal4' name="shaketotal">0</label></th>
</tr>

<tr>

<th colspan="10">
<input type="button" name="shakeitemCalculationButton" id="shakeitemCalculationButton" value="Calculate" class="width95 btn btn-primary" onclick="showShakeSum();">
	&nbsp;
<input type="text" name="shakeitemCalculationtext" id="shakeitemCalculationtext" value="0" class="width218 pinkcolor">
</th>

</tr>
</table>
    </div>
  
  
  <div>
  
  
</div>  
  </div>
&nbsp &nbsp 
<div class="row">
  <input type="button" name="showTotal" id="showTotal" value="Total" class="width295 heigth50 button-left btn btn-primary">
</div>


&nbsp &nbsp  &nbsp 
<div class="row" style='display:none'>
    <div class="col-sm-12">
        
        
    <table border="2" id="billTable" width='50%'>

 
  <tr>
 
 <th colspan="4">Milk Shake</th>
 <th><input type="text" class="width80 lavenderblushcolor" value="150" disabled ></th>
 <th><input type="text" class="width80" name="quantity"  id="quantity1" value="0" ></th>
 
 <tr>
 
 
   <tr>

 <th colspan="4">Vallena Shake</th>
 <th><input type="text" class="width80 lavenderblushcolor"value="150" disabled></th>
 <th><input type="text" class="width80" name="quantity"  id="quantity2" value="0" ></th>

 <tr>
 
   <tr>
 
 <th colspan="4">Chocolate Shake</th>
 <th><input type="text" class="width80 lavenderblushcolor" value="150" disabled></th>
 <th><input type="text" class="width80" name="quantity"  id="quantity3" value="0" ></th>

 <tr>
 
 
    <tr>

 <th colspan="4">chocolate</th>
 <th><input type="text" class="width80 lavenderblushcolor" value="150" disabled></th>
 <th><input type="text" class="width80" name="quantity"  id="quantity4" value="0" ></th>
 
</tr>

<tr>

<th colspan="10">
<input type="button" name="itemCalculationButton" id="itemCalculationButton" value="Calculate" class="width95 btn btn-primary">
	&nbsp;
<input type="text" name="itemCalculationtext" id="itemCalculationtext" value="0" class="width218 pinkcolor">
</th>

</tr>
</table>
        
    
    </div>
    
    

    
    
</div>


</div>
</body>

















  <!-- Body Area End -->
