import 'package:flutter/material.dart';
import 'package:tiktak/domain/entities/video_post.dart';
import 'package:tiktak/infrastructure/repositories/video_posts_repository_impl.dart';

class HomeProvider extends ChangeNotifier {
  final VideoPostsRepositoryImpl videosRepository;
  bool initialLoading = true;
  List<VideoPost> videos = [];

  HomeProvider({required this.videosRepository});

  Future<void> loadNextPage() async {
    final newVideos = await videosRepository.getTrendingVideosByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
