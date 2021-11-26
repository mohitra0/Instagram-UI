import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:instagram_ui/view/loading.dart';
import 'package:provider/provider.dart';

class InstagramProfile extends StatelessWidget {
  List profile = [
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          key: key,
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, isScolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                collapsedHeight: MediaQuery.of(context).size.height * 0.42,
                // floating: true,
                expandedHeight: MediaQuery.of(context).size.height * 0.42,
                title: Container(
                    // alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.01),
                    child: Text(
                      'mohitrao___',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                    )),

                actions: [
                  IconButton(
                      icon: Icon(
                        FontAwesomeIcons.plusSquare,
                        color: Colors.black,
                      ),
                      onPressed: null),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.bars),
                    color: Colors.black,
                    iconSize: MediaQuery.of(context).size.width * 0.07,
                    tooltip: 'Settings',
                    onPressed: () {},
                  ),
                ],
                flexibleSpace: Container(
                  // color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                    ),
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1,
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(color: Colors.white, width: 0.5),
                                color: Colors.black,
                              ),
                              child: ClipRRect(
                                clipBehavior: Clip.hardEdge,
                                borderRadius: BorderRadius.circular(100.0),
                                child: CachedNetworkImage(
                                  filterQuality: FilterQuality.none,
                                  fit: BoxFit.cover,
                                  width:
                                      MediaQuery.of(context).size.width * 0.23,
                                  height:
                                      MediaQuery.of(context).size.width * 0.23,
                                  imageUrl:
                                      'https://instagram.fdel11-2.fna.fbcdn.net/v/t51.2885-19/s320x320/258884588_107227521716048_7551096690624260625_n.jpg?_nc_ht=instagram.fdel11-2.fna.fbcdn.net&_nc_cat=108&_nc_ohc=2perEamTloYAX-I6E4i&edm=ABfd0MgBAAAA&ccb=7-4&oh=64b8299310829a0c6d04c56a8c0d17d0&oe=61A6D425&_nc_sid=7bff83',
                                  placeholder: (context, url) => Loading(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  '13k',
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                  ),
                                ),
                                Text(
                                  'Posts',
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        // fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Column(
                              children: [
                                Text(
                                  '123k',
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                  ),
                                ),
                                Text(
                                  'Followers',
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        // fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Column(
                              children: [
                                Text(
                                  '93',
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                  ),
                                ),
                                Text(
                                  'Following',
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        // fontWeight: FontWeight.bold,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Mohit rao',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.037),
                          ),
                          overflow: TextOverflow.visible,
                        ),
                        Text(
                          'Personal Blog',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.037),
                          ),
                          overflow: TextOverflow.visible,
                        ),
                        Text(
                          '• 🐝 Full Stack App and Web Developer\n• 🚀 +3 Years Experience in Product Management\n• 🏆 Concept • Product • Execution\n• 💵 Helping startups grow',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.035),
                          ),
                        ),
                        Text(
                          'www.mohitrao.com',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.037),
                          ),
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.009,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(
                                    color: Colors.grey.withOpacity(0.4))),
                            color: Colors.white,
                            textColor: Colors.black,
                            onPressed: () {},
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.035,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: MyDelegate(
                  TabBar(
                    onTap: (value) {},
                    tabs: [
                      Tab(
                          icon: Icon(
                        FontAwesomeIcons.th,
                        color: Colors.black,
                      )),
                      Tab(
                          icon: Icon(FontAwesomeIcons.userTag,
                              color: Colors.black)),
                    ],
                    indicatorColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.white,
                  ),
                ),
                floating: true,
                pinned: true,
              )
            ];
          },
          body: TabBarView(children: [
            GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height * 0.5),
                  crossAxisCount: 3),
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.09),
              itemCount: profile.length,
              itemBuilder: (context, reverseIndex) {
                Map<String, dynamic> document =
                    new Map<String, dynamic>.from(profile[reverseIndex]);

                return ClipRRect(
                  child: CachedNetworkImage(
                    filterQuality: FilterQuality.none,
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.width * 0.12,
                    fit: BoxFit.cover,
                    imageUrl: document['url'],
                    placeholder: (context, url) => Loading(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                );
              },
            ),
            GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height * 0.6),
                  crossAxisCount: 3),
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.09),
              itemCount: profile.length,
              itemBuilder: (context, reverseIndex) {
                Map<String, dynamic> document =
                    new Map<String, dynamic>.from(profile[reverseIndex]);

                return ClipRRect(
                  child: CachedNetworkImage(
                    filterQuality: FilterQuality.none,
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.width * 0.12,
                    fit: BoxFit.cover,
                    imageUrl: document['url'],
                    placeholder: (context, url) => Loading(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  MyDelegate(this.tabBar);
  final TabBar tabBar;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
