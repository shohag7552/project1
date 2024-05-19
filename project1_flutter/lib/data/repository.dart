
import 'package:project1_client/project1_client.dart';

abstract class ModelWrapper {
  int? get id;
  Map<String, Object?> toJson();
}

abstract class Repository<T extends ModelWrapper> {
  Repository({required this.fromJson});

  final T Function(Map<String, Object?> json) fromJson;
  final _localCache = <int, T>{};

  Future<T> save(T item) async {
    final saveItem = await persist(item);
    _localCache[saveItem.id!] = saveItem;
    return saveItem;
  }

  Future<T> persist(T item);
}
