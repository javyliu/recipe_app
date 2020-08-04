import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/components/bottom_nav_bar.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/size_config.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          color: textColor,
        ),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Image.asset("assets/images/logo.png"),
      actions: <Widget>[
        IconButton(icon: SvgPicture.asset("assets/icons/search.svg"), onPressed: () => null,),
        SizedBox(width: SizeConfig.defaultSize * 0.5,)

      ],
    );
  }
}
