// GENERATED CODE - DO NOT MODIFY BY HAND

part of api;

// **************************************************************************
// Generator: RouteGroupGenerator
// Target: class ExampleRouteGroup
// **************************************************************************

class JaguarExampleRouteGroup implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[const Get()];

  final ExampleRouteGroup _internal;

  factory JaguarExampleRouteGroup() {
    final instance = new ExampleRouteGroup();
    return new JaguarExampleRouteGroup.from(instance);
  }
  JaguarExampleRouteGroup.from(this._internal);

  Future<Response> handleRequest(Request request, {String prefix: ''}) async {
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
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.headers
            .set('content-type', 'text/plain; charset=utf-8');
        rRouteResponse0.value = _internal.info();
        Response<String> rRouteResponse1 = iEncodeToJson.post(
          rRouteResponse0,
        );
        return rRouteResponse1;
      } catch (e) {
        await iEncodeToJson?.onException();
        rethrow;
      }
    }

    return null;
  }
}

// **************************************************************************
// Generator: ApiGenerator
// Target: class ExampleApi
// **************************************************************************

class JaguarExampleApi implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[
    const Route(path: '/version', methods: const ['GET'])
  ];

  final ExampleApi _internal;
  final JaguarExampleRouteGroup _exampleRoutesInternal;

  factory JaguarExampleApi() {
    final instance = new ExampleApi();
    return new JaguarExampleApi.from(instance);
  }
  JaguarExampleApi.from(this._internal)
      : _exampleRoutesInternal =
            new JaguarExampleRouteGroup.from(_internal.exampleRoutes);

  Future<Response> handleRequest(Request request, {String prefix: ''}) async {
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
        rRouteResponse0.headers
            .set('content-type', 'text/plain; charset=utf-8');
        rRouteResponse0.value = _internal.version();
        return rRouteResponse0;
      } catch (e) {
        rethrow;
      }
    }

    {
      Response response =
          await _exampleRoutesInternal.handleRequest(request, prefix: prefix);
      if (response is Response) {
        return response;
      }
    }

    return null;
  }
}
