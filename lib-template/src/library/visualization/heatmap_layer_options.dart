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

part of google_maps_visualization;

@wrapper abstract class HeatmapLayerOptions extends jsw.TypedJsObject {
  HeatmapLayerOptions() : super();

  MVCArray<LatLng> get data => MVCArray.$wrapSerializables($unsafe['data'], LatLng.$wrap);
  set data(MVCArray<LatLng> data);
  bool dissipating;
  List<String> gradient;
  GMap map;
  num maxIntensity;
  num opacity;
  num radius;
}