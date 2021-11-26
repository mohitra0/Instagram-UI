import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/view/home.dart';
import 'package:instagram_ui/view/loading.dart';
import 'package:instagram_ui/view/notification.dart';
import 'package:instagram_ui/view/profile.dart';
import 'package:instagram_ui/view/reels.dart';
import 'package:instagram_ui/view/search.dart';

class InstagramDashbaord extends StatefulWidget {
  const InstagramDashbaord({Key key}) : super(key: key);

  @override
  _InstagramDashbaordState createState() => _InstagramDashbaordState();
}

class _InstagramDashbaordState extends State<InstagramDashbaord> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Offstage(
            offstage: index != 0,
            child: new TickerMode(
              enabled: index == 0,
              child: InstagramHome(),
            ),
          ),
          new Offstage(
            offstage: index != 1,
            child: new TickerMode(
              enabled: index == 1,
              child: InstagramSearch(),
            ),
          ),
          new Offstage(
            offstage: index != 2,
            child: new TickerMode(
              enabled: index == 2,
              child: InstagramReels(),
            ),
          ),
          new Offstage(
            offstage: index != 3,
            child: new TickerMode(
                enabled: index == 3, child: InstagramNotification()),
          ),
          new Offstage(
            offstage: index != 4,
            child:
                new TickerMode(enabled: index == 4, child: InstagramProfile()),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
            ),
          ],
        ),
        child: new BottomNavigationBar(
          elevation: 1,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black.withOpacity(0.8),
          selectedItemColor: Colors.black,
          currentIndex: index,
          onTap: (int index) {
            setState(() {
              this.index = index;
            });
          },
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                // activeIcon: new Icon(Icons.home),
                icon: new Icon(
                  Icons.home_filled,
                  size: 28,
                ),
                title: SizedBox.shrink()),
            new BottomNavigationBarItem(
                icon: new Icon(
                  FontAwesomeIcons.search,
                  size: 20,
                ),
                title: SizedBox.shrink()),
            new BottomNavigationBarItem(
                icon: new Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/flutter-speed-code.appspot.com/o/instagram%2Finstagram-reels.png?alt=media&token=34d2c7e2-7fb1-4a57-ab9b-2989c38bb78e',
                  width: 23,
                ),
                title: SizedBox.shrink()),
            new BottomNavigationBarItem(
                activeIcon: Icon(FontAwesomeIcons.solidHeart),
                icon: new Icon(FontAwesomeIcons.heart),
                title: SizedBox.shrink()),
            new BottomNavigationBarItem(
                activeIcon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.transparent, width: 1),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(100.0),
                    child: CachedNetworkImage(
                      filterQuality: FilterQuality.none,
                      fit: BoxFit.cover,
                      width: 26,
                      height: 26,
                      imageUrl:
                          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/girl%20.jpg?alt=media&token=148b7650-352f-4508-b374-50d4f8d35666',
                      placeholder: (context, url) => Loading(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.transparent, width: 1),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(100.0),
                    child: CachedNetworkImage(
                      filterQuality: FilterQuality.none,
                      fit: BoxFit.cover,
                      width: 24,
                      height: 24,
                      imageUrl:
                          'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/girl%20.jpg?alt=media&token=148b7650-352f-4508-b374-50d4f8d35666',
                      placeholder: (context, url) => Loading(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
                title: SizedBox.shrink()),
          ],
        ),
      ),
    );
  }
}
