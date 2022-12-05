import 'package:flutter/material.dart';

class TitleListDSMAWidget extends StatefulWidget {
  final String title;
  const TitleListDSMAWidget({Key? key, required this.title}) : super(key: key);

  @override
  _TitleListDSMAWidgetState createState() => _TitleListDSMAWidgetState(title);
}

class _TitleListDSMAWidgetState extends State<TitleListDSMAWidget> {
  final String title;

  _TitleListDSMAWidgetState(this.title);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Color(0xFFF1F1F1),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF828282),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
