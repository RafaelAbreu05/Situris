<script
	src=" http://maps.google.com/maps?file=api&amp;v=2&amp;key=AIzaSyDrBSpUZiez2WsUYed8vGyPgbxF9LyRHx0"
	type="text/javascript">

</script>
<script type="text/javascript"
	src="http://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0"></script>

<script type="text/javascript">
	function load(latitude, longitude, nome, descicao, tipo, link) {
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
			icon.image = "../../images/largeTDGreenIcons/blank.png";
			var marker = new GMarker(center, {
				icon : icon
			});

			GEvent.addListener(marker, "click", function() {
				marker.openInfoWindowHtml("<b>Visit - </b><b>" + nome + "</b><br/>" + tipo + "<br/>");
			});
			marker.openInfoWindowHtml("<b>Visit - </b><b>" + nome
					+ "</b><br/>" + tipo);

			map.addOverlay(marker);
			document.getElementById("lat").value = center.lat();
			document.getElementById("lng").value = center.lng();

			geocoder = new GClientGeocoder();
		}
	}
</script>
	

<body
	onload="load('${itemForEdit.latitude}','${itemForEdit.longitude}','${itemForEdit.nome}','${itemForEdit.descricao}','${itemForEdit.descricaoTI}','${itemForEdit.link}')"
	onunload="GUnload()">
		<div class="container">
	<div id="output" align="center" >
		<div class="extern">


		    <div id="nomeRoteiro">${itemForEdit.nome}</div>
		    

				<c:if test="${not empty itemForEdit.estrelas}">
				<c:set var="estrelasVisita" value="${itemForEdit.estrelas}" />

				<%for (int i = 1; i <= (Integer) pageContext.getAttribute("estrelasVisita"); i++) {%>
				  <img class="no-margin" src="../../images/star.png" title="star" width="18px">
				<%}%>
			</c:if>
				<br/>
				<div id="tipoRoteiro">
			 <c:if test="${not empty itemForEdit.descricaoTI}">
       ${itemForEdit.descricaoTI}
      </c:if></div>

			</div>
			</div></div>
			<div id="imagemEvento">  <c:if test="${not empty itemForEdit.imagem}">
      <p><img src="../../images/visits/${itemForEdit.nome}.jpeg" width="420px" height="300px" ></p>
      </c:if></div>
	<div id="map" style="width: 440px; height: 300px; float:right; margin-right:11%; "></div>



	


      <br/>
       <div id="leftVisita">
       
      <c:if test="${not empty itemForEdit.descricao}">
      ${itemForEdit.descricao}
      </c:if>
       <br/>
    
      <br/>
      <c:if test="${not empty itemForEdit.link}">
			<p><a href="${itemForEdit.link}">${itemForEdit.link}</a></p>
      </c:if>
		   </div>


		<h2>Comments</h2>
		<br />
		
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
          </c:if>
				</div>
			</c:forEach>
		</div>

		<br/>
		  <br/>  <br/>
		  
			
		<div class="comments" >
			<p class=g>Let here your evaluation:</p>
			<br/>
		
			<form action="/situris/main/evaluation/EvaluationVisitaAction.apply"
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
						<td><input type="hidden" name=idVisita
							value='${itemForEdit.idVisita}'></td>
					</tr>
					<tr>
						<td colspan=2><input type=submit value="Ok">
						</td>
					</tr>
				</table>
			</form>
		</div>
