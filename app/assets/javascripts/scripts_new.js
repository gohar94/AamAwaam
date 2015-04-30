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

		$.ajax({
		    
		    url: 'complaints/index.json',
		    dataType: 'json',
		    
		    success: function(data){
		      	jQuery.each(data , function() {
					var contentString = this.description;
					console.log(contentString);
					var infowindow = new google.maps.InfoWindow({ content: contentString });
					var latLng = new google.maps.LatLng(this.latitude, this.longitude);
					var marker = new google.maps.Marker({
						position: latLng,
						map: map,
						animation: google.maps.Animation.DROP,
						title: this.description
					});

			        google.maps.event.addListener(marker, 'mouseover', function() {
			          infowindow.open(map,marker);
			        });

			        google.maps.event.addListener(marker, 'mouseout', function() {
			          infowindow.close();
			        });
			    });
		    }, error: function(e) { 
		    	console.log(e);
		    } 
		});
	}
});