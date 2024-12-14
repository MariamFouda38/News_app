import '../../presentation/result.dart';
import '../api/model/sources_response/source.dart';

abstract class SourcesDataSource {
  Future<Result<List<Source>>> getSources(String categoryId);
}