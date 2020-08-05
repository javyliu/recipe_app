import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/constants.dart';

import '../../../size_config.dart';
import 'info.dart';
import 'menu_item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Info(
            name: "qmliu",
            email: "javy@163.com",
            image: "assets/images/pic.png",
          ),
          SizedBox(height: SizeConfig.defaultSize * 2,),
          MenuItem(
            iconSrc: "assets/icons/bookmark_fill.svg",
            title: "Saved Recipes",
            press: (){}
          ),
          MenuItem(
              iconSrc: "assets/icons/chef_color.svg",
              title: "Super Plan",
              press: (){}
          ),
          MenuItem(
              iconSrc: "assets/icons/language.svg",
              title: "Change Language",
              press: (){}
          ),
          MenuItem(
              iconSrc: "assets/icons/info.svg",
              title: "help",
              press: (){}
          ),
        ],
      ),
    );
  }
}
