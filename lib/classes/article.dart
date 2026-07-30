import 'package:freezed_annotation/freezed_annotation.dart';
part 'article.freezed.dart';
part 'article.g.dart';
@freezed
class Article with _$Article {

  const factory Article({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'userId') required int idUtilisateur,
    @JsonKey(name: 'title') required String titre,
    @JsonKey(name: 'body') required String description,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  


}