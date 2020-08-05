import 'package:flutter/material.dart';
import 'package:recipe_app/components/bottom_nav_bar.dart';
import 'package:recipe_app/constants.dart';

import '../../size_config.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: primaryColor,
      leading: SizedBox(),
      title: Text('Profile'),
      centerTitle: true,
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            'Edit',
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize * 1.6,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
