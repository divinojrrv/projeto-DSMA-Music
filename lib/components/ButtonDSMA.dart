import 'package:flutter/material.dart';

class ButtonDSMAWidget extends StatefulWidget {
  final Color? colorButton;
  final IconData icon;
  final String descricao;
  const ButtonDSMAWidget(
      {Key? key,
      required this.colorButton,
      required this.icon,
      required this.descricao})
      : super(key: key);

  @override
  _ButtonDSMAWidgetState createState() =>
      _ButtonDSMAWidgetState(colorButton, icon, descricao);
}

class _ButtonDSMAWidgetState extends State<ButtonDSMAWidget> {
  final Color? colorButton;
  final IconData icon;
  final String descricao;

  _ButtonDSMAWidgetState(this.colorButton, this.icon, this.descricao);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
          child: SizedBox(
              width: 72,
              height: 72,
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  primary: colorButton,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24),
                ),
              )),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
          child: Text(
            descricao,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
