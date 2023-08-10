import 'package:flutter/material.dart';
import 'package:toktik_app/domain/entities/video_post.dart';

class VidelScrollView extends StatelessWidget {
  final List<VideoPost> videos;

  const VidelScrollView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green),
        Container(color: Colors.yellow),
        Container(color: Colors.orange),
        Container(color: Colors.pink),
      ],
    );
  }
}
