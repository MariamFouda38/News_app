import '../../presentation/result.dart';
import '../api/api_manager/api_manager.dart';
import '../api/model/articles/article.dart';
import '../data_source_contract/articles_datasource.dart';

class ArticlesApiDataSourceImpl extends ArticlesDataSource {
  ApiManager apiManager;

  ArticlesApiDataSourceImpl({required this.apiManager}); // dependency injection

  @override
  Future<Result<List<Article>>> getArticles(String sourceId) async {
    // u should get list of articles from api

    var result = await apiManager.getArticles(sourceId);
    switch (result) {
      case Success<List<Article>>():
        return Success(data: result.data);
      case ServerError<List<Article>>():
        return ServerError(code: result.code, message: result.message);
      case Error<List<Article>>():
        return Error(exception: result.exception);
    }
  }
}