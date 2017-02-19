import 'package:jaguar/jaguar.dart';

import 'package:boilerplate/api.dart';

main(List<String> args) async {
  final ea = new JaguarExampleApi();

  Jaguar configuration = new Jaguar(multiThread: true);
  configuration.addApi(ea);

  await configuration.serve();
}
