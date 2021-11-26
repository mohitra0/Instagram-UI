import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:instagram_ui/view/loading.dart';
import 'package:provider/provider.dart';

class InstagramNotification extends StatelessWidget {
  List notification = [
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgroup-three-asian-young-women-jumping-beach_7861-1855.jpg?alt=media&token=a7aca4a9-ba1c-4e4f-b5a5-dd18aeee35de',
      'name': 'mohitrao',
      'notification': 'has started following you',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgirl%20story%204.jpg?alt=media&token=90998c3a-c82b-4bf1-892c-f902690a0959',
      'name': 'Johnathan',
      'notification': 'has liked your comment : woah',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fportrait-brunette-woman-her-car_23-2148958804.jpg?alt=media&token=aab2b4df-dce4-471f-b81a-4fd8c4c16b14',
      'name': 'jassie',
      'notification': 'mentioned you in a comment : ohh point man',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/girl%20.jpg?alt=media&token=148b7650-352f-4508-b374-50d4f8d35666',
      'name': 'Your Story',
      'notification': 'has commented on your post : This is so funny lol',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/girl%20.jpg?alt=media&token=148b7650-352f-4508-b374-50d4f8d35666',
      'name': 'Your Story',
      'notification': 'has commented on your post : This is so funny lol',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/boy.jpg?alt=media&token=491d0f8a-09ca-48f7-b95b-11d400a015f3',
      'name': 'Ronnit',
      'notification': 'has replied to your comment : ya sure man',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fboy%20story%202.jpg?alt=media&token=83d3622d-eaad-4f88-adf0-b454b95fa37d',
      'name': 'Alpaman',
      'notification': 'has commented on your post : hahahaha',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fboy%20story%205.jpg?alt=media&token=dca1f3f1-5423-4847-a6e4-8c484f756950',
      'name': 'callmemaybe',
      'notification': 'has sent you a follow request',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgirl-smiling-making-auto-photo-with-her-friends-around_1139-593.jpg?alt=media&token=09cc7c91-8de5-4bea-b082-e6c865af6f93',
      'name': 'elon musk',
      'notification': 'has started following you',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgroup-three-asian-young-women-jumping-beach_7861-1855.jpg?alt=media&token=a7aca4a9-ba1c-4e4f-b5a5-dd18aeee35de',
      'name': 'mohitrao',
      'notification': 'has started following you',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fgirl%20story%204.jpg?alt=media&token=90998c3a-c82b-4bf1-892c-f902690a0959',
      'name': 'Johnathan',
      'notification': 'has liked your comment : woah',
    },
    {
      'url':
          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/testurl%2Fportrait-brunette-woman-her-car_23-2148958804.jpg?alt=media&token=aab2b4df-dce4-471f-b81a-4fd8c4c16b14',
      'name': 'jassie',
      'notification': 'mentioned you in a comment : ohh point man',
    },
  ];

  List post = [
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/259833148_1054941468679060_9059018256929699441_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=wlGSE47y3XMAX9Zkry_&edm=AP_V10EBAAAA&ccb=7-4&oh=8788bc3b2ad236280e90294864243812&oe=61A678CE&_nc_sid=4f375e',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/259833148_1054941468679060_9059018256929699441_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=wlGSE47y3XMAX9Zkry_&edm=AP_V10EBAAAA&ccb=7-4&oh=8788bc3b2ad236280e90294864243812&oe=61A678CE&_nc_sid=4f375e',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/256827302_905547380386059_6156387368938667824_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=CsK-PcAj3VEAX8ofZMp&tn=44CfMyvx7cxnAOdM&edm=AP_V10EBAAAA&ccb=7-4&oh=659ecc3d86f9da41c094e5b26f6a88e3&oe=61A6948D&_nc_sid=4f375e',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/259833148_1054941468679060_9059018256929699441_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=wlGSE47y3XMAX9Zkry_&edm=AP_V10EBAAAA&ccb=7-4&oh=8788bc3b2ad236280e90294864243812&oe=61A678CE&_nc_sid=4f375e',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/259833148_1054941468679060_9059018256929699441_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=wlGSE47y3XMAX9Zkry_&edm=AP_V10EBAAAA&ccb=7-4&oh=8788bc3b2ad236280e90294864243812&oe=61A678CE&_nc_sid=4f375e',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/256827302_905547380386059_6156387368938667824_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=CsK-PcAj3VEAX8ofZMp&tn=44CfMyvx7cxnAOdM&edm=AP_V10EBAAAA&ccb=7-4&oh=659ecc3d86f9da41c094e5b26f6a88e3&oe=61A6948D&_nc_sid=4f375e',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/253460490_1047895502716504_2716416458452975715_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=HiyN5DJIElAAX_gNziC&edm=AP_V10EBAAAA&ccb=7-4&oh=16b98efe6c5604721384f93024ccfdd8&oe=61A5FD5E&_nc_sid=4f375e',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/251408678_393744912459909_5716635595074418055_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=tsqtZzcuPdYAX-5XnGw&edm=AP_V10EBAAAA&ccb=7-4&oh=3143ebe503612dbddebcf0965eb7a036&oe=61A66094&_nc_sid=4f375e  ',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/259833148_1054941468679060_9059018256929699441_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=wlGSE47y3XMAX9Zkry_&edm=AP_V10EBAAAA&ccb=7-4&oh=8788bc3b2ad236280e90294864243812&oe=61A678CE&_nc_sid=4f375e',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/259833148_1054941468679060_9059018256929699441_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=wlGSE47y3XMAX9Zkry_&edm=AP_V10EBAAAA&ccb=7-4&oh=8788bc3b2ad236280e90294864243812&oe=61A678CE&_nc_sid=4f375e',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/259833148_1054941468679060_9059018256929699441_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=wlGSE47y3XMAX9Zkry_&edm=AP_V10EBAAAA&ccb=7-4&oh=8788bc3b2ad236280e90294864243812&oe=61A678CE&_nc_sid=4f375e',
    },
    {
      'url':
          'https://instagram.fdel3-2.fna.fbcdn.net/v/t51.2885-15/e35/256827302_905547380386059_6156387368938667824_n.jpg?_nc_ht=instagram.fdel3-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=CsK-PcAj3VEAX8ofZMp&tn=44CfMyvx7cxnAOdM&edm=AP_V10EBAAAA&ccb=7-4&oh=659ecc3d86f9da41c094e5b26f6a88e3&oe=61A6948D&_nc_sid=4f375e',
    },
  ];

  int refresh;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          key: key,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.098),
          itemCount: notification.length,
          itemBuilder: (context, reverseIndex) {
            Map<String, dynamic> document =
                new Map<String, dynamic>.from(notification[reverseIndex]);

            if (reverseIndex == 0) {
              return Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  Container(
                    // color: HexColor('#1c1f43'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.height * 0.02,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Activity",
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.050),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          dense: true,
                          onTap: () {},
                          leading: Badge(
                            toAnimate: false,
                            shape: BadgeShape.circle,
                            badgeColor: Colors.red,
                            borderRadius: BorderRadius.circular(100),
                            position: BadgePosition.topEnd(top: -5, end: -8),
                            badgeContent: Text('94',
                                style: TextStyle(color: Colors.white)),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.black,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: CachedNetworkImage(
                                  filterQuality: FilterQuality.none,
                                  width:
                                      MediaQuery.of(context).size.width * 0.12,
                                  height:
                                      MediaQuery.of(context).size.width * 0.12,
                                  fit: BoxFit.fitWidth,
                                  imageUrl:
                                      'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/colllrgr.jpg?alt=media&token=5588827e-2ee5-403d-8aa2-05842f1b6748',
                                  placeholder: (context, url) => Loading(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                            ),
                          ),
                          title: Text(
                            'Follow Requests',
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.038),
                            ),
                          ),
                          subtitle: Text(
                            'Approve or ignore requests',
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.035),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Today",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              );
            }
            if (reverseIndex == 3) {
              return Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "This Week",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              );
            }
            return Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: ListTile(
                          trailing: ClipRRect(
                            child: CachedNetworkImage(
                              filterQuality: FilterQuality.none,
                              width: MediaQuery.of(context).size.width * 0.12,
                              height: MediaQuery.of(context).size.width * 0.12,
                              fit: BoxFit.cover,
                              imageUrl: post[notification.length - reverseIndex]
                                  ['url'],
                              placeholder: (context, url) => Loading(),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                          ),
                          leading: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100.0),
                              child: CachedNetworkImage(
                                filterQuality: FilterQuality.none,
                                width: MediaQuery.of(context).size.width * 0.12,
                                height:
                                    MediaQuery.of(context).size.width * 0.12,
                                fit: BoxFit.cover,
                                imageUrl: document['url'],
                                placeholder: (context, url) => Loading(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                          subtitle: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            text: TextSpan(
                              text: '@${document['name']}',
                              style: TextStyle(color: Colors.blue.shade200),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' ${document['notification']}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                TextSpan(
                                  text: '  2 mins',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.4),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
