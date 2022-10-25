import 'package:flutter_core/domain/domain.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';

abstract class IRepository<T> {
  Future<Either<Failure, List<T>>> getList({String? search});
  Future<List<T>> getRecentList();
  Future<Either<Failure, T>> getItem(String id);
  Future<Either<Failure, void>> save(T item);
}
