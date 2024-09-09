// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class TaskModel extends _TaskModel
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  TaskModel(
    Uuid id,
    String description, {
    bool complete = false,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<TaskModel>({
        'complete': false,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'complete', complete);
  }

  TaskModel._();

  @override
  Uuid get id => RealmObjectBase.get<Uuid>(this, 'id') as Uuid;
  @override
  set id(Uuid value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  bool get complete => RealmObjectBase.get<bool>(this, 'complete') as bool;
  @override
  set complete(bool value) => RealmObjectBase.set(this, 'complete', value);

  @override
  Stream<RealmObjectChanges<TaskModel>> get changes =>
      RealmObjectBase.getChanges<TaskModel>(this);

  @override
  Stream<RealmObjectChanges<TaskModel>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<TaskModel>(this, keyPaths);

  @override
  TaskModel freeze() => RealmObjectBase.freezeObject<TaskModel>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'description': description.toEJson(),
      'complete': complete.toEJson(),
    };
  }

  static EJsonValue _toEJson(TaskModel value) => value.toEJson();
  static TaskModel _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'description': EJsonValue description,
      } =>
        TaskModel(
          fromEJson(id),
          fromEJson(description),
          complete: fromEJson(ejson['complete'], defaultValue: false),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(TaskModel._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, TaskModel, 'TaskModel', [
      SchemaProperty('id', RealmPropertyType.uuid, primaryKey: true),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('complete', RealmPropertyType.bool),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class TaskBoard extends _TaskBoard
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  TaskBoard(
    Uuid id,
    String title, {
    Iterable<TaskModel> tasks = const [],
    bool enable = true,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<TaskBoard>({
        'enable': true,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set<RealmList<TaskModel>>(
        this, 'tasks', RealmList<TaskModel>(tasks));
    RealmObjectBase.set(this, 'enable', enable);
  }

  TaskBoard._();

  @override
  Uuid get id => RealmObjectBase.get<Uuid>(this, 'id') as Uuid;
  @override
  set id(Uuid value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  RealmList<TaskModel> get tasks =>
      RealmObjectBase.get<TaskModel>(this, 'tasks') as RealmList<TaskModel>;
  @override
  set tasks(covariant RealmList<TaskModel> value) =>
      throw RealmUnsupportedSetError();

  @override
  bool get enable => RealmObjectBase.get<bool>(this, 'enable') as bool;
  @override
  set enable(bool value) => RealmObjectBase.set(this, 'enable', value);

  @override
  Stream<RealmObjectChanges<TaskBoard>> get changes =>
      RealmObjectBase.getChanges<TaskBoard>(this);

  @override
  Stream<RealmObjectChanges<TaskBoard>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<TaskBoard>(this, keyPaths);

  @override
  TaskBoard freeze() => RealmObjectBase.freezeObject<TaskBoard>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'title': title.toEJson(),
      'tasks': tasks.toEJson(),
      'enable': enable.toEJson(),
    };
  }

  static EJsonValue _toEJson(TaskBoard value) => value.toEJson();
  static TaskBoard _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'title': EJsonValue title,
      } =>
        TaskBoard(
          fromEJson(id),
          fromEJson(title),
          tasks: fromEJson(ejson['tasks']),
          enable: fromEJson(ejson['enable'], defaultValue: true),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(TaskBoard._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, TaskBoard, 'TaskBoard', [
      SchemaProperty('id', RealmPropertyType.uuid, primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('tasks', RealmPropertyType.object,
          linkTarget: 'TaskModel', collectionType: RealmCollectionType.list),
      SchemaProperty('enable', RealmPropertyType.bool),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
