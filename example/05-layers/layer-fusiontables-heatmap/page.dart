import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final map = new GMap(querySelector("#map_canvas"), new MapOptions()
    ..center = new LatLng(10, -140)
    ..zoom = 3
    ..mapTypeId = MapTypeId.ROADMAP
  );

  final layer = new FusionTablesLayer(new FusionTablesLayerOptions()
    ..query = (new FusionTablesQuery()
      ..select = 'location'
      ..from = '1xWyeuAhIFK_aED1ikkQEGmR8mINSCJO9Vq-BPQ'
    )
    ..heatmap = (new FusionTablesHeatmap()
      ..enabled = true
    )
  );
  layer.map = map;
}
