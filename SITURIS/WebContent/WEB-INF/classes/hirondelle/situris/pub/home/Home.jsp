
<div class="roteiros10">
  <c:if test="${not empty Roteiros}">
  <h1>The Best Routes</h1>
    <ol>
      <c:forEach var='rot' items='${Roteiros}'>
      <div id="cadaRoteiroHome">
        <c:url value="/pub/roteiros/RoteiroAction.show" var="rotURL">
          <c:param name='ParentId' value='${rot.idRoteiro}' />
        </c:url>
        <div id="homExterior">
        <div id="homeleft">
   
          <img   src="../../images/roteiros/${rot.nome}.jpeg" width="120px" height="80px;" margin="2%"></div>
          <div id="homeright">
        <div id="large">
     <a href='${rotURL}'>${rot.nome}</a> </div>
   
       <div id="tipoInteresseEvento">
      <c:if test="${not empty rot.descricaoTI}">${rot.descricaoTI}</c:if></div>
       
      <c:if test="${not empty rot.estrelas}">
        <c:set var="estrelasRot" value="${rot.estrelas}"/>
          <% for(int i = 1; i <= (Integer)pageContext.getAttribute("estrelasRot"); i++) {%>
            <img class="no-margin" src="../../images/star.png" title="star" width="12px;">
          <% } %>
          </c:if>
          </div>
          </div></div>
         
      </c:forEach>
    </ol>
  </c:if>
</div>

<div class="eventos10">
  <c:if test="${not empty Eventos}">
  <div id="rightHome">
  <h1>Top 10 Recent Events:</h1>
  <br/> 

    
      <c:forEach var='ev' items='${Eventos}'>
        <c:url value="/pub/centrosInteresse/EventoAction.show" var="evURL">
          <c:param name='ParentId' value='${ev.idEvento}' />
        </c:url> 
                              
         
       <a href='${evURL}'>${ev.nome}</a>
       
       
        <!--<c:if test="${ not empty ev.link}"><a class=g href='${ev.link}'><u>(Event Website)</u></a></c:if>-->
      <div id="datas">
          <c:if test="${ not empty ev.dataInicio}">
            From ${ev.dataFim}
          </c:if>
          <c:if test="${ not empty ev.dataFim}">
            To ${ev.dataFim}
          </c:if></div>
          <br/>
          <p/>
  
      
      </c:forEach>
    </div>
  </c:if>
</div>
<br/>
<br/>
<br/>
<br/><br/>
<br/><br/>
<br/><br/>
<br/><br/>
<br/><br/>
<br/><br/>
<br/>
<br/><br/>
<br/><br/>
<br/><br/>
<br/>
<br/><br/>
<br/><br/>
<br/>
<br/>
<!-- 
<div class="patrocinios10">
  <c:if test="${not empty Patrocinios}">
  <h2>10 most popular events/visits:</h2>
  <ol>
  
    <c:forEach var='pat' items='${Patrocinios}'>
      <c:if test="${ not empty pat.idEvento}">
        <c:url value="/pub/centrosInteresse/EventoAction.show" var="patURL">
          <c:param name='ParentId' value='${pat.idEvento}' />
        </c:url> 
        <li><a href='${patURL}'>${pat.nomeEvento}</a>
      </c:if>
      <c:if test="${not empty pat.idVisita}">
        <c:url value="/pub/centrosInteresse/VisitaAction.show" var="patURL">
          <c:param name='ParentId' value='${pat.idVisita}' />
        </c:url> 
        <li><a href='${patURL}'>${pat.nomeVisita}</a>
      </c:if>
      
    </c:forEach>
  </ol>
  </c:if> 
  <br/><br/>
</div> -->
