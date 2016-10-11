library api;

import 'dart:async';
import 'dart:io';

import 'package:jaguar/jaguar.dart';

part 'api.g.dart';

@Api()
class ExampleApi extends _$JaguarExampleApi {
  @Route(path: 'ping')
  String ping() {
    return "pong";
  }
}
