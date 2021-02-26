import 'package:flutter/material.dart';
import 'package:the_basics/widgets/navigation_bar/navbar_logo.dart';
import 'navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(children: <Widget>[
          NavBarLogo(),
          _HeadItem('BTS India Fancafé'),
          SizedBox(
            width: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Guide To BTS'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Updates'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Community Chat'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Your Profile'),
              SizedBox(
                width: 60,
              ),
            ],
          )
        ]));
  }
}

class _HeadItem extends StatelessWidget {
  final String title;
  const _HeadItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
