// GENERATED CODE - DO NOT MODIFY BY HAND

part of api;

// **************************************************************************
// Generator: ApiAnnotationGenerator
// Target: class ExampleApi
// **************************************************************************

abstract class _$JaguarExampleApi {
  List<RouteInformations> _routes = <RouteInformations>[
    new RouteInformations(
        r"/ping", ["GET", "POST", "PUT", "PATCH", "DELETE", "OPTIONS"]),
  ];

  Future<bool> handleApiRequest(HttpRequest request) async {
    List<String> args = <String>[];
    bool match = false;
    match = _routes[0]
        .matchWithRequestPathAndMethod(args, request.uri.path, request.method);
    if (match) {
      String result = ping();
      request.response.write(result);
      return true;
    }
    return false;
  }
}
