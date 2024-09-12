import 'package:flutter/material.dart';
import 'package:listinha/src/home/widgets/custom_drawer.dart';
import 'package:listinha/src/home/widgets/task_card.dart';
import 'package:listinha/src/shared/service/realm/models/tasks/task_model.dart';
import 'package:listinha/src/shared/widgets/user_image_button.dart';
import 'package:realm/realm.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Listinha'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            ListView.separated(
              padding: const EdgeInsets.only(
                top: 60,
                left: 30,
                right: 30,
                bottom: 100,
              ),
              itemCount: 100,
              itemBuilder: (context, index) {
                final model = TaskBoard(
                  Uuid.v4(),
                  'Nova lista de tarefas',
                  // tasks: [
                  //   TaskModel(
                  //     Uuid.v4(),
                  //     'Compras de supermercado',
                  //     complete: true,
                  //   ),
                  //   TaskModel(
                  //     Uuid.v4(),
                  //     'Compras de roupas',
                  //     complete: true,
                  //   ),
                  //   TaskModel(
                  //     Uuid.v4(),
                  //     'Compras de eletrônicos',
                  //     complete: true,
                  //   ),
                  //   TaskModel(
                  //     Uuid.v4(),
                  //     'Compras de material escolar',
                  //     complete: true,
                  //   ),
                  //   TaskModel(
                  //     Uuid.v4(),
                  //     'Compras de presentes',
                  //     complete: true,
                  //   ),
                  // ],
                );
                return TaskCard(board: model);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SegmentedButton<int>(
                  style: SegmentedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.surface,
                  ),
                  segments: const [
                    ButtonSegment(
                      value: 0,
                      label: Text('Todos'),
                    ),
                    ButtonSegment(
                      value: 1,
                      label: Text('Pendentes'),
                    ),
                    ButtonSegment(
                      value: 2,
                      label: Text('Concluídas'),
                    ),
                    ButtonSegment(
                      value: 3,
                      label: Text('Desativadas'),
                    ),
                  ],
                  selected: const {2},
                  onSelectionChanged: (value) {},
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed('./edit');
        },
        icon: const Icon(Icons.edit),
        label: const Text('Nova Lista'),
      ),
    );
  }
}
