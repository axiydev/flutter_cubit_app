import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_app/blocs/home/posts/posts_bloc.dart';
import 'package:flutter_cubit_app/blocs/home/products/products_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    log('BUILD');
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Text('products'),
            BlocBuilder<ProductsBloc, ProductState>(builder: (_, state) {
              if (state is ProductLoadingState && state.isLoading) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              } else if (state is ProductErrorState) {
                return const Text('your app has an error');
              } else if (state is ProductDataState) {
                return SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: state.products.length,
                      itemBuilder: (context, index) {
                        final product = state.products[index];
                        return Card(
                            child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(
                                product!.images.first!,
                              ),
                            ),
                            Text(product.title ?? 'title')
                          ],
                        ));
                      }),
                );
              }

              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }),
            const Text('posts'),
            BlocBuilder<PostsBloc, PostsState>(
                bloc: BlocProvider.of<PostsBloc>(context),
                builder: (_, state) {
                  if (state is PostsLoadingState && state.isLoading!) {
                    return const CupertinoActivityIndicator.partiallyRevealed();
                  } else if (state is PostsFailureState) {
                    return const Text('your app has an error');
                  } else if (state is PostsDataState) {
                    return ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: state.posts.length,
                        itemBuilder: (context, index) {
                          final post = state.posts[index];
                          return Card(
                            child: ListTile(
                              title: Text(post!.title ?? 'title'),
                              subtitle: Text(post.body ?? 'title'),
                            ),
                          );
                        });
                  }

                  return const CupertinoActivityIndicator.partiallyRevealed();
                })
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            BlocProvider.of<PostsBloc>(context).add(PostsEvent.refresh);
          },
          label: const Text('refresh')),
    );
  }
}
