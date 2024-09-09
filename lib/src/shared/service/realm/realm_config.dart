import 'package:listinha/src/shared/service/realm/models/configuration/configuration_model.dart';
import 'package:listinha/src/shared/service/realm/models/tasks/task_model.dart';
import 'package:realm/realm.dart';

LocalConfiguration config = Configuration.local(
  [
    ConfigurationModel.schema,
    TaskModel.schema,
    TaskBoard.schema,
  ],
  initialDataCallback: (realm) {
    realm.add(ConfigurationModel('system'));
  },
);
