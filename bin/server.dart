import 'package:jaguar/jaguar.dart' as jaguar;

import 'package:boilerplate/api.dart';

main(List<String> args) async {
  final ea = new JaguarExampleApi();

  jaguar.Configuration configuration =
      new jaguar.Configuration(multiThread: true);
  configuration.addApi(ea);

  await jaguar.serve(configuration);
}
