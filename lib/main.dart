import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto/components/AppBarDSMA.dart';
import 'package:projeto/page/adicionarmusicas.dart';
import 'package:projeto/page/criarplaylist.dart';
import 'package:projeto/page/homelogin.dart';
import 'package:projeto/page/homepage.dart';
import 'package:projeto/page/listarplaylists.dart';

import 'components/InformativoDSMA.dart';
import 'page/detalharplaylists.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.grey,
    ),
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DSMA MUSIC',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.dark,
      ),
      home: const AdicionarMusicasWidget(),
    );
  }
}
