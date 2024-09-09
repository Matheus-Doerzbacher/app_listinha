import 'package:flutter_test/flutter_test.dart';
import 'package:listinha/src/shared/service/realm/models/tasks/task_model.dart';
import 'package:realm/realm.dart';

void main() {
  testWidgets('task card ...', (_) {
    final tasks = [
      TaskModel(Uuid.v4(), 'Tarefa 1', complete: true),
      TaskModel(Uuid.v4(), 'Tarefa 2', complete: true),
      TaskModel(Uuid.v4(), 'Tarefa 3'),
      TaskModel(Uuid.v4(), 'Tarefa 4'),
      TaskModel(Uuid.v4(), 'Tarefa 5'),
    ];
  });
}
