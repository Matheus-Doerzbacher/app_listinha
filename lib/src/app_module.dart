import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/configuration/configuration_page.dart';
import 'package:listinha/src/home/home_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r
      ..module('/home', module: HomeModule())
      ..child('/config', child: (context) => const ConfigurationPage());
  }
}
