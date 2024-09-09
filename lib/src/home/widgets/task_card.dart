import 'package:flutter/material.dart';
import 'package:listinha/src/shared/service/realm/models/tasks/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskBoard board;
  const TaskCard({super.key, required this.board});

  double getProgress(List<TaskModel> tasks) {
    return 0.8;
  }

  @override
  Widget build(BuildContext context) {
    final progress = getProgress(board.tasks);
    const progressText = '1/5';
    final title = board.title;
    const color = Colors.red;
    final backgrouColor = Colors.red.withOpacity(0.5);
    const statusText = 'Pendente';
    const iconData = Icons.account_box;

    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: backgrouColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(iconData),
              Spacer(),
              Text(statusText),
            ],
          ),
          const Spacer(),
          Text(title),
          LinearProgressIndicator(
            value: progress,
            color: color,
          ),
          const Text(progressText),
        ],
      ),
    );
  }
}
