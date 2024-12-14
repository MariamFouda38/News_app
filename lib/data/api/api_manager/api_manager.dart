import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../presentation/result.dart';
import '../model/articles/article.dart';
import '../model/articles/articles_response.dart';
import '../model/sources_response/source.dart';
import '../model/sources_response/sources_response.dart';

//https://newsapi.org/v2/top-headlines/sources?apiKey=be69a84c535c43928fdad67c7cd21548


class ApiManager {
  static const String _baseUrl = 'newsapi.org';
  static const String _apiKey = 'be69a84c535c43928fdad67c7cd21548';
  static const String sourcesEndPoint = '/v2/top-headlines/sources';
  static const String articlesEndPoint = '/v2/everything';

  Future<Result<List<Source>>> getSources(String categoryId) async {
    Uri url = Uri.https(_baseUrl, sourcesEndPoint, {
      'apiKey': _apiKey,
      'category': categoryId,
    });
    try {
      http.Response serverResponse =
      await http.get(url); // make a network Request
      Map<String, dynamic> json =
      jsonDecode(serverResponse.body); // convert from string to json
      SourcesResponse sourcesResponse = SourcesResponse.fromJson(json);
      if (sourcesResponse.status == 'ok') {
        return Success(data: sourcesResponse.sources ?? []);
      } else {
        return ServerError(
            code: sourcesResponse.code ?? '',
            message: sourcesResponse.message ?? '');
      }
    } on Exception catch (e) {
      return Error(exception: e);
    }
  }

  Future<Result<List<Article>>> getArticles(String sourceId) async {
    Uri url = Uri.https(_baseUrl, articlesEndPoint, {
      'apiKey': _apiKey,
      'sources': sourceId,
    });
    try {
      http.Response serverResponse = await http.get(url);
      Map<String, dynamic> json = jsonDecode(serverResponse.body);

      ArticlesResponse articlesResponse = ArticlesResponse.fromJson(json);

      if (articlesResponse.status == 'ok') {
        return Success(data: articlesResponse.articles ?? []);
      } else {
        return ServerError(
            code: articlesResponse.code ?? '',
            message: articlesResponse.message ?? '');
      }
    } on Exception catch (e) {
      return Error(exception: e);
    }
  }
}