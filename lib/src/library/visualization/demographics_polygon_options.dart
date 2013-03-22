// Copyright (c) 2013, Alexandre Ardhuin
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

abstract class _DemographicsPolygonOptions {
  String fillColor;
  DemographicsPropertyStyle fillColorStyle;
  num fillOpacity;
  DemographicsPropertyStyle fillOpacityStyle;
  String strokeColor;
  DemographicsPropertyStyle strokeColorStyle;
  num strokeOpacity;
  DemographicsPropertyStyle strokeOpacityStyle;
  num strokeWeight;
}

class DemographicsPolygonOptions extends jsw.MagicProxy implements _DemographicsPolygonOptions {
  static DemographicsPolygonOptions cast(js.Proxy proxy) => jsw.mapNotNull(proxy, (proxy) => new DemographicsPolygonOptions.fromProxy(proxy));

  DemographicsPolygonOptions() : super();
  DemographicsPolygonOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  @override DemographicsPropertyStyle get fillColorStyle => DemographicsPropertyStyle.cast($unsafe.fillColorStyle);
  @override DemographicsPropertyStyle get fillOpacityStyle => DemographicsPropertyStyle.cast($unsafe.fillOpacityStyle);
  @override DemographicsPropertyStyle get strokeColorStyle => DemographicsPropertyStyle.cast($unsafe.strokeColorStyle);
  @override DemographicsPropertyStyle get strokeOpacityStyle => DemographicsPropertyStyle.cast($unsafe.strokeOpacityStyle);
}