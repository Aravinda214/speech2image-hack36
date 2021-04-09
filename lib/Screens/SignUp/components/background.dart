import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // This size provider us total height and width of our screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "asserts/images/signup_top.png",
                width: size.width * 0.4,
              )
            ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "asserts/images/login_bottom.png",
                width: size.width * 0.4,
              )
            ),
            child,
        ],
      ),
    );
  } 
}