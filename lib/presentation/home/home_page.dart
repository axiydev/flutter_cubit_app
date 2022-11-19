import 'package:dio/dio.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_app/blocs/home/posts/posts_bloc.dart';
import 'package:flutter_cubit_app/blocs/home/products/products_bloc.dart';
import 'package:flutter_cubit_app/data/dataprovider/posts_api.dart';
import 'package:flutter_cubit_app/data/dataprovider/product_api.dart';
import 'package:flutter_cubit_app/data/repository/posts_api_repository.dart';
import 'package:flutter_cubit_app/data/repository/product_api_repository.dart';
import 'package:flutter_cubit_app/presentation/home/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsBloc>(
            create: (_) => ProductsBloc(
                productRepository: ProductApiRepository(
                    productApi: ProductApi(Dio(BaseOptions(
                        connectTimeout: 5000,
                        receiveTimeout: 15000,
                        sendTimeout: 15000)))))
              ..add(ProductLoadDataEvent())),
        BlocProvider<PostsBloc>(
            create: (_) => PostsBloc(
                apiRepository: PostApiRepository(
                    postApi: PostApi(Dio(BaseOptions(
                        connectTimeout: 5000,
                        receiveTimeout: 15000,
                        sendTimeout: 15000)))))
              ..add(PostsEvent.loadData)),
      ],
      child: const HomeView(),
    );
  }
}
