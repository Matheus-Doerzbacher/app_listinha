import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

class AppStore {
  // THEME
  final themeMode = RxNotifier(ThemeMode.system);
  final syncDate = RxNotifier<DateTime?>(null);
}
