// GENERATED CODE - DO NOT MODIFY BY HAND

part of api;

// **************************************************************************
// Generator: RouteGroupGenerator
// Target: class ExampleRouteGroup
// **************************************************************************

abstract class _$JaguarExampleRouteGroup implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[const Get()];

  Map<dynamic, dynamic> info();

  Future<bool> handleRequest(HttpRequest request, {String prefix: ''}) async {
    prefix += '/info';
    PathParams pathParams = new PathParams();
    bool match = false;

//Handler for info
    match =
        routes[0].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<Map> rRouteResponse0 = new Response(null);
      EncodeToJson iEncodeToJson;
      try {
        iEncodeToJson = new WrapEncodeToJson().createInterceptor();
        iEncodeToJson.pre(
          rRouteResponse0,
        );
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = info();
        await rRouteResponse0.writeResponse(request.response);
      } catch (e) {
        await iEncodeToJson?.onException();
        rethrow;
      }
      return true;
    }

    return false;
  }
}

// **************************************************************************
// Generator: ApiGenerator
// Target: class ExampleApi
// **************************************************************************

abstract class _$JaguarExampleApi implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[
    const Route(path: '/version', methods: const ['GET'])
  ];

  ExampleRouteGroup get exampleRoutes;

  num version();

  Future<bool> handleRequest(HttpRequest request, {String prefix: ''}) async {
    prefix += '/api';
    PathParams pathParams = new PathParams();
    bool match = false;

//Handler for version
    match =
        routes[0].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<num> rRouteResponse0 = new Response(null);
      try {
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = version();
        await rRouteResponse0.writeResponse(request.response);
      } catch (e) {
        rethrow;
      }
      return true;
    }

    if (await exampleRoutes.handleRequest(request, prefix: prefix)) {
      return true;
    }

    return false;
  }
}
