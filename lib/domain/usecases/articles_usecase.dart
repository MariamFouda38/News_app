import '../../presentation/result.dart';
import '../entities/articles_entity.dart';
import '../repository_contract/articles_repo_contract.dart';

class GetArticlesUseCase {
  ArticlesRepository repository;

  GetArticlesUseCase({required this.repository});

  Future<Result<List<ArticleEntity>>> execute(String sourceId) {
    return repository.getArticles(sourceId);
  }
}