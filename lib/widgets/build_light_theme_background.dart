import 'package:flutter/material.dart';

Widget buildLightThemeBackground(
    {required AppBar appBar, required Widget mainWidget}) {
  return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: appBar,
      body: SafeArea(
        child: Stack(children: [
          Container(
              decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/ellipses_white_screen.png'),
              fit: BoxFit.cover,
            ),
          )),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.3),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: mainWidget,
          ),
        ]),
      ));
}
