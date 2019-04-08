import 'package:flutter/material.dart';
import 'base_background.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseBackground(_splashButtons(), "assets/hum_shake_purp_middle.png");
  }
}

Widget _splashButtons() {
  return Stack(children: <Widget>[_registerButton(), _signInButton()],);
}

// this can be refactored to a single function that takes an alignment property
Widget _registerButton(){
  return Container(
      alignment: Alignment(-0.75, 0.85),
      child: MaterialButton(
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
        onPressed: () => {},
        child: new Text(
          'Register',
          style: new TextStyle(
            fontSize: 17.5, 
          ),
        ),
        color: Colors.white,
        splashColor: Colors.purpleAccent,
        textColor: Colors.purple,
      ));
}

Widget _signInButton(){
  return Container(
      alignment: Alignment(0.75, 0.85),
      child: MaterialButton(
        onPressed: () => {},
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
        child: new Text(
          'Sign-in',
          style: new TextStyle(
            fontSize: 17.5, 
          ),
        ),
        color: Colors.white,
        splashColor: Colors.purpleAccent,
        textColor: Colors.purple,
      ));
}