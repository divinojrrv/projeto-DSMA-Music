import 'package:flutter/material.dart';
import 'package:projeto/components/ListTitleDSMA.dart';
import 'package:projeto/components/TitleListDSMA.dart';

import '../components/AppBarDSMA.dart';
import '../components/ButtonDSMA.dart';
import '../components/InformativoDSMA.dart';

class ListarPlaylistsWidget extends StatefulWidget {
  const ListarPlaylistsWidget({Key? key}) : super(key: key);

  @override
  _ListarPlaylistsWidgetState createState() => _ListarPlaylistsWidgetState();
}

class _ListarPlaylistsWidgetState extends State<ListarPlaylistsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: AppBarDSMAWidget(
          title: 'Playlists',
          descricao: 'Minhas Playlists',
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
                informacao: 'Aqui você visualiza e gerencia suas playlists.',
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
                      title: 'Muito Loukaaa',
                      descricao: '1 músicas',
                      icon: Icons.arrow_forward_ios,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Muito Loukaaa 2',
                      descricao: '2 músicas',
                      icon: Icons.arrow_forward_ios,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Muito Loukaaa',
                      descricao: '3 músicas',
                      icon: Icons.arrow_forward_ios,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Muito Loukaaa 2',
                      descricao: '4 músicas',
                      icon: Icons.arrow_forward_ios,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Muito Loukaaa',
                      descricao: '5 músicas',
                      icon: Icons.arrow_forward_ios,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Muito Loukaaa 2',
                      descricao: '6 músicas',
                      icon: Icons.arrow_forward_ios,
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
                    icon: Icons.add,
                    descricao: 'Add Playlist',
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
