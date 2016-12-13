library api;

import 'dart:async';
import 'dart:io';

import 'package:jaguar/jaguar.dart';
import 'package:jaguar/interceptors.dart';

part 'api.g.dart';

@RouteGroup(path: '/info')
class ExampleRouteGroup extends _$JaguarExampleRouteGroup {
  @Get()
  @WrapEncodeToJson()
  Map info() => {
    'name': 'jaguar',
    'motto': 'Speed. Simplicity. Extensiblity.',
    'degree of awesomeness': 'infinity!',
  };
}

@Api(path: '/api')
class ExampleApi extends _$JaguarExampleApi {
  @Group()
  final ExampleRouteGroup exampleRoutes = new ExampleRouteGroup();

  @Route(path: '/version', methods: const ['GET'])
  num version() => 0.1;
}
