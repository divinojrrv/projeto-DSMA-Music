import 'package:flutter/material.dart';
import 'package:projeto/components/ListTitleDSMA.dart';
import 'package:projeto/components/TitleListDSMA.dart';
import 'package:projeto/page/detalharplaylists.dart';
import 'package:projeto/page/listarplaylists.dart';

import '../components/AppBarDSMA.dart';
import '../components/ButtonDSMA.dart';
import '../components/InformativoDSMA.dart';

class AdicionarMusicasWidget extends StatefulWidget {
  const AdicionarMusicasWidget({Key? key}) : super(key: key);

  @override
  _AdicionarMusicasWidgetState createState() => _AdicionarMusicasWidgetState();
}

class _AdicionarMusicasWidgetState extends State<AdicionarMusicasWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle stylebotao = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    );

    void onPressed() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => const ListarPlaylistsWidget())));
    }

    void clicarList() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => const DetalharPlaylistsWidget())));
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: AppBarDSMAWidget(
          title: 'Muito Loukaaa',
          descricao: 'Adicionar músicas',
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  child: Text('Pop'),
                                  onPressed: () {
                                    print('Pressed');
                                  },
                                  style: stylebotao,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  child: Text('Rock'),
                                  onPressed: () {
                                    print('Pressed');
                                  },
                                  style: stylebotao,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  child: Text('Sertanejo'),
                                  onPressed: () {
                                    print('Pressed');
                                  },
                                  style: stylebotao,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  child: Text('K-Pop'),
                                  onPressed: () {
                                    print('Pressed');
                                  },
                                  style: stylebotao,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  child: Text('Samba'),
                                  onPressed: () {
                                    print('Pressed');
                                  },
                                  style: stylebotao,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30, 10, 0, 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 330,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFF1778F2),
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: TextFormField(
                              controller: textController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: "Buscar músicas",
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xFF1778F2),
                                ), //icon at tail of input
                                hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 5,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF1778F2),
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              TitleListDSMAWidget(
                title: 'Resultados da busca',
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
                      icon: Icons.add_circle_outline,
                      onTap: clicarList,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Casei com a Putaria',
                      descricao: 'Cantor Xpto 2',
                      icon: Icons.add_circle_outline,
                      onTap: clicarList,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Louca',
                      descricao: 'Cantor Xpto 3',
                      icon: Icons.add_circle_outline,
                      onTap: clicarList,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Eloise',
                      descricao: 'Cantor Xpto 4',
                      icon: Icons.add_circle_outline,
                      onTap: clicarList,
                    ),
                    ListTitleDSMAWidget(
                      title: 'Envolver',
                      descricao: 'Cantor Xpto 5',
                      icon: Icons.add_circle_outline,
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
                    icon: Icons.undo,
                    descricao: 'Voltar',
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
