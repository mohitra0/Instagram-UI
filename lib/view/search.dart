import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/view/loading.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:visibility_detector/visibility_detector.dart';

class InstagramSearch extends StatefulWidget {
  const InstagramSearch({Key key}) : super(key: key);

  @override
  _InstagramSearchState createState() => _InstagramSearchState();
}

class _InstagramSearchState extends State<InstagramSearch> {
  List imageList = [
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/girl%20.jpg?alt=media&token=148b7650-352f-4508-b374-50d4f8d35666',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fselfie%20girl%202.jpg?alt=media&token=446fe070-6870-44eb-a960-4d4e6797c6b4',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fboy%20story%202.jpg?alt=media&token=83d3622d-eaad-4f88-adf0-b454b95fa37d',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fselfie%20girl.jpg?alt=media&token=633f11ab-7a0e-4e2c-b829-deb4e724ec6b',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgirl-smiling-making-auto-photo-with-her-friends-around_1139-593.jpg?alt=media&token=09cc7c91-8de5-4bea-b082-e6c865af6f93',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgroup-three-asian-young-women-jumping-beach_7861-1855.jpg?alt=media&token=a7aca4a9-ba1c-4e4f-b5a5-dd18aeee35de',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgirl%20story%204.jpg?alt=media&token=90998c3a-c82b-4bf1-892c-f902690a0959',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/flutter-speed-code.appspot.com/o/instagram%2FThe%20%40nba%20season%20tips%20off%20today%20and%20rookie%20Nah%E2%80%99Shon%20%E2%80%9CBones%E2%80%9D%20Hyland%20(%40bizzybones)%20is%20ready%20to%20make%20his%20mark.%20%20%20The%2021-year-old%20%40nuggets%20point%20guard%20is%20preparing%20.mp4?alt=media&token=ac1dea7a-baad-4db0-b842-5d52fd3222de',
      'video': true,
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/246714655_252733613344330_6412970289322124878_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=eSH6Xvur-30AX8peZkn&edm=AP_V10EBAAAA&ccb=7-4&oh=db2dec12d8f32390d9a58f3f370064db&oe=61A6EC55&_nc_sid=4f375e',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fportrait-brunette-woman-her-car_23-2148958804.jpg?alt=media&token=aab2b4df-dce4-471f-b81a-4fd8c4c16b14',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgroup-three-asian-young-women-jumping-beach_7861-1855.jpg?alt=media&token=a7aca4a9-ba1c-4e4f-b5a5-dd18aeee35de',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fportrait-beautiful-car-owner_23-2148958768.jpg?alt=media&token=35b86c10-1bd0-4c31-bb77-a08de53dcce1',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/252060074_962415954487436_2310073533762007038_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=gpQOoS3TQEwAX_u8U0W&tn=44CfMyvx7cxnAOdM&edm=AP_V10EBAAAA&ccb=7-4&oh=f6e52577abab1af6953027c8e8a32fc8&oe=61A718F3&_nc_sid=4f375e',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/girl%20.jpg?alt=media&token=148b7650-352f-4508-b374-50d4f8d35666',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fselfie%20girl%202.jpg?alt=media&token=446fe070-6870-44eb-a960-4d4e6797c6b4',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            alignment: Alignment.centerLeft,
            // padding: const EdgeInsets.only(left: 10.0),
            margin: EdgeInsets.only(top: 13, bottom: 13, right: 13),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8)),
            width: 365,
            child: Row(
              children: [
                IconButton(
                    icon: Icon(FontAwesomeIcons.search,
                        size: 15, color: Colors.black.withOpacity(0.6)),
                    onPressed: () {}),
                Text(
                  'Search',
                  style: TextStyle(
                      fontSize: 15, color: Colors.black.withOpacity(0.6)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 3,
        itemCount: imageList.length,
        // mainAxisSpacing: 8.0,
        // crossAxisSpacing: 8.0,
        itemBuilder: (context, index) {
          Map<String, dynamic> documentpost =
              new Map<String, dynamic>.from(imageList[index]);
          return documentpost['video'] == true
              ? VideoPostWidget(
                  uid: documentpost['url'],
                  url: documentpost['url'],
                )
              : CachedNetworkImage(
                  filterQuality: FilterQuality.none,
                  fit: BoxFit.cover,
                  imageUrl: documentpost['url'],
                  placeholder: (context, url) => Loading(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                );
        },
        staggeredTileBuilder: (int index) {
          return StaggeredTile.count(
              (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1);
        },
      ),
    );
  }
}
// video player for the instagram

class VideoPostWidget extends StatefulWidget {
  VideoPostWidget({this.url, this.uid});

  String url;
  String uid;

  @override
  VideoPostWidgetState createState() => VideoPostWidgetState();
}

class VideoPostWidgetState extends State<VideoPostWidget> {
  //
  CachedVideoPlayerController _controller;
  Future<void> _initializeCachedVideoPlayerFuture;

  @override
  void initState() {
    _controller = CachedVideoPlayerController.network(widget.url);
    //_controller = CachedVideoPlayerController.asset("videos/sample_video.mp4");

    _initializeCachedVideoPlayerFuture = _controller.initialize().then((_) {});

    super.initState();
    print('what the ${widget.url}');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool volumn = true;
  bool play = true;
  @override
  Widget build(BuildContext context) {
    _controller.setLooping(true);
    _controller.setVolume(1.0);

    return VisibilityDetector(
      key: Key(widget.uid),
      onVisibilityChanged: (visibility) {
        /// if 80% of video is visible on screen
        if (visibility.visibleFraction == 1) {
          _controller.play();
        } else {
          _controller.pause();
        }
      },
      child: FutureBuilder(
        future: _initializeCachedVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active ||
              snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Stack(
                children: [
                  Loading(),
                  Positioned(
                      right: 10,
                      top: 10,
                      child: Icon(
                        Icons.video_call_outlined,
                        color: Colors.white,
                      ))
                ],
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _controller.setVolume(1);
                    });
                  },
                  child: Stack(
                    children: [
                      CachedVideoPlayer(_controller),
                      Center(
                        child: IconButton(
                            icon: Icon(
                              FontAwesomeIcons.play,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.width * 0.95,
                child: Container(height: 70, width: 70, child: Loading()),
              ),
            );
          }
        },
      ),
    );
  }

  printDuration(Duration duration, Duration endDuration, context) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    if (twoDigitMinutes != '00') {
      return "$twoDigitMinutes:$twoDigitSeconds";
    } else {
      return "$twoDigitSeconds";
    }
  }
}
