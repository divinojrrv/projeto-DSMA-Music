import 'package:flutter/material.dart';
import 'package:projeto/components/ListTitleDSMA.dart';
import 'package:projeto/components/TitleListDSMA.dart';
import 'package:projeto/page/adicionarmusicas.dart';

import '../components/AppBarDSMA.dart';
import '../components/ButtonDSMA.dart';
import '../components/InformativoDSMA.dart';
import 'listarplaylists.dart';

class DetalharPlaylistsWidget extends StatefulWidget {
  const DetalharPlaylistsWidget({Key? key}) : super(key: key);

  @override
  _DetalharPlaylistsWidgetState createState() =>
      _DetalharPlaylistsWidgetState();
}

class _DetalharPlaylistsWidgetState extends State<DetalharPlaylistsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => const AdicionarMusicasWidget())));
    }

    void clicarList() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => const AdicionarMusicasWidget())));
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: AppBarDSMAWidget(
          title: 'Muito Loukaaa',
          descricao: 'Detalhe da Playlist',
          imagem:
              'https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/user-profile-icon.png',
        ),
        actions: [],
        centerTitle: false,
        toolbarHeight: 110,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              InformativoDSMAWidget(
                informacao: 'Aqui você visualiza e gerência suas músicas.',
              ),
              TitleListDSMAWidget(
                title: 'Playlists',
              ),
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTitleDSMAWidget(
                      title: 'Immortals',
                      descricao: 'Cantor Xpto',
                      icon: Icons.remove_circle_outline,
                      onTap: clicarList,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Casei com a Putaria',
                      descricao: 'Cantor Xpto 2',
                      icon: Icons.remove_circle_outline,
                      onTap: clicarList,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Louca',
                      descricao: 'Cantor Xpto 3',
                      icon: Icons.remove_circle_outline,
                      onTap: clicarList,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Eloise',
                      descricao: 'Cantor Xpto 4',
                      icon: Icons.remove_circle_outline,
                      onTap: clicarList,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Envolver',
                      descricao: 'Cantor Xpto 5',
                      icon: Icons.remove_circle_outline,
                      onTap: clicarList,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ButtonDSMAWidget(
                    colorButton: Color(0xFF1778F2),
                    icon: Icons.queue_music_outlined,
                    descricao: 'Add Música',
                    onPressed: onPressed,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
