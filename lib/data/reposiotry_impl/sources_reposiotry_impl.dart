import '../../domain/entities/source_entity.dart';
import '../../domain/repository_contract/sources_repository.dart';
import '../../presentation/result.dart';
import '../api/api_manager/api_manager.dart';
import '../api/model/sources_response/source.dart';
import '../data_source_contract/sources_datasource.dart';

class SourcesRepositoryImpl extends SourcesRepository {
  SourcesDataSource dataSource;

  SourcesRepositoryImpl({required this.dataSource});

  @override
  Future<Result<List<SourceEntity>>> getSources(String categoryId) async {
    var result = await dataSource.getSources(categoryId);
    switch (result) {
      case Success<List<Source>>():
        {
          return Success(
              data: result.data
                  .map((source) => source.toSourceEntity())
                  .toList());
        }
    // TODO: Handle this case.
      case ServerError<List<Source>>():
        {
          return ServerError(code: result.code, message: result.message);
        }
      case Error<List<Source>>():
        {
          return Error(exception: result.exception);
        }
    }
  }
}