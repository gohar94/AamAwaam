$(document).ready(function(){
google.maps.event.addDomListener(window, 'load', initialize);

function initialize() {
  var latlng = new google.maps.LatLng(31.4712025,74.4120089);

  var mapOptions = {
    center: latlng,
    scrollWheel: false,
    zoom: 13
  };
  
  var marker = new google.maps.Marker({
    position: latlng,
    url: '/',
    animation: google.maps.Animation.DROP
  });
  
  var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  marker.setMap(map);
};
});

jQuery(function ($) {
  var performance = [12, 3, 4, 2, 12, 3, 4, 17, 22, 34, 54, 67],
      visits = [3, 9, 12, 14, 22, 32, 45, 12, 67, 45, 55, 7],
      budget = [23, 19, 11, 134, 242, 352, 435, 22, 637, 445, 555, 57];

  $("#performance1").shieldChart({
      primaryHeader: {
          text: "Server Load"
      },
      exportOptions: {
          image: false,
          print: false
      },
      tooltipSettings: {
          enabled: false
      },
      dataSeries: [{
          seriesType: "bar",
          collectionAlias: "Server Load",
          data: performance
      }]
  });

  $("#performance2").shieldChart({
      primaryHeader: {
          text: "Errors"
      },
      exportOptions: {
          image: false,
          print: false
      },
      tooltipSettings: {
          enabled: false
      },
      dataSeries: [{
          seriesType: "area",
          collectionAlias: "Errors",
          data: visits
      }]
  });

  $("#performance3").shieldChart({
      primaryHeader: {
          text: "New Users"
      },
      exportOptions: {
          image: false,
          print: false
      },
      tooltipSettings: {
          enabled: false
      },
      dataSeries: [{
          seriesType: "spline",
          collectionAlias: "New Users",
          data: budget
      }]
  });
});