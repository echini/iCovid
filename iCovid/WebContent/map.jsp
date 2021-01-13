<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
  <head>
    <title>Add Map</title>
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCUSw9OONExtOp4ubTxBR-kC1eswnot3mc&callback=initMap&libraries=&v=weekly"
      defer
    ></script>
    <style type="text/css">
      /* Set the size of the div element that contains the map */
      #map {
        height: 400px;
        /* The height is 400 pixels */
        width: 100%;
        /* The width is the width of the web page */
      }
    </style>
    <script>
    
    var coords= [
        <c:forEach var="marker" items="${coords}">
        
 				[<c:out value="${marker.lat}" />, 
                 <c:out value="${marker.lng}" />],
                 
        </c:forEach>   ];
    
    
      // Initialize and add the map
      function initMap() {
        // The location of Uluru
        const uluru = { lat: -25.344, lng: 131.036 };
        // The map, centered at Uluru
        const map = new google.maps.Map(document.getElementById("map"), {
          zoom: 4,
          center: uluru,
          });
        
        addMarkers(map,coords);
      }
        // The marker, positioned at Uluru
        //const marker = new google.maps.Marker({
          //position: { lat:32,lng:32 },
          //map: map,
        //});
       
      
        function addMarkers(map,locations){
        	
        	for(i=0;i<markers.length;i++){
        		const coord=coords[i];
    			var position= new google.maps.LatLng(coord[0],coord[1]);
    			
    			const marker= new google.maps.Marker({
    				position:position,
    				map:map,
    			});
    		}
        	
        }
    </script>
  </head>
  <body>
    <h3>My Google Maps Demo</h3>
    <!--The div element for the map -->
    <div id="map"></div>
    
  </body>
</html>