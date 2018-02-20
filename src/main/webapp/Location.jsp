

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
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
        ['City',        'Plants',    'Carbon'],
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
        ['Samut Prakan', 38262,      11]
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
       <a href="home.jsp" >Go To Home</a><br><br>
      <jsp:include page="/WEB-INF/jsp/Header.jsp?title=:: L o c a t i o n ::"/>
  <center><div id="chart_div" style="width: 900px; height: 600px;"></div></center>
  </body>
</html>
