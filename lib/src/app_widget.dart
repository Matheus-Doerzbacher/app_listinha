import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/configuration/service/configuration_service.dart';
import 'package:listinha/src/shared/stores/app_store.dart';
import 'package:listinha/src/shared/theme/theme.dart';
import 'package:rx_notifier/rx_notifier.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final config = Modular.get<ConfigurationService>();
  final appStore = Modular.get<AppStore>();

  @override
  void initState() {
    super.initState();
    config.init();
  }

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/');
    final themeMode = context.select(() => appStore.themeMode.value);

    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
