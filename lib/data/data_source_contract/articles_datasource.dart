import '../../presentation/result.dart';
import '../api/model/articles/article.dart';

abstract class ArticlesDataSource {
  // this function get a list of articles base on Concrete dataSource
  Future<Result<List<Article>>> getArticles(String sourceId);
}