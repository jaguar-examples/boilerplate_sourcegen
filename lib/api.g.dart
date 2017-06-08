// GENERATED CODE - DO NOT MODIFY BY HAND

part of api;

// **************************************************************************
// Generator: ApiGenerator
// Target: class ExampleRouteGroup
// **************************************************************************

class JaguarExampleRouteGroup implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[const Get()];

  final ExampleRouteGroup _internal;

  JaguarExampleRouteGroup(this._internal);

  Future<Response> handleRequest(Request request, {String prefix: ''}) async {
    prefix += '/info';
    final ctx = new Context(request);
    bool match = false;

//Handler for info
    match = routes[0]
        .match(request.uri.path, request.method, prefix, ctx.pathParams);
    if (match) {
      final interceptorCreators = <InterceptorCreator>[];
      return await Interceptor.chain(
          ctx, interceptorCreators, _internal.info, routes[0]);
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

  JaguarExampleApi(this._internal)
      : _exampleRoutesInternal =
            new JaguarExampleRouteGroup(_internal.exampleRoutes);

  Future<Response> handleRequest(Request request, {String prefix: ''}) async {
    prefix += '/api';
    final ctx = new Context(request);
    bool match = false;

//Handler for version
    match = routes[0]
        .match(request.uri.path, request.method, prefix, ctx.pathParams);
    if (match) {
      final interceptorCreators = <InterceptorCreator>[];
      return await Interceptor.chain(
          ctx, interceptorCreators, _internal.version, routes[0]);
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
