import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktak/presentation/providers/home/home_provider.dart';
import 'package:tiktak/presentation/widgets/shared/video_scrollable_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = context.watch<HomeProvider>();

    return Scaffold(
      body:
          homeProvider.initialLoading
              ? const Center(child: CircularProgressIndicator())
              : VideoScrollableView(videos: homeProvider.videos),
    );
  }
}
