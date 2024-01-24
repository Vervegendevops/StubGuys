import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/Components/content_screen.dart';

class Reels extends StatelessWidget {
  final List<String> videos = [
    'https://assets.mixkit.co/videos/preview/mixkit-taking-photos-from-different-angles-of-a-model-34421-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-winter-fashion-cold-looking-woman-concept-video-39874-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-womans-feet-splashing-in-the-pool-1261-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
  ];
/*? hekko
  ! alert
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: double.infinity,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return ContentScreen(
              src: videos[index],
            );
          },
          itemCount: videos.length,
          scrollDirection: Axis.vertical,
          pagination: SwiperPagination(), // You can customize the pagination if needed
          control: SwiperControl(), // You can add controls if needed
        ),
      ),
    );
  }
}
