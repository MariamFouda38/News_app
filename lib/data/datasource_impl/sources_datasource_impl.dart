import '../../presentation/result.dart';
import '../api/api_manager/api_manager.dart';
import '../api/model/sources_response/source.dart';
import '../data_source_contract/sources_datasource.dart';

class SourcesApiDataSourceImpl extends SourcesDataSource {
  ApiManager apiManager;

  SourcesApiDataSourceImpl({required this.apiManager});

  @override
  Future<Result<List<Source>>> getSources(String categoryId) async {
    var result = await apiManager.getSources(categoryId);
    switch (result) {
      case Success<List<Source>>():
        return Success(data: result.data);
      case ServerError<List<Source>>():
        return ServerError(code: result.code, message: result.message);
      case Error<List<Source>>():
        return Error(exception: result.exception);
    }
  }
}