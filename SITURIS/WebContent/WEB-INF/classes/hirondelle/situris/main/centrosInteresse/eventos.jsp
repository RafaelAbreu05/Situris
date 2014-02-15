<div class="container">
</div>
  <div align="right">
  <c:url var='evURL' value='/main/centrosInteresse/EventoNewAction.show' />
  <a class="o" href='${evURL}' title='ev'><u>Add a new Event</u></a>
  </div>
<c:if test="${not empty itemsForListing}">
<table class="admintables" title="All Events Available"> 
 <tr>
  <th title="Line Number"></th>
  <th>Title</th>
  <th>Link</th>
  <th>Interest Type</th>
  <th>Begin Date</th>
  <th>End Date</th>
  <th>No. Evaluations</th>
  <th>Average Rating</th>
  <th>Sponsorship</th>
  <th>Sponsorship End Date</th>
 </tr>
<w:alternatingRow> 
<c:forEach var="item" items="${itemsForListing}" varStatus="index">
 <tr class="row_highlight">
  <td title="Line Number">${index.count}</td>
  <td>
    <c:if test="${not empty item.idEvento}">
      <c:url value="/pub/centrosInteresse/EventoAction.show" var="evURL">
        <c:param name='ParentId' value='${item.idEvento}' />
      </c:url> 
     <a href='${evURL}'>${item.nome}</a>
   </c:if>
  </td>
  <td align='center'>
  <c:if test="${not empty item.link}"><a class=g href='${item.link}'><u>Website</u></a></c:if>
  <c:if test="${empty item.link}"> - </c:if>
  </td>
  <td align='center'>
  <c:if test="${not empty item.descricaoTI}">${item.descricaoTI}</c:if>
  <c:if test="${empty item.descricaoTI}"> - </c:if>
  </td>
  <td align='center'>
  <c:if test="${not empty item.dataInicio}">${item.dataInicio}</c:if>
  <c:if test="${empty item.dataInicio}"> - </c:if>
  </td>
  <td align='center' >
    <c:if test="${not empty item.dataFim}">${item.dataFim}</c:if>
    <c:if test="${empty item.dataFim}"> - </c:if>
  </td>
  <td align='center'>
    <c:if test="${not empty item.numAva}">${item.numAva}</c:if>
    <c:if test="${empty item.numAva}"> - </c:if>
  </td>
  <td align='center'>
    <c:if test="${not empty item.estrelasMedia}">${item.estrelasMedia}</c:if>
    <c:if test="${empty item.estrelasMedia}"> - </c:if>
  </td>
  <td align='center'>
  <c:if test="${empty item.pagamentoPat}">Doesn't Have</c:if>
  <c:if test="${item.pagamentoPat == 0}">Not Paid</c:if>
  <c:if test="${item.pagamentoPat == 1}">Paid</c:if>
  </td>
  <td align='center'>
    <c:if test="${not empty item.dataFimPat}">${item.dataFimPat}</c:if>
    <c:if test="${empty item.dataFimPat}"> - </c:if>
  </td>
  <td align="center">
    <c:url value='EventoAction.fetchForChange' var='editURL'/>
    <form action='${editURL}' method='POST'>
      <input type="hidden" value='${item.idEvento}' name="IdEvento">
      <input type="submit" value='Edit'>
    </form> 
  </td> 
  <td align="center">
    <c:url value='EventoAction.delete' var='delURL'>
    <c:param name='IdEvento' value='${item.idEvento}' />
   </c:url>
    <form action='${delURL}' method='POST'>
      <input type="submit" value='Delete'>
    </form> 
  </td> 
 </tr>
</c:forEach>
</w:alternatingRow>
</table>
</c:if>