import '../../presentation/result.dart';
import '../entities/source_entity.dart';
import '../repository_contract/sources_repository.dart';

class GetSourcesUseCase {
  SourcesRepository repository;

  GetSourcesUseCase({required this.repository});

  Future<Result<List<SourceEntity>>> execute(String categoryId) {
    return repository.getSources(categoryId);
  }
}