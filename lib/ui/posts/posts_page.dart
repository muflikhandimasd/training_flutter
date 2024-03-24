import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_flutter/blocs/post/get_post/post_cubit.dart';

import '../../core/enum/api_status.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),

      body: BlocBuilder<PostCubit,PostState>(builder: (context, state) {
        if (state.status.isLoading) {
          return const Center(child: CircularProgressIndicator());
  
        }

        if (state.status.isError) {
          return Center(
            child: Text(state.message),
          );
        }

        if (state.status.isSuccess) {
          return ListView.builder(
            itemCount: state.posts.length,
            itemBuilder: (context, index) {
              final post = state.posts[index];
              return Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CachedNetworkImage(
                        imageUrl: post.thumbnail,
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
                      Text(post.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      Text(post.content),
                      const SizedBox(height: 10,),
                      Text('Created At: ${post.createdAt}'),
                      const SizedBox(height: 10,),
                      Text('Updated At: ${post.updatedAt}'),
                      const SizedBox(height: 10,),
                      Text('Author: ${post.user.name}'),
                    ],
                  ),
                )

              );
            },
          );
        }

        return SizedBox.shrink();
      },),
      
    );
  }
}