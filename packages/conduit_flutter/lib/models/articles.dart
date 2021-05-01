/// Article models

import './profiles.dart';

class ArticleInfo {
  final String slug;
  final String title;
  final String description;
  final String body;
  final List<String> tagList;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool favorited;
  final int favoritesCount;
  final ProfileInfo author;

  ArticleInfo(
      {required this.slug,
      required this.title,
      required this.description,
      required this.body,
      required this.tagList,
      required this.createdAt,
      required this.updatedAt,
      required this.favorited,
      required this.favoritesCount,
      required this.author});

  factory ArticleInfo.fromJson(Map<String, dynamic> json) {
    return ArticleInfo(
      slug: json['slug'],
      title: json['title'],
      description: json['description'],
      body: json['body'],
      tagList: json['tagList'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      favorited: json['favorited'],
      favoritesCount: json['favoritesCount'],
      author: ProfileInfo.fromJson(json['author']),
    );
  }
}

class ArticleInfoWrapper {
  final ArticleInfo article;

  ArticleInfoWrapper({required this.article});

  factory ArticleInfoWrapper.fromJson(Map<String, dynamic> json) {
    return ArticleInfoWrapper(article: ArticleInfo.fromJson(json['article']));
  }
}

class ArticleListInfo {
  final List<ArticleInfo> articles;
  final int articlesCount;

  ArticleListInfo({required this.articles, required this.articlesCount});

  factory ArticleListInfo.fromJson(Map<String, dynamic> json) {
    return ArticleListInfo(
        articles: (json['articles'] as List)
            .map((e) => ArticleInfo.fromJson(e))
            .toList(),
        articlesCount: json['articlesCount']);
  }
}

class ArticleCreateUpdateInfo {
  final String title;
  final String description;
  final String body;
  final List<String>? tagList;

  ArticleCreateUpdateInfo(
      {required this.title,
      required this.description,
      required this.body,
      this.tagList});

  Map<String, dynamic> toJson() => {
        'title': this.title,
        'description': this.description,
        'body': this.body,
        'tagList': this.tagList
      };
}

class ArticleCreateUpdateInfoWrapper {
  final ArticleCreateUpdateInfo article;

  ArticleCreateUpdateInfoWrapper({required this.article});

  Map<String, dynamic> toJson() => {'article': this.article};
}
