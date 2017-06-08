library api;

import 'dart:async';

import 'package:jaguar/jaguar.dart';

part 'api.g.dart';

@Api(path: '/info')
class ExampleRouteGroup {
  @Get()
  Response<String> info(Context ctx) => Response.json({
        'name': 'jaguar',
        'motto': 'Speed. Simplicity. Extensiblity.',
        'degree of awesomeness': 'infinity!',
      });
}

@Api(path: '/api')
class ExampleApi {
  @IncludeApi()
  final ExampleRouteGroup exampleRoutes = new ExampleRouteGroup();

  @Route(path: '/version', methods: const ['GET'])
  num version(Context ctx) => 0.1;
}
