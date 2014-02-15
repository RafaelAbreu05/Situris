<%-- List-and-edit JSP for Predictions --%>
<div class="container">

<c:set value='PredictionAction' var='baseURL'/> 
<tags:setFormTarget using='${baseURL}' />


</div>
   <div class="box4">
  <h4>Account details</h4>

  <b>Username:</b> ${Acc.username}<p/>
  <b>Name:</b> ${Acc.name}<p/>
  <b>Email:</b> ${Acc.email}<p/>
  <b>Role:</b> ${Acc.role}<p/> 
  
  <br/>

   <h4><u>Details of usage:</u></h4>
   <p>Routes: ${AccStat.numRoteiros} | Reference Points: ${AccStat.numPtRef}<p/>
   <p>Events: ${AccStat.numEvs} | Visits: ${AccStat.numVis}<p/>
  <p>Evaluations: ${AccStat.numEvas}<p/>
  <p>Complaints: ${AccStat.numComps}<p/>
  <p>Number of Proposals made: ${AccStat.numProps}<p/>
  <w:show ifRole="client"><p>Number of Sponsorships: ${AccStat.numPats}<p/></w:show>
</div>


 