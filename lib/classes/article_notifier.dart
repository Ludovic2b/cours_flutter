import 'package:demoaflokkat/classes/article.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
class ArticleNotifier extends AsyncNotifier<List<Article>> {
  @override
  Future<List<Article>> build() async {
    final dio = Dio(BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      headers: {'Accept': 'application/json'},
    ));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        print('Requête envoyée: ${options.method} ${options.path}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioError e, handler) {
        return handler.next(e);
      },
    ));
    try {
      final response = await dio.get('/posts');
      final List<dynamic> data = response.data;
      final articles = data.map((json) => Article.fromJson(json)).toList();
      return articles;
    } catch (error) {
      throw Exception('Erreur lors de la récupération des articles: $error');
    }
  }
}

final articleNotifierProvider = AsyncNotifierProvider<ArticleNotifier, List<Article>>(
  ArticleNotifier.new,
);