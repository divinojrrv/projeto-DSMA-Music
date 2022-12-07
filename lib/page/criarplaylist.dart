import 'package:flutter/material.dart';
import 'package:projeto/components/ButtonDSMA.dart';
import 'package:projeto/page/detalharplaylists.dart';
import '../components/AppBarDSMA.dart';
import '../components/FieldsDSMA.dart';
import 'listarplaylists.dart';

class CriarPlaylistWidget extends StatefulWidget {
  const CriarPlaylistWidget({Key? key}) : super(key: key);

  @override
  _CriarPlaylistWidgetState createState() => _CriarPlaylistWidgetState();
}

class _CriarPlaylistWidgetState extends State<CriarPlaylistWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool switchValue = true;

    void onPressedCancel() {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => ListarPlaylistsWidget())));
    }

    void onPressedPronto() {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => DetalharPlaylistsWidget())));
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: AppBarDSMAWidget(
          title: 'Nova Playlist',
          descricao: 'Criando Playlist',
          imagem:
              'https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/user-profile-icon.png',
        ),
        actions: [],
        centerTitle: false,
        toolbarHeight: 110,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/image/criarplaylist.png',
                  ),
                ),
              ],
            ),
            const Center(
              child: Text(
                'Agora você vai criar uma nova playlist',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF1778F2),
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Informe os dados sua playlist',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF828282),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: FieldsDSMAWidget(
                  nomefield: 'Nome:',
                  descricao: 'Informe o nome para sua playlist'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: FieldsDSMAWidget(
                  nomefield: 'Descrição:',
                  descricao: 'Informe uma descrição para sua playlist'),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Manter playlist pública',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
                  child: Switch(
                    value: switchValue,
                    onChanged: (newValue) async {
                      setState(() => switchValue = newValue);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ButtonDSMAWidget(
                    colorButton: Colors.redAccent,
                    icon: Icons.close,
                    descricao: 'Cancelar',
                    onPressed: onPressedCancel,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
                    child: ButtonDSMAWidget(
                      colorButton: Colors.blueAccent,
                      icon: Icons.check,
                      descricao: 'Pronto',
                      onPressed: onPressedPronto,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
