import '../../domain/entities/articles_entity.dart';
import '../../domain/repository_contract/articles_repo_contract.dart';
import '../../presentation/result.dart';
import '../api/model/articles/article.dart';
import '../data_source_contract/articles_datasource.dart';

class ArticlesRepositoryImpl extends ArticlesRepository {
  ArticlesDataSource dataSource; //
  ArticlesRepositoryImpl({required this.dataSource});

  @override
  Future<Result<List<ArticleEntity>>> getArticles(String sourceId) async {
    var result = await dataSource.getArticles(sourceId);
    switch (result) {
      case Success<List<Article>>():
        {
          List<ArticleEntity> articles = result.data
              .map(
                (article) => article.toArticleEntity(),
          )
              .toList();
          return Success(data: articles);
        }
      case ServerError<List<Article>>():
        return ServerError(code: result.code, message: result.message);
      case Error<List<Article>>():
        return Error(exception: result.exception);
    }
  }
}