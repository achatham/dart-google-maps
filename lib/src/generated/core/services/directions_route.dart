// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps;

class DirectionsRoute extends jsw.TypedJsObject {
  static DirectionsRoute cast(js.JsObject jsObject) => jsObject == null ? null : new DirectionsRoute.fromJsObject(jsObject);
  DirectionsRoute.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  DirectionsRoute() : super();

  set bounds(LatLngBounds bounds) => $unsafe['bounds'] = bounds;
LatLngBounds get bounds => LatLngBounds.cast($unsafe['bounds']);
set copyrights(String copyrights) => $unsafe['copyrights'] = copyrights;
String get copyrights => $unsafe['copyrights'];
set legs(List<DirectionsLeg> legs) => $unsafe['legs'] = legs == null ? null : legs is js.Serializable<js.JsObject> ? legs : js.jsify(legs);
List<DirectionsLeg> get legs => jsw.TypedJsArray.castListOfSerializables($unsafe['legs'], DirectionsLeg.cast);
set overviewPath(List<LatLng> overviewPath) => $unsafe['overview_path'] = overviewPath == null ? null : overviewPath is js.Serializable<js.JsObject> ? overviewPath : js.jsify(overviewPath);
List<LatLng> get overviewPath => jsw.TypedJsArray.castListOfSerializables($unsafe['overview_path'], LatLng.cast);
set warnings(List<String> warnings) => $unsafe['warnings'] = warnings == null ? null : warnings is js.Serializable<js.JsObject> ? warnings : js.jsify(warnings);
List<String> get warnings => jsw.TypedJsArray.cast($unsafe['warnings']);
set waypointOrder(List<num> waypointOrder) => $unsafe['waypoint_order'] = waypointOrder == null ? null : waypointOrder is js.Serializable<js.JsObject> ? waypointOrder : js.jsify(waypointOrder);
List<num> get waypointOrder => jsw.TypedJsArray.cast($unsafe['waypoint_order']);
}