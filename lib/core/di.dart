import '../data/api/api_manager/api_manager.dart';
import '../data/datasource_impl/article_datasource_impl.dart';

import '../data/datasource_impl/sources_datasource_impl.dart';
import '../data/reposiotry_impl/articles_reposiotry_impl.dart';
import '../data/reposiotry_impl/sources_reposiotry_impl.dart';
import '../domain/usecases/articles_usecase.dart';
import '../domain/usecases/sources_usecase.dart';


GetArticlesUseCase getArticlesUseCase() {
  return GetArticlesUseCase(repository: getArticlesRepository());
}

ArticlesRepositoryImpl getArticlesRepository() {
  return ArticlesRepositoryImpl(dataSource: getArticlesDataSource());
}

ArticlesApiDataSourceImpl getArticlesDataSource() {
  return ArticlesApiDataSourceImpl(apiManager: getApiManager());
}

ApiManager getApiManager() {
  return ApiManager();
}

SourcesRepositoryImpl getSourcesRepo() {
  return SourcesRepositoryImpl(dataSource: getSourcesDataSource());
}

SourcesApiDataSourceImpl getSourcesDataSource() {
  return SourcesApiDataSourceImpl(apiManager: getApiManager());
}

GetSourcesUseCase getSourcesUseCase() {
  return GetSourcesUseCase(repository: getSourcesRepo());
}