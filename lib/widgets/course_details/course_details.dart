import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.justify
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 28
              : 40;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 12
              : 18;
      return Container(
        width: 650,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 20,
              height: 10,
            ),
            Text(
              'THE ULTIMATE ARMY EXPERIENCE',
              style: TextStyle(fontSize: titleSize, height: 0.9),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Text(
              '''BTS has reconstructed the boy band genre into an art form.'''
              ''' Welcome to India's very first BTS fancafe. '''
              '''Our team has come together to provide you with a self sustaining ecosystem of everything and anything BTS related. Let's collectively participate to shower these artists with all the love they truly deserve! ''',
              style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.7,
                  fontWeight: FontWeight.w800),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      );
    });
  }
}
