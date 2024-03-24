import 'package:training_flutter/core/helpers/cek_json.dart';
import 'package:training_flutter/core/models/user.dart';

class Post{
  final int id;
  final String title;
  final String content;
  final String thumbnail;
  final DateTime createdAt;
  final DateTime updatedAt;
  final User user;

  Post({

    required this.id,
    required this.title,
    required this.content,
    required this.thumbnail,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
});

  factory Post.fromJson(Map<String, dynamic> json){
    final user = User.fromJson(cekJson(json, 'user') ?? {});
    return Post(id: cekJson(json, 'id') ?? 0, title: cekJson(json, 'title') ?? '', content: cekJson(json, 'content')??'', thumbnail: cekJson(json, "thumbnail") ?? "", createdAt: DateTime.parse(cekJson(json, 'created_at') ??DateTime.now().toIso8601String() ), updatedAt: DateTime.parse(cekJson(json, 'updated_at') ?? DateTime.now().toIso8601String()), user: user);
  }
}