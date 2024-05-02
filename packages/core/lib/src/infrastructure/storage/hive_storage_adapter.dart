import 'dart:async';

import 'package:common_deps/common_deps.dart';
import 'package:flutter/foundation.dart';

import '../../data/interfaces/storage/storage.dart';

class HiveStorageAdapter<T> implements IStorageClient<T> {
  final bool enableLog;

  HiveStorageAdapter(String boxKey, {this.enableLog = false}) {
    _init(boxKey);
  }

  final _log = Logger();
  final Completer<Box> _completer = Completer<Box>();

  Future<Box> get _box => _completer.future;

  Future<void> _init(String boxKey, [int attempt = 1]) async {
    try {
      _completer.complete(await Hive.openBox(boxKey));
      _printLog('Box init! Key: $boxKey');
    } catch (e, s) {
      if (attempt == 1) {
        await Hive.deleteBoxFromDisk(boxKey);
        return _init(boxKey, attempt++);
      }

      _completer.completeError(e, s);
    }
  }

  @override
  Future<void> clear() async {
    try {
      (await _box).clear();
    } catch (e) {
      throw StorageDeleteException(e.toString());
    }
  }

  @override
  FutureOr<dynamic> read(String key) async {
    try {
      final result = (await _box).get(key);
      _printLog('Box result:\n -> $result');
      return result;
    } catch (e) {
      throw StorageFetchException(e.toString());
    }
  }

  @override
  Future<void> save(String key, T value) async {
    try {
      final box = await _box;
      await box.put(key, value);
      _printLog('Box save:\n -> $value');
    } catch (e, s) {
      _log.e(e.toString(), error: e, stackTrace: s);
      throw StorageSaveException(e.toString());
    }
  }

  @override
  FutureOr<void> delete(String key) async {
    try {
      (await _box).delete(key);
    } catch (e) {
      throw StorageDeleteException(e.toString());
    }
  }

  @override
  Future<ValueListenable> listenable({List<String>? keys}) async {
    return (await _box).listenable();
  }

  @override
  Future<Map> readAll() async {
    try {
      return (await _box).toMap();
    } catch (e) {
      throw StorageFetchException(e.toString());
    }
  }

  void _printLog(String log) {
    if (enableLog) _log.d(log);
  }
}
