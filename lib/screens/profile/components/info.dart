import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class Info extends StatelessWidget {
  const Info({
    Key key,
    this.name,
    this.email,
    this.image,
  }) : super(key: key);

  final String name, email, image;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultSize * 24,
      child: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              height: defaultSize * 15,
              color: primaryColor,
            ),
            clipper: CustomShape(),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: defaultSize),
                  height: defaultSize * 14,
                  width: defaultSize * 14,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: defaultSize * 0.8,
                      ),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      )),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: defaultSize * 2.2,
                    color: textLightColor,
                  ),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ),
                Text(
                  email,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8492a2),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
