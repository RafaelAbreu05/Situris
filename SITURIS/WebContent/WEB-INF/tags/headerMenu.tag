<%@ include file="/WEB-INF/TagHeader.jspf" %>
<%@ include file="/WEB-INF/TagHeader.jspf" %>
<br/><br/>


<w:show ifRoleNot="admin">

 <div id="menuhorizontal" align="center">
  <c:url var='homePageURL' value='/pub/home/HomeAction.list' />
  <a class="g" href='${homePageURL}' title='Home page'>Home</a>
       <a class=w href='' title='espaco'>---- </a>  
  <c:url var='locaisVisitarURL' value='/Locals.jsp' /> 
  <a class="g" href='${locaisVisitarURL}' title='Places to Visit'>Places to visit</a>  
       <a class=w href='' title='espaco'>---- </a>    
  <c:url var='roteirosURL' value='/pub/roteiros/RoteirosAction.list' />
 <a class="g" href='${roteirosURL}' title='Routes'>Routes</a> 
       <a class=w href='' title='espaco'>---- </a>  
</div>

</w:show>


<c:if test="${empty name}">

 <div id="menuhorizontal" align="center">
  <c:url var='homePageURL' value='/pub/home/HomeAction.list' />
  <a class="g" href='${homePageURL}' title='Home page'>Home</a>
       <a class=w href='' title='espaco'>---- </a>  
  <c:url var='locaisVisitarURL' value='/Locals.jsp' /> 
  <a class="g" href='${locaisVisitarURL}' title='Places to Visit'>Places to visit</a>  
       <a class=w href='' title='espaco'>---- </a>    
  <c:url var='roteirosURL' value='/pub/roteiros/RoteirosAction.list' />
  <a class="g" href='${roteirosURL}' title='Rotes'>Routes</a> 
       <a class=w href='' title='espaco'>---- </a>  
</div>

</c:if>
   
   <!-- 
  <!--<c:url var='reportURL' value='/pub/pontosReferencias/ListaPontoAction.list' />
  <a class="g" href='${reportURL}' title='Reference Points'>Reference Points</a>
       <a class=w href='' title='espaco'>---- </a> 
  <c:url var='reportURL' value='/pub/centrosInteresse/VisitasAction.list' />
  <a class="g" href='${reportURL}' title='Visits'>Visits</a>
        <a class=w href='' title='espaco'>---- </a> 
  <c:url var='eventosURL' value='/pub/centrosInteresse/EventosAction.list' />
  <a class="g" href='${eventosURL}' title='Events'>Events</a> -->



 <w:show ifRole="admin">
<div id="menuhorizontaladmin" align="center">
  	<c:url  var='roteiroPURL' value='/main/roteiros/RoteirosAction.list' />
    <a class="g" href='${roteiroPURL}' title='My Routes'>Manage Routes</a>
      <a class=w href='' title='espaco'>---- </a>
    <c:url var='pontosURL' value='/main/pontosReferencia/PontosAction.list' />
    <a class="g" href='${pontosURL}' title='My Reference Points'>Manage Reference Points</a>
      <a class=w href='' title='espaco'>---- </a>
    <c:url var='visitasPURL' value='/main/centrosInteresse/VisitasAction.list' />
    <a class="g" href='${visitasPURL}' title='My Visits'>Manage Visit</a>
      <a class=w href='' title='espaco'>---- </a>
    <c:url var='eventosPURL' value='/main/centrosInteresse/EventosAction.list' />
    <a class="g" href='${eventosPURL}' title='My Events'>Manage Event</a>

  </div>
  </w:show>



<br/><br/>
