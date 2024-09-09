import 'package:flutter/material.dart';

class AppStore {
  // THEME
  final themeMode = ValueNotifier(ThemeMode.system);

  void changeThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode.value = mode;
      save();
    }
  }

  // SYNC DATE
  final syncDate = ValueNotifier<DateTime?>(null);

  void setSyncDate(DateTime date) {
    syncDate.value = date;
    save();
  }

  void save() {
    // Todo: Sa;var os dados na base local
  }

  void init() {
    // Todo: Sa;var os dados na base local
  }
}
