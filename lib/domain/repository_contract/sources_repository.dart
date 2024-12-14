import '../../presentation/result.dart';
import '../entities/source_entity.dart';

abstract class SourcesRepository {
  Future<Result<List<SourceEntity>>> getSources(String categoryId);
}