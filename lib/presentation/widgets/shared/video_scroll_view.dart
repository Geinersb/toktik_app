import 'package:flutter/material.dart';
import 'package:toktik_app/domain/entities/video_post.dart';
import 'package:toktik_app/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik_app/presentation/widgets/video/fullscreen_player.dart';

class VidelScrollView extends StatelessWidget {
  final List<VideoPost> videos;

  const VidelScrollView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
//video +gradiente
SizedBox.expand(
  child: FullScreenPlayer(
caption: videoPost.name,
videoUrl: videoPost.videoUrl,


  )
),



//botones
            Positioned(
                bottom: 40, right: 20, child: VideoButtons(video: videoPost)),
          ],
        );
      },
    );
  }
}

