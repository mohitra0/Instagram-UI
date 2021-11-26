import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:instagram_ui/view/loading.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:like_button/like_button.dart';

class InstagramHome extends StatefulWidget {
  const InstagramHome({Key key}) : super(key: key);

  @override
  _InstagramHomeState createState() => _InstagramHomeState();
}

class _InstagramHomeState extends State<InstagramHome> {
  List story = [
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/girl%20.jpg?alt=media&token=148b7650-352f-4508-b374-50d4f8d35666',
      'name': 'Your Story',
      'seem': false,
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/boy.jpg?alt=media&token=491d0f8a-09ca-48f7-b95b-11d400a015f3',
      'name': 'Ronnit',
      'seem': false,
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fboy%20story%202.jpg?alt=media&token=83d3622d-eaad-4f88-adf0-b454b95fa37d',
      'name': 'Alpaman',
      'seem': false,
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fboy%20story%205.jpg?alt=media&token=dca1f3f1-5423-4847-a6e4-8c484f756950',
      'name': 'callmemaybe',
      'seem': false,
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgirl-smiling-making-auto-photo-with-her-friends-around_1139-593.jpg?alt=media&token=09cc7c91-8de5-4bea-b082-e6c865af6f93',
      'name': 'elon musk',
      'seem': false,
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgroup-three-asian-young-women-jumping-beach_7861-1855.jpg?alt=media&token=a7aca4a9-ba1c-4e4f-b5a5-dd18aeee35de',
      'name': 'mohitrao',
      'seem': false,
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgirl%20story%204.jpg?alt=media&token=90998c3a-c82b-4bf1-892c-f902690a0959',
      'name': 'Johnathan',
      'seem': false,
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fportrait-brunette-woman-her-car_23-2148958804.jpg?alt=media&token=aab2b4df-dce4-471f-b81a-4fd8c4c16b14',
      'name': 'jassie',
      'seem': false,
    },
  ];

  List post = [
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/259833148_1054941468679060_9059018256929699441_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=wlGSE47y3XMAX9Zkry_&edm=AP_V10EBAAAA&ccb=7-4&oh=8788bc3b2ad236280e90294864243812&oe=61A678CE&_nc_sid=4f375e',
      'name': 'shady__',
      'seem': false,
      'caption':
          '“My people and communities inspire and empower me every day. I find strength in my family and my beautiful friends.”⁣'
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/259833148_1054941468679060_9059018256929699441_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=wlGSE47y3XMAX9Zkry_&edm=AP_V10EBAAAA&ccb=7-4&oh=8788bc3b2ad236280e90294864243812&oe=61A678CE&_nc_sid=4f375e',
      'name': 'shady__',
      'seem': false,
      'caption':
          '“My people and communities inspire and empower me every day. I find strength in my family and my beautiful friends.”⁣'
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/256827302_905547380386059_6156387368938667824_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=CsK-PcAj3VEAX8ofZMp&tn=44CfMyvx7cxnAOdM&edm=AP_V10EBAAAA&ccb=7-4&oh=659ecc3d86f9da41c094e5b26f6a88e3&oe=61A6948D&_nc_sid=4f375e',
      'name': 'jasonwally',
      'seem': false,
      'caption':
          'The DJ, songwriter, producer and high school student is the youngest artist to ever perform at Lollapalooza, plus the youngest — and one of the first trans artists — to take the stage at Electric Daisy Carnival in Las Vegas.⁣',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/253460490_1047895502716504_2716416458452975715_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=HiyN5DJIElAAX_gNziC&edm=AP_V10EBAAAA&ccb=7-4&oh=16b98efe6c5604721384f93024ccfdd8&oe=61A5FD5E&_nc_sid=4f375e',
      'name': 'jessica_ron',
      'seem': false,
      'caption':
          'Verified Looks like we’re not the only ones looking toward the weekend. 🌈 👀 🌈⁣⁣Peep our story right now for more things that made us smile and look twice this week.⁣'
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/videoplayback.mp4?alt=media&token=35d16cec-8a90-4434-a4b6-22705a9e92de',
      'name': 'Otis_mark',
      'seem': false,
      'video': true,
      'caption':
          '“In addition to receiving a monetary grant, each recipient will connect with a community of mentors chosen with the support of the #BlackDesignVisionaries committee and partner organizations.⁣”',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/videoplayback%20(1).mp4?alt=media&token=7631a8e5-e526-4802-b891-46c067eade33',
      'name': 'elizabeth',
      'seem': false,
      'video': true,
      'caption':
          '“I don’t think I would have gotten where I am today without the help of Black designers in my life — Black creatives, Black people,”',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/videoplayback%20(1).mp4?alt=media&token=7631a8e5-e526-4802-b891-46c067eade33',
      'name': 'elsa snow',
      'seem': false,
      'video': true,
      'caption':
          'I see my makeup as a new painting every morning; sometimes I opt for something experimental and guided by my emotions, other days I try more dramatic and extravagant styles,” says the 20-year-old creator. “I start to paint how I feel that day.',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/251408678_393744912459909_5716635595074418055_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=tsqtZzcuPdYAX-5XnGw&edm=AP_V10EBAAAA&ccb=7-4&oh=3143ebe503612dbddebcf0965eb7a036&oe=61A66094&_nc_sid=4f375e  ',
      'name': 'fragile man',
      'seem': false,
      'caption':
          "Naysha started out posting her art on Instagram (@artsysushiroll), but now also makes small skits, dance and fashion content and relatable videos about her daily life.⁣"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: SvgPicture.network(
            'https://firebasestorage.googleapis.com/v0/b/flutter-speed-code.appspot.com/o/instagram%2Fic_instagram.svg?alt=media&token=4fe44dd9-f376-4a76-b834-509d5d43d8c4',
            width: 120,
          ),
          actions: [
            IconButton(
                icon: Icon(
                  FontAwesomeIcons.plusSquare,
                  color: Colors.black,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  FontAwesomeIcons.facebookMessenger,
                  color: Colors.black,
                ),
                onPressed: null)
          ],
        ),
        body: ListView.builder(
            itemCount: post.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> documentpost =
                  new Map<String, dynamic>.from(post[index]);
              if (index == 0) {
                return Container(
                  margin: EdgeInsets.only(top: 5),
                  height: MediaQuery.of(context).size.width * 0.24,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: story.length,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> document =
                            new Map<String, dynamic>.from(story[index]);
                        if (index == 0) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 7,
                              ),
                              child: Column(
                                children: [
                                  Badge(
                                    position: BadgePosition.bottomEnd(
                                        bottom: -1, end: 0),
                                    badgeContent: Icon(
                                        FontAwesomeIcons.plusCircle,
                                        size: 12,
                                        color: Colors.white),
                                    badgeColor: Colors.blue,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                            color: Colors.white, width: 1),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              color: Colors.transparent,
                                              width: 1),
                                          color: Colors.white,
                                        ),
                                        child: ClipRRect(
                                          clipBehavior: Clip.hardEdge,
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          child: Image.network(
                                            document['url'],
                                            filterQuality: FilterQuality.none,
                                            fit: BoxFit.cover,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.16,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.16,
                                            gaplessPlayback: true,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.5,
                                  ),
                                  Container(
                                    width: 70,
                                    child: Text(
                                      'Add Story',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.031),
                                      ),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }

                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(left: 7),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: Colors.transparent, width: 3),
                                    gradient: document['seen'] != false
                                        ? LinearGradient(colors: [
                                            HexColor('#6200EE'),
                                            HexColor('#ee006f'),
                                          ])
                                        : LinearGradient(colors: [
                                            Colors.black.withOpacity(0.3),
                                            Colors.black.withOpacity(0.3),
                                          ]),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          color: Colors.transparent, width: 1),
                                      color: Colors.white,
                                    ),
                                    child: ClipRRect(
                                      clipBehavior: Clip.hardEdge,
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      child: Image.network(
                                        document['url'],
                                        filterQuality: FilterQuality.none,
                                        fit: BoxFit.cover,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.16,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.16,
                                        gaplessPlayback: true,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 70,
                                  child: Text(
                                    document['name'],
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.031),
                                    ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                );
              }

              return Container(
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                      decoration: index == 1
                          ? BoxDecoration(
                              border: Border(
                              top: BorderSide(width: 0.18, color: Colors.black),
                            ))
                          : BoxDecoration(),
                      child: Row(
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
                                story[index]['url'],
                                filterQuality: FilterQuality.none,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width * 0.08,
                                height:
                                    MediaQuery.of(context).size.width * 0.08,
                                gaplessPlayback: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                documentpost['name'],
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.037),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                documentpost['name'],
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.031),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    documentpost['video'] == true
                        ? VideoPostWidget(
                            url: documentpost['url'],
                            uid: documentpost['url'],
                          )
                        : Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.transparent, width: 1),
                              color: Colors.white,
                            ),
                            child: ClipRRect(
                              clipBehavior: Clip.hardEdge,
                              child: CachedNetworkImage(
                                filterQuality: FilterQuality.none,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 420,
                                imageUrl: documentpost['url'],
                                placeholder: (context, url) => Loading(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                      child: Row(
                        children: [
                          LikeButton(
                            size: MediaQuery.of(context).size.width * 0.09,
                            isLiked: false,
                            onTap: (isLiked) async {
                              return !isLiked;
                            },
                            circleColor: CircleColor(
                                start: Color(0xff00ddff),
                                end: Color(0xff0099cc)),
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Colors.red,
                              dotSecondaryColor: Colors.red,
                            ),
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                isLiked
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isLiked
                                    ? Colors.red
                                    : Colors.black.withOpacity(0.8),
                                size: MediaQuery.of(context).size.width * 0.08,
                              );
                            },
                            likeCount: 0,
                            countBuilder:
                                (int count, bool isLiked, String text) {
                              var color = isLiked
                                  ? Colors.white.withOpacity(0.8)
                                  : Colors.white.withOpacity(0.8);

                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "",
                                  style: TextStyle(color: color),
                                );
                              } else
                                result = Text(
                                  '',
                                  style: TextStyle(color: color),
                                );
                              return result;
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CachedNetworkImage(
                            filterQuality: FilterQuality.none,
                            fit: BoxFit.cover,
                            width: 24,
                            imageUrl:
                                'https://firebasestorage.googleapis.com/v0/b/flutter-speed-code.appspot.com/o/instagram%2Finstagram-comment.png?alt=media&token=eb08da68-64cf-45e1-844c-caf21e8ba304',
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CachedNetworkImage(
                            filterQuality: FilterQuality.none,
                            fit: BoxFit.cover,
                            width: 24,
                            imageUrl:
                                'https://firebasestorage.googleapis.com/v0/b/flutter-speed-code.appspot.com/o/instagram%2Finstagram-share.png?alt=media&token=25ce627d-17ff-497b-a5b9-f1b918a6c248',
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          Spacer(),
                          IconButton(
                              icon: Icon(FontAwesomeIcons.bookmark),
                              onPressed: () {})
                        ],
                      ),
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                        width: 600,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  story[index]['url'],
                                  filterQuality: FilterQuality.none,
                                  fit: BoxFit.fitWidth,
                                  width:
                                      MediaQuery.of(context).size.width * 0.05,
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                  gaplessPlayback: true,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Liked by ${documentpost['name']}',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                              ),
                            ),
                            Text(
                              ' and 25 others',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                        width: double.infinity,
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          text: TextSpan(
                            text: documentpost['name'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' ${documentpost['caption']}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                        width: double.infinity,
                        child: Text(
                          'View all 45 comments',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(color: Colors.grey),
                        )),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                        width: double.infinity,
                        child: Text(
                          '2 hours ago',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              );
            }));
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
