import 'package:common_deps/common_deps.dart';

part 'storage_exception.freezed.dart';

@freezedNoHelpers
sealed class StorageException with _$StorageException {
  const factory StorageException.save([String? cause]) = StorageSaveException;
  const factory StorageException.fetch([String? cause]) = StorageFetchException;
  const factory StorageException.delete([String? cause]) =
      StorageDeleteException;
}
