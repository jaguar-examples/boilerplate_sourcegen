import 'package:jaguar/jaguar.dart' as jaguar;

import 'package:examples/basic_api/api.dart';

main(List<String> args) async {
  ExampleApi ea = new ExampleApi();

  jaguar.Configuration configuration =
      new jaguar.Configuration(multiThread: true);
  configuration.addApi(ea);

  await jaguar.serve(configuration);
}
