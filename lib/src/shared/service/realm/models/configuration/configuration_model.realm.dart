// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class ConfigurationModel extends _ConfigurationModel
    with RealmEntity, RealmObjectBase, RealmObject {
  ConfigurationModel(
    String themeModeName, {
    DateTime? syncDate,
  }) {
    RealmObjectBase.set(this, 'themeModeName', themeModeName);
    RealmObjectBase.set(this, 'syncDate', syncDate);
  }

  ConfigurationModel._();

  @override
  String get themeModeName =>
      RealmObjectBase.get<String>(this, 'themeModeName') as String;
  @override
  set themeModeName(String value) =>
      RealmObjectBase.set(this, 'themeModeName', value);

  @override
  DateTime? get syncDate =>
      RealmObjectBase.get<DateTime>(this, 'syncDate') as DateTime?;
  @override
  set syncDate(DateTime? value) => RealmObjectBase.set(this, 'syncDate', value);

  @override
  Stream<RealmObjectChanges<ConfigurationModel>> get changes =>
      RealmObjectBase.getChanges<ConfigurationModel>(this);

  @override
  Stream<RealmObjectChanges<ConfigurationModel>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ConfigurationModel>(this, keyPaths);

  @override
  ConfigurationModel freeze() =>
      RealmObjectBase.freezeObject<ConfigurationModel>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'themeModeName': themeModeName.toEJson(),
      'syncDate': syncDate.toEJson(),
    };
  }

  static EJsonValue _toEJson(ConfigurationModel value) => value.toEJson();
  static ConfigurationModel _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'themeModeName': EJsonValue themeModeName,
      } =>
        ConfigurationModel(
          fromEJson(themeModeName),
          syncDate: fromEJson(ejson['syncDate']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ConfigurationModel._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, ConfigurationModel, 'ConfigurationModel', [
      SchemaProperty('themeModeName', RealmPropertyType.string),
      SchemaProperty('syncDate', RealmPropertyType.timestamp, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
