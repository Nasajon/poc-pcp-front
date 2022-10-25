import 'package:flutter/foundation.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class ILocalDatasource {
  Future<List<Map<String, dynamic>>> getValues(String boxName);
  Future<int> add(String boxName, dynamic value);
  Future<List<int>> addAll(String boxName, List<dynamic> values);
  Future<List<int>> setAll(String boxName, List<dynamic> values);
  Future<void> putAt(String boxName, int index, dynamic value);
  Future<void> deleteAt(String boxName, int index);
  Future<void> clear(String boxName);
}

class LocalDatasource implements ILocalDatasource {
  @override
  Future<List<Map<String, dynamic>>> getValues(String boxName) async {
    Box box = await getBox(boxName);

    final values = box
        .toMap()
        .map((key, value) =>
            MapEntry(key.toString(), Map<String, dynamic>.from(value)))
        .values
        .toList();

    await box.close();

    return values;
  }

  Future<Box> getBox(String boxName) async {
    late Box box;

    if (Hive.isBoxOpen(boxName)) {
      box = Hive.box(boxName);
    } else {
      if (!kIsWeb) {
        await initHive();
      }

      box = await Hive.openBox(boxName);
    }

    return box;
  }

  Future<void> initHive() async {
    final dir = await getApplicationDocumentsDirectory();

    Hive.init(dir.path);
  }

  @override
  Future<int> add(String boxName, dynamic value) async {
    Box box = await getBox(boxName);

    final key = await box.add(value);

    await box.close();

    return key;
  }

  @override
  Future<List<int>> setAll(String boxName, List<dynamic> values) async {
    Box box = await getBox(boxName);

    await box.clear();
    final keys = await box.addAll(values);

    await box.close();

    return keys.toList();
  }

  @override
  Future<List<int>> addAll(String boxName, List<dynamic> values) async {
    Box box = await getBox(boxName);

    final keys = await box.addAll(values);

    await box.close();

    return keys.toList();
  }

  @override
  Future<void> putAt(String boxName, int index, dynamic value) async {
    Box box = await getBox(boxName);

    await box.put(index, value);

    await box.close();
  }

  @override
  Future<void> deleteAt(String boxName, int index) async {
    Box box = await getBox(boxName);

    await box.deleteAt(index);

    await box.close();
  }

  @override
  Future<void> clear(String boxName) async {
    Box box = await getBox(boxName);

    await box.clear();

    await box.close();
  }
}
