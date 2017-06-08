import 'package:jaguar/jaguar.dart';

import 'package:boilerplate/api.dart';

main(List<String> args) async {
  final ea = new JaguarExampleApi(new ExampleApi());

  Jaguar server = new Jaguar(multiThread: true);
  server.addApi(ea);

  await server.serve();
}
