

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <link href="css/button.css" rel="stylesheet">
      <link href="css/navbarCSS.css" rel="stylesheet">
      <link href='https://fonts.googleapis.com/css?family=Mitr' rel='stylesheet'>
    <script type='text/javascript' src='https://www.gstatic.com/charts/loader.js'></script>
    <script type='text/javascript'>
     google.charts.load('current', {
       'packages': ['geochart'],
       // Note: you will need to get a mapsApiKey for your project.
       // See: https://developers.google.com/chart/interactive/docs/basic_load_libs#load-settings
       'mapsApiKey': 'AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY'
     });
     google.charts.setOnLoadCallback(drawMarkersMap);

      function drawMarkersMap() {
      var data = google.visualization.arrayToDataTable([
        ['City',        'Plants',    'Carbon Absorb'],
        ['Bangkok',      2761477,    1285.31],
        ['Chiang Mai',   1324110,    181.76],
        ['Chiang Rai',   959574,     117.27],
        ['Chumphon',     907563,     130.17],
        ['Loei',         655875,     158.9],
        ['Nakhon Phanom',607906,     243.60],
        ['Narathiwat',   380181,     140.7],
        ['Nonthaburi',   371282,     102.41],
        ['Phuket',       67370,      213.44],
        ['Ratchaburi',   52192,      43.43],
        ['Samut Prakan', 38262,      11],
        ['Surin',        71282,     101.41]
        
        
        ]);

      var options = {
        region: 'TH',
        displayMode: 'markers',
        backgroundColor: '#66CCFF',
        datalessRegionColor: '#33CC66',
        colorAxis: {colors: ['green', 'blue']}
      };

      var chart = new google.visualization.GeoChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    };
    </script>
  </head>
  <body>
       
      <div id="navbar">
            <img src="https://www.img.in.th/images/52e76f9dbb2d67a9bb5ab74db601c3a0.png">

            
            <a href="${pageContext.servletContext.contextPath}/HomeServlet" method="post">Home</a>
            <a>Planting</a>           
            <a href="${pageContext.servletContext.contextPath}/LocationServlet" method="post">Location</a>
         
            <a href="${pageContext.servletContext.contextPath}/KnowledgeServlet" method="post">Knowledge</a>
       
            <a href="${pageContext.servletContext.contextPath}/CampaignServlet" method="post">Campaign</a>
            
      
        </div>
            <br><br><br>
      <jsp:include page="/WEB-INF/jsp/Header.jsp?title=:: L o c a t i o n ::"/>
       <br> 
  <center><div id="chart_div" style="width: 1100px; height: 900px;"></div></center>
  </body>
</html>
