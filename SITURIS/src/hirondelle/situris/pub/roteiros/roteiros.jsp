<div class="container">
	   <c:forEach var="item" items="${itemsForListing}" varStatus="index">

      <div class="inline">
   
  	          <span class="roteirosPais" >
            
           
           
			 <a href='${evURL}'>${item.nome}</a>
			 <br/>
				<h3>${item.descricaoTI}</h3>
			
      <c:if test="${not empty item.estrelas}">
      <c:set var="estrelasRot" value="${item.estrelas}"/>
        <% for(int j = 1; j <= (Integer)pageContext.getAttribute("estrelasRot"); j++) {%>
          <img class="no-margin" src="../../images/star.png" title="star" width="12px">
        <% } %>
        
      </c:if>
     
             <c:url value="/pub/roteiros/RoteiroAction.show" var="repoURL">
				<c:param name='ParentId' value='${item.idRoteiro}' />
			</c:url>
				<br/>
			 <img   src="../../images/roteiros/${item.nome}.jpeg" width="120px" height="80px;"  ></div>
			
          
				 
		   </span>
		
         </div>
    
			   	</c:forEach>
			

</div>

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>