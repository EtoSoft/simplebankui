import 'package:backdrop/backdrop.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:openbank/style/colors.dart';
import 'package:openbank/widgets/appbar_layers/back_layer.dart';
import 'package:openbank/widgets/appbar_layers/front_layer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KC.white3,
      bottomNavigationBar: navBar(),
      body: BackdropScaffold(
        backLayerBackgroundColor: KC.white3,
        frontLayerBackgroundColor: KC.white3,
        backgroundColor: KC.secondary,
        frontLayer: FrontLayer(),
        backLayer: BackLayer(),
        appBar: BackdropAppBar(
          title: Text("Openbank"),
          actions: [Icon(Icons.notifications)],
          backgroundColor: KC.primary,
        ),
      ),
    );
  }

  CurvedNavigationBar navBar() {
    return CurvedNavigationBar(
      color: KC.primary,
      height: 65,
      backgroundColor: KC.white3,
      key: _bottomNavigationKey,
      items: <Widget>[
        Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.list,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.money_sharp,
          size: 30,
          color: Colors.white,
        ),
      ],
      onTap: (index) {
        setState(() {
          page = index;
        });
      },
    );
  }
}
