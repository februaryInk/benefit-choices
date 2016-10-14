function setMap(address) {
  
  var geocoder = new google.maps.Geocoder();

  geocoder.geocode({ address: address }, function(results, status) {
    
    var center = results[0].geometry.location;
  
    var lat = center.lat();
    var lng = center.lng();
    
    var mapOptions = {
      center: new google.maps.LatLng(lat, lng),
      zoom: 11,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    
    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    
    var marker = new google.maps.Marker({
      map: map,
      position: center
    });
  });
}
