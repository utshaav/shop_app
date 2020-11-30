import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: kTextColor,
        onPressed: () {},
      ),
      title: Text("Will it be good?"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          color: kTextColor,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined),
          color: kTextColor,
          onPressed: () {},
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
