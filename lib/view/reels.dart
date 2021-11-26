import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/view/loading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:visibility_detector/visibility_detector.dart';

class InstagramReels extends StatefulWidget {
  const InstagramReels({Key key}) : super(key: key);

  @override
  _InstagramReelsState createState() => _InstagramReelsState();
}

class _InstagramReelsState extends State<InstagramReels> {
  List reels = [
    {
      'video':
          'https://firebasestorage.googleapis.com/v0/b/flutter-speed-code.appspot.com/o/instagram%2FHELLO%20SPOOKY%20SEASON%20%20%20%EF%B8%8F%20%EF%B8%8F%20%EF%B8%8F%20%20Emily%20Robinson%E2%80%99s%20(%40emilyriboflavin)%20here%20with%20some%20witchy%20tricks%20up%20her%20sleeve.%20%20%20%EF%B8%8F%20%20%20Reel%20by%20%40emilyriboflavin%20Music%20by%20October%20Country.mp4?alt=media&token=ca2f7c20-0a21-4a14-a770-9f5501a4a34a',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/girl%20.jpg?alt=media&token=148b7650-352f-4508-b374-50d4f8d35666',
      'name': 'Akanksha',
    },
    {
      'video':
          'https://firebasestorage.googleapis.com/v0/b/flutter-speed-code.appspot.com/o/instagram%2FSuperpowers%20activated.%20%20%20Reel%20by%20%40mikaylageier%20Music%20by%20%40tokisen_sd.mp4?alt=media&token=10cdc6be-859f-4776-b070-761ab37eb75f',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/boy.jpg?alt=media&token=491d0f8a-09ca-48f7-b95b-11d400a015f3',
      'name': 'Ronnit',
    },
    {
      'video':
          'https://firebasestorage.googleapis.com/v0/b/flutter-speed-code.appspot.com/o/instagram%2FThe%20%40nba%20season%20tips%20off%20today%20and%20rookie%20Nah%E2%80%99Shon%20%E2%80%9CBones%E2%80%9D%20Hyland%20(%40bizzybones)%20is%20ready%20to%20make%20his%20mark.%20%20%20The%2021-year-old%20%40nuggets%20point%20guard%20is%20preparing%20.mp4?alt=media&token=ac1dea7a-baad-4db0-b842-5d52fd3222de',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fboy%20story%202.jpg?alt=media&token=83d3622d-eaad-4f88-adf0-b454b95fa37d',
      'name': 'Alpaman',
    },
    {
      'video':
          'https://firebasestorage.googleapis.com/v0/b/flutter-speed-code.appspot.com/o/instagram%2FFor%20Malik%20Perry%20(%40a1chops_leek)%2C%20drums%20are%20life.%20%E2%80%9CMy%20drums%20represent%20my%20heartbeat%2C%E2%80%9D%20says%20the%2022-year-old.%20%20%20%E2%80%9CI%20feel%20like%20without%20a%20heartbeat%2C%20everything%20stops.%20I%20can%E2%80%99t%20stop%20because%20of%20my%20love%20for%20drums%2C%20dance%20an.mp4?alt=media&token=6e442e5b-3391-4b85-9749-c02ebb5d9316',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgirl-smiling-making-auto-photo-with-her-friends-around_1139-593.jpg?alt=media&token=09cc7c91-8de5-4bea-b082-e6c865af6f93',
      'name': 'elon musk',
    },
    {
      'video':
          'https://firebasestorage.googleapis.com/v0/b/flutter-speed-code.appspot.com/o/instagram%2FFor%20Malik%20Perry%20(%40a1chops_leek)%2C%20drums%20are%20life.%20%E2%80%9CMy%20drums%20represent%20my%20heartbeat%2C%E2%80%9D%20says%20the%2022-year-old.%20%20%20%E2%80%9CI%20feel%20like%20without%20a%20heartbeat%2C%20everything%20stops.%20I%20can%E2%80%99t%20stop%20because%20of%20my%20love%20for%20drums%2C%20dance%20an.mp4?alt=media&token=6e442e5b-3391-4b85-9749-c02ebb5d9316',
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgroup-three-asian-young-women-jumping-beach_7861-1855.jpg?alt=media&token=a7aca4a9-ba1c-4e4f-b5a5-dd18aeee35de',
      'name': 'mohitrao',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: reels.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> documentpost =
                  new Map<String, dynamic>.from(reels[index]);
              return Stack(
                children: [
                  VideoPostWidget(
                    uid: documentpost['video'],
                    url: documentpost['video'],
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 20, top: 40, left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Reels',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          FontAwesomeIcons.camera,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 20, bottom: 20, left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          FontAwesomeIcons.solidPaperPlane,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          FontAwesomeIcons.commentAlt,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: Colors.transparent, width: 1),
                                    color: Colors.white,
                                  ),
                                  child: ClipRRect(
                                    clipBehavior: Clip.hardEdge,
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.network(
                                      documentpost['url'],
                                      filterQuality: FilterQuality.none,
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.08,
                                      gaplessPlayback: true,
                                    ),
                                  ),
                                ),
                                Text(
                                  ' ${documentpost['name']}',
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.035,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Text(
                              'The @nba season tips off today and rookie Nah’Shon “Bones” Hyland (@bizzybones) is ready to make his mark.',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.035,
                                ),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              );
            }),
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
                      _controller.setVolume(0);
                    });
                  },
                  child: Container(
                    child: CachedVideoPlayer(_controller),
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
