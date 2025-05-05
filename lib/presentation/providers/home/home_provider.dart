import 'package:flutter/material.dart';
import 'package:tiktak/domain/entities/video_post.dart';
import 'package:tiktak/infrastructure/models/local_video_model.dart';
import 'package:tiktak/shared/data/local_video_post.dart';

class HomeProvider extends ChangeNotifier {
  // TODO: Repository & DataSource
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos =
        videoPosts
            .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
            .toList();
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
