#library('gmaps-places');

#import('dart:html', prefix:'html');
#import('package:js/js.dart', prefix:'js');
#import('jswrap.dart', prefix:'jsw');
#import('gmaps.dart');

class Autocomplete extends MVCObject {
  Autocomplete(html.InputElement inputField, [AutocompleteOptions opts]) : super.newInstance(maps.places.Autocomplete, [inputField, opts]);
  Autocomplete.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLngBounds getBounds() => $.call("getBounds", [], LatLngBounds.INSTANCIATOR);
  PlaceResult getPlace() => $.call("getPlace", [], PlaceResult.INSTANCIATOR);
  void setBounds(LatLngBounds bounds) { $.call("setBounds", [bounds]); }
  void setComponentRestrictions(ComponentRestrictions restrictions) { $.call("setComponentRestrictions", [restrictions]); }
  void setTypes(List<String> types) { $.call("setTypes", [types]); }
}

class AutocompleteOptions extends jsw.IsJsProxy {
  set bounds(LatLngBounds bounds) => $["bounds"] = bounds;
  set componentRestrictions(ComponentRestrictions componentRestrictions) => $["componentRestrictions"] = componentRestrictions;
  set types(List<String> types) => $["types"] = types;
}

class ComponentRestrictions extends jsw.IsJsProxy {
  String get country => $["country"];
         set country(String country) => $["country"] = country;
}

class PlaceDetailsRequest extends jsw.IsJsProxy {
  String get reference => $["reference"];
         set reference(String reference) => $["reference"] = reference;
}

class PlaceGeometry extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new PlaceGeometry.fromJsProxy(jsProxy);

  PlaceGeometry() : super();
  PlaceGeometry.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLng get location => $.getProperty("location", LatLng.INSTANCIATOR);
         set location(LatLng location) => $["location"] = location;
  LatLngBounds get viewport => $.getProperty("viewport", LatLngBounds.INSTANCIATOR);
               set viewport(LatLngBounds viewport) => $["viewport"] = viewport;
}

class PlaceResult extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new PlaceResult.fromJsProxy(jsProxy);

  PlaceResult() : super();
  PlaceResult.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  List<GeocoderAddressComponent> get address_components => $.getProperty("address_components", (js.Proxy jsProxy) => new jsw.JsList<GeocoderAddressComponent>.fromJsProxy(jsProxy, GeocoderAddressComponent.INSTANCIATOR));
  String get formatted_address => $["formatted_address"];
  String get formatted_phone_number => $["formatted_phone_number"];
  PlaceGeometry get geometry => $.getProperty("geometry", PlaceGeometry.INSTANCIATOR);
  List<String> get html_attributions => $.getProperty("html_attributions", (js.Proxy jsProxy) => new jsw.JsList<String>.fromJsProxy(jsProxy, null));
  String get icon => $["icon"];
  String get id => $["id"];
  String get international_phone_number => $["international_phone_number"];
  String get name => $["name"];
  num get rating => $["rating"];
  String get reference => $["reference"];
  List<String> get types => $.getProperty("types", (js.Proxy jsProxy) => new jsw.JsList<String>.fromJsProxy(jsProxy, null));
  String get url => $["url"];
  String get vicinity => $["vicinity"];
  String get website => $["website"];
}

class PlaceSearchRequest extends jsw.IsJsProxy {
  set bounds(LatLngBounds bounds) => $["bounds"] = bounds;
  set keyword(String keyword) => $["keyword"] = keyword;
  set location(LatLng location) => $["location"] = location;
  set name(String name) => $["name"] = name;
  set radius(num radius) => $["radius"] = radius;
  set rankBy(RankBy rankBy) => $["rankBy"] = rankBy;
  set types(List<String> types) => $["types"] = types;
}

class PlaceSearchPagination extends jsw.IsJsProxy {
  PlaceSearchPagination() : super();
  PlaceSearchPagination.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  void nextPage() { $.call("nextPage"); }

  bool get hasNextPage => $["hasNextPage"];
}

class PlacesService extends jsw.IsJsProxy {
  PlacesService(Object attrContainer) : super.newInstance(maps.places.PlacesService, [attrContainer]) {
    if (!(attrContainer is html.DivElement || attrContainer is GMap)) {
      throw new IllegalArgumentException(attrContainer);
    }
  }

  void getDetails(PlaceDetailsRequest request, void callback(PlaceResult results, PlacesServiceStatus status)) {
    $.call("getDetails", [request, new jsw.Callback.once((result, status) => callback(new PlaceResult.fromJsProxy(result), PlacesServiceStatus.find(status)))]);
  }
  void nearbySearch(PlaceSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status, PlaceSearchPagination pagination)) {
    $.call("nearbySearch", [request, new jsw.Callback.once((results, status, pagination) => callback(new jsw.JsList<PlaceResult>.fromJsProxy(results, (e) => new PlaceResult.fromJsProxy(e)), PlacesServiceStatus.find(status), new PlaceSearchPagination.fromJsProxy(pagination)))]);
  }
  void textSearch(TextSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status)) {
    $.call("textSearch", [request, new jsw.Callback.once((results, status) => callback(new jsw.JsList<PlaceResult>.fromJsProxy(results, (e) => new PlaceResult.fromJsProxy(e)), PlacesServiceStatus.find(status)))]);
  }
}

class PlacesServiceStatus extends jsw.IsEnum<String> {
  static final INVALID_REQUEST= new PlacesServiceStatus._(maps.places.PlacesServiceStatus.INVALID_REQUEST);
  static final OK= new PlacesServiceStatus._(maps.places.PlacesServiceStatus.OK);
  static final OVER_QUERY_LIMIT= new PlacesServiceStatus._(maps.places.PlacesServiceStatus.OVER_QUERY_LIMIT);
  static final REQUEST_DENIED= new PlacesServiceStatus._(maps.places.PlacesServiceStatus.REQUEST_DENIED);
  static final UNKNOWN_ERROR= new PlacesServiceStatus._(maps.places.PlacesServiceStatus.UNKNOWN_ERROR);
  static final ZERO_RESULTS= new PlacesServiceStatus._(maps.places.PlacesServiceStatus.ZERO_RESULTS);

  static final _INSTANCES = [INVALID_REQUEST, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR, ZERO_RESULTS];

  static PlacesServiceStatus find(Object o) => findIn(_INSTANCES, o);

  PlacesServiceStatus._(String value) : super(value);

  bool operator ==(Object other) => value == (other is PlacesServiceStatus ? (other as PlacesServiceStatus).value : other);
}

class RankBy extends jsw.IsEnum<String> {
  static final DISTANCE= new RankBy._(maps.places.RankBy.DISTANCE);
  static final PROMINENCE= new RankBy._(maps.places.RankBy.PROMINENCE);

  static final _INSTANCES = [DISTANCE, PROMINENCE];

  static RankBy find(Object o) => findIn(_INSTANCES, o);

  RankBy._(String value) : super(value);

  bool operator ==(Object other) => value == (other is RankBy ? (other as RankBy).value : other);
}

class TextSearchRequest extends jsw.IsJsProxy {
  set bounds(LatLngBounds bounds) => $["bounds"] = bounds;
  set location(LatLng location) => $["location"] = location;
  set query(String query) => $["query"] = query;
  set radius(num radius) => $["radius"] = radius;
}