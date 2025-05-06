import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktak/config/theme/app_theme.dart';
import 'package:tiktak/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:tiktak/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:tiktak/presentation/providers/home/home_provider.dart';
import 'package:tiktak/presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostsRepositoryImpl(
      videosDatasource: LocalVideoDatasource(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create:
              (_) =>
                  HomeProvider(videosRepository: videoPostRepository)
                    ..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        title: 'TakTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const HomeScreen(),
      ),
    );
  }
}
