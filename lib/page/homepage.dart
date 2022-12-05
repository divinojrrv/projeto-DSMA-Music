import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:projeto/page/homelogin.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  


Widget build(BuildContext context) {

  Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1778F2),
      body: Center(
        child:InkWell(
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeLoginWidget()));
          },
          child: Image.asset('assets/image/logodsma.jpg',
                          width: size.width * 1,
                          height: size.height * 1,
                          ),
        ),
      ),
    );
  }
}
