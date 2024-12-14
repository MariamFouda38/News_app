import '../../presentation/result.dart';
import '../entities/articles_entity.dart';

abstract class ArticlesRepository {
  Future<Result<List<ArticleEntity>>> getArticles(String sourceId);
}