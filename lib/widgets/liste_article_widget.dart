import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:demoaflokkat/classes/article_notifier.dart';

class ListeArticleWidget extends ConsumerWidget {
  const ListeArticleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articlesAsyncValue = ref.watch(articleNotifierProvider);

    return articlesAsyncValue.when(
      data: (articles) {
        return ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return ListTile(
              title: Text(article.titre),
              subtitle: Text(article.description),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Erreur : $error')),
    );
  }
}