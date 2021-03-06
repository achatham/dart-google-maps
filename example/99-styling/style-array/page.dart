import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = new LatLng(40.6743890, -73.9455)
    ..mapTypeId = MapTypeId.ROADMAP
    ..styles = [
      new MapTypeStyle()
        ..featureType = MapTypeStyleFeatureType.ALL
        ..stylers = [
          new MapTypeStyler()..saturation = -80
        ],
      new MapTypeStyle()
        ..featureType = MapTypeStyleFeatureType.ROAD_ARTERIAL
        ..elementType = MapTypeStyleElementType.GEOMETRY
        ..stylers = [
          new MapTypeStyler()..hue = "#00ffee",
          new MapTypeStyler()..saturation = 50
        ],
      new MapTypeStyle()
        ..featureType = MapTypeStyleFeatureType.POI_BUSINESS
        ..elementType = MapTypeStyleElementType.LABELS
        ..stylers = [
          new MapTypeStyler()..visibility = MapTypeStylerVisibility.OFF
        ]
    ]
    ;
  final map = new GMap(querySelector("#map_canvas"), mapOptions);
}
