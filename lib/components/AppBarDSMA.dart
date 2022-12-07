import 'package:flutter/material.dart';

import '../page/homelogin.dart';

class AppBarDSMAWidget extends StatefulWidget {
  final String title, descricao, imagem;
  const AppBarDSMAWidget(
      {Key? key,
      required this.title,
      required this.descricao,
      required this.imagem})
      : super(key: key);

  @override
  _AppBarDSMAWidgetState createState() =>
      _AppBarDSMAWidgetState(title, descricao, imagem);
}

class _AppBarDSMAWidgetState extends State<AppBarDSMAWidget> {
  final String title, descricao, imagem;

  _AppBarDSMAWidgetState(this.title, this.descricao, this.imagem);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 390,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      color: Color(0xFF1778F2),
                      iconSize: 26,
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeLoginWidget()));
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF1778F2),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          descricao,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF828282),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image.network(
                            imagem,
                            width: 50,
                            height: 50,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          HomeLoginWidget())));
                            }),
                            child: Text(
                              'Desconectar',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF1778F2),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
