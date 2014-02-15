<%-- Listing of all Prediction lists. --%>
<div>
<c:if test="${not empty dados}">

<h2>Payment</h2>
<c:if test="${not empty dados.nomeEvento}"><p><h4>Event: ${dados.nomeEvento}</h4></p></c:if>
<c:if test="${not empty dados.nomeVisita}"><p><h4>Visit: ${dados.nomeVisita}</h4></p></c:if>
<p><b>Sponsorship description:</b> ${dados.descricaoPat}</p>
<p><b>Contract from ${dados.dataInicio} to ${dados.dataFim}</b></p><br/>
<li>Client: ${dados.nomeUser}</li>
<li>Profile: ${dados.descricaoPer}</li>
<li>Category: ${dados.descricaoCat}</li> <br/>
<p><b>Number of clicks:</b> ${dados.NCliques}</p>
<p><b>Value paid:</b> ${value} &euro;</p> <br/>
<p><h3>Do you confirm the payment?</h3></p> <br/>
<c:url value='NewPagamentoAction.apply' var='pagURL' />
<form action='${pagURL}' method='POST'>
  <input type="hidden" value='${dados.idTabelaPrecos}' name="idTabela">
  <input type="hidden" value='${pat}' name="Id">
  <input type="hidden" value='${value}' name="value">
  <input type="submit" value='Confirm'>
</form> 
</c:if>
<c:if test="${empty dados}">
It wasn't possible to retrieve the necessary information!
</c:if>
</div>
<br/>