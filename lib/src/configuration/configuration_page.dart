import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/shared/stores/app_store.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appStore = context.watch<AppStore>(
      (bind) => bind.themeMode,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listinha'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Configuração',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 20),
              Text(
                'Tema',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              RadioListTile(
                value: ThemeMode.system,
                groupValue: appStore.themeMode.value,
                title: const Text('Sistema'),
                onChanged: appStore.changeThemeMode,
              ),
              RadioListTile(
                value: ThemeMode.light,
                groupValue: appStore.themeMode.value,
                title: const Text('Claro'),
                onChanged: appStore.changeThemeMode,
              ),
              RadioListTile(
                value: ThemeMode.dark,
                groupValue: appStore.themeMode.value,
                title: const Text('Escuro'),
                onChanged: appStore.changeThemeMode,
              ),
              const SizedBox(height: 20),
              Text(
                'Controle de dados',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Apagar cache e reinicar o app'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
