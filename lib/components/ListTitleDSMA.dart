import 'package:flutter/material.dart';

class ListTitleDSMAWidget extends StatefulWidget {
  final String title, descricao;
  final IconData icon;

  const ListTitleDSMAWidget(
      {Key? key,
      required this.title,
      required this.descricao,
      required this.icon})
      : super(key: key);

  @override
  _ListTitleDSMAWidgetState createState() =>
      _ListTitleDSMAWidgetState(title, descricao, icon);
}

class _ListTitleDSMAWidgetState extends State<ListTitleDSMAWidget> {
  final String title, descricao;
  final IconData icon;
  _ListTitleDSMAWidgetState(this.title, this.descricao, this.icon);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Color(0xFF000000),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        descricao,
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Color(0xFF828282),
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Icon(
        icon,
        color: Color(0xFF303030),
        size: 20,
      ),
      tileColor: Color(0xFFF5F5F5),
      dense: false,
    );
  }
}
