<script
	src=" http://maps.google.com/maps?file=api&amp;v=2&amp;key=AIzaSyDrBSpUZiez2WsUYed8vGyPgbxF9LyRHx0"
	type="text/javascript">

</script>
<script type="text/javascript"
	src="http://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0"></script>

<script type="text/javascript">
	function load(latitude, longitude, nome, descicao, tipo, link, dataI, dataF) {
		if (GBrowserIsCompatible()) {
			var map = new GMap2(document.getElementById("map"));
			map.addControl(new GOverviewMapControl());
			map.enableDoubleClickZoom();
			map.enableScrollWheelZoom();
			map.addControl(new GMapTypeControl());
			map.addControl(new GSmallMapControl());
			var center = new GLatLng(latitude, longitude);
			map.setCenter(center, 11);
			geocoder = new GClientGeocoder();

			// Create our "tiny" marker icon
			var icon = new GIcon(G_DEFAULT_ICON);
			icon.image = "../../images/largeTDBlueIcons/blank.png";
			var marker = new GMarker(center, {
				icon : icon
			});

			GEvent.addListener(marker, "click", function() {
				marker.openInfoWindowHtml("<b>Event - </b><b>" + nome
						+ "</b><br/>" + tipo + "<br/>" + dataI + " - " + dataF);
			});
			marker.openInfoWindowHtml("<b>Event - </b><b>" + nome
					+ "</b><br/>" + tipo + "<br/>" + dataI + " - " + dataF);
			map.addOverlay(marker);
			document.getElementById("lat").value = center.lat();
			document.getElementById("lng").value = center.lng();

			geocoder = new GClientGeocoder();
		}
	}
</script>	
<body
	onload="load('${itemForEdit.latitude}','${itemForEdit.longitude}','${itemForEdit.nome}','${itemForEdit.descricao}','${itemForEdit.descricaoTI}','${itemForEdit.link}','${itemForEdit.dataInicio}','${itemForEdit.dataFim}')"
	onunload="GUnload()">
			<div align="center">
			
	<div id="tituloEvento">${itemForEdit.nome}</div> 
	
		<c:if test="${not empty itemForEdit.estrelas}">
        <c:set var="estrelasVisita" value="${itemForEdit.estrelas}" />
     
        <%for (int i = 1; i <= (Integer) pageContext.getAttribute("estrelasVisita"); i++) {%>
          <img class="no-margin" src="../../images/star.png" title="star" width="17px">
        <%}%>
      </c:if>
      <div id="tipoInteresseEvento"> 
      <c:if test="${not empty itemForEdit.descricaoTI}">
         ${itemForEdit.descricaoTI}
         
      </c:if></div>
      <br/>
     
	</div>

	<div>
	<div id="map" style="width: 440px; height: 300px; float:right; margin-right:11%; "></div>
	<div id="imagemEvento"> <c:if test="${not empty itemForEdit.imagem}">
      <p><img src="../../images/events/${itemForEdit.imagem}"   width="420px" height="300px" ></p>
      </c:if></div>
   
</div>
      <br/>
       <div id="leftEvento">
           
    	<c:if test="${not empty itemForEdit.descricao}">
       ${itemForEdit.descricao}
      </c:if>
      <br/>  <br/>
      <c:if test="${not empty itemForEdit.link}">
      <p><a href="${itemForEdit.link}">${itemForEdit.link}</a></p>
      </c:if>
     </div>
    
        	<div id="datasEvento">
			    <c:if test="${not empty itemForEdit.dataInicio}">
        <p>Start Date: ${itemForEdit.dataInicio}</p>
      </c:if>
   
      <c:if test="${not empty itemForEdit.dataFim}">
			 <p>End Date: ${itemForEdit.dataFim}</p>
      </c:if>
      </div>
  
	   <c:if test="${not empty itemsForListing}">
		<h3>Comments</h3>
			  <br/>  
		<div class="container">
			<c:forEach var="item2" items="${itemsForListing}" varStatus="index">
				<div class="box5">
					<div class="g">By ${item2.nomeUtilizador} on ${item2.data}</div>
					<c:if test="${not empty item2.estrelas}">
            <c:set var="estrelasVisita" value="${itemForEdit.estrelas}" />
            Evaluation:
            <%for (int i = 1; i <= (Integer) pageContext.getAttribute("estrelasVisita"); i++) {%>
              <img class="no-margin" src="../../images/star.png" title="star" width="2%">
            <%}%>
          </c:if>
          <c:if test="${not empty item2.comentario}">
            <p>Comment: ${item2.comentario}</p>
            <br/>
          </c:if>
				</div>
			</c:forEach>
			</div></c:if>


		<br/>
		
		<div class="comments" >
		<br/>
			<p class=g>Let here your evaluation:</p>
			<br/>
			<form action="/situris/main/evaluation/EvaluationEventoAction.apply"
				method="POST" class="user-input" name='giveMeFocus'>
				<table>
					<tr>
						<td><label>Evaluation</label></td>
					
						<td><input type="radio" name="stars" value="1" /><label
							for="star1" title="Schlecht"> 1</label> <input type="radio"
							name="stars" value="2" /><label for="star2" title="So gut wie">
								2</label> <input type="radio" name="stars" value="3" /><label
							for="star3" title="Gut"> 3</label> <input type="radio"
							name="stars" value="4" /><label for="star4" title="Geil">
								4</label> <input type="radio" name="stars" value="5" /><label
							for="star5" title="Super !!"> 5</label></td>
					</tr>
					<tr>
						<td>Comment:</td>
						<td><textarea name=comment cols="40" rows="5"></textarea></td>
					</tr>
					<tr>
						<td><input type="hidden" name=idEvento
							value='${itemForEdit.idEvento}'></td>
					</tr>
					<tr>
						<td align="center" colspan=2><input type=submit value="Ok"></td>
					</tr>
				</table>
			</form>
		</div>

		
		<br />