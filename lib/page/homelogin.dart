import 'package:flutter/material.dart';
import 'package:projeto/components/ButtonDSMA.dart';
import '../components/FieldsDSMA.dart';

class HomeLoginWidget extends StatefulWidget {
  const HomeLoginWidget({Key? key}) : super(key: key);

  @override
  _HomeLoginWidgetState createState() => _HomeLoginWidgetState();
}

class _HomeLoginWidgetState extends State<HomeLoginWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/image/login.png',
                  ),
                ),
              ],
            ),
            const Center(
              child: Text(
                'Faça o login para gerenciar suas playlists',
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
                'Informe suas credenciais ou escolha logar com uma conta social',
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
            Center(
              child: FieldsDSMAWidget(
                  nomefield: 'E-mail:', descricao: 'Informe seu E-mail'),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: FieldsDSMAWidget(
                  nomefield: 'Senha:', descricao: 'Informe sua senha'),
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
                      'Logar com conta social',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/image/facebook.png',
                      width: size.width * 0.1,
                      height: size.height * 0.1,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/image/Google.png',
                      width: size.width * 0.1,
                      height: size.height * 0.1,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ButtonDSMAWidget(
                    colorButton: Colors.redAccent,
                    icon: Icons.close,
                    descricao: 'Cancelar',
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
                    child: ButtonDSMAWidget(
                      colorButton: Colors.blueAccent,
                      icon: Icons.check,
                      descricao: 'Pronto',
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
