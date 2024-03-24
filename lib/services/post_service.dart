import 'package:dio/dio.dart';
import 'package:training_flutter/core/api/client.dart';
import 'package:training_flutter/core/helpers/cek_json.dart';
import 'package:training_flutter/core/models/post.dart';

abstract class PostService{
  static Future<List<Post>> getPosts()async{
    final response = await dio.get('/posts');
    final posts = <Post>[];
    final responseData = cekJson(response.data, 'data') ?? [];
    if(responseData is List && responseData.isNotEmpty){
      for (var item in responseData) {
        posts.add(Post.fromJson(item));
      }
    }
    return posts;
  }

  static Future<String> createPost({
    required String title,
    required String content,
    required String thumbnail,

  })async{
    final response = await dio.post(
      '/posts',
      data: FormData.fromMap({
        'title': title,
        'content': content,
        'thumbnail':thumbnail,
      }),
    );
    return cekJson(response.data, 'message') ?? '';
  }

  static Future<String> updatePost({
    required int id,
    required String title,
    required String content,
    required String thumbnail,
  })async{
    final response = await dio.post(
      '/posts/$id',
      data: FormData.fromMap({
        'title': title,
        'content': content,
        'thumbnail':thumbnail,
        '_method': 'PUT',
      }),
    );
    return cekJson(response.data, 'message') ?? '';
  }

  static Future<String> deletePost({
    required int id,
  })async{
    final response = await dio.delete(
      '/posts/$id',
    );
    return cekJson(response.data, 'message') ?? '';
  }
}