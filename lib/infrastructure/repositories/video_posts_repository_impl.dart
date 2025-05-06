import 'package:tiktak/domain/datasources/video_posts_datasource.dart';
import 'package:tiktak/domain/entities/video_post.dart';

class VideoPostsRepositoryImpl implements VideoPostsDatasource {
  final VideoPostsDatasource videosDatasource;

  VideoPostsRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
