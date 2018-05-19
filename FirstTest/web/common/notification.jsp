<%--
  Created by IntelliJ IDEA.
  User: Folio 9480
  Date: 3/3/2018
  Time: 11:57 PM
  To change this template use File | Settings | File Templates.
--%>


<body>
<script type="application/javascript">

  function saveMessage(msge) {
    $.notify(msge,
      {
        position: "bottom right",
        className: 'success'
      }
    );//end notify

  }

  function updateMessage(msge) {

    $.notify(msge,
      {
        position: "bottom right",
        className: 'success'
      }
    );//end notify

  }

  function deleteMessage(msge) {
    $.notify(msge,
      {
        position: "bottom right",
        className: 'error'
      }
    );//end notify


  }
</script>


<script>
  <c:set value="${param.actiontype}" var="operatiion"/>
  <c:choose>

  <c:when test="${operatiion eq 'save'}">
  saveMessage("Save Successfully");
  </c:when>
  <c:when test="${operatiion eq 'update'}">
  updateMessage("Update Successfully");
  </c:when>
  <c:when test="${operatiion eq 'delete'}">
  deleteMessage("Delete Successfully");
  </c:when>

  </c:choose>
</script>
</body>
