import 'package:flutter/material.dart';



class FieldsDSMAWidget extends StatefulWidget {
  final String nomefield;
  final String descricao;
  const FieldsDSMAWidget({Key? key, required this.nomefield, required this.descricao}) : super(key: key);
  
  @override
  _FieldsDSMAWidgetState createState() => _FieldsDSMAWidgetState(nomefield, descricao);
}

class _FieldsDSMAWidgetState extends State<FieldsDSMAWidget> {
  TextEditingController? textController;
  final String nomefield;
  final String descricao;
  _FieldsDSMAWidgetState(this.nomefield, this.descricao);

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

    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 30, 
            right: 30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  nomefield,
                  textAlign: TextAlign.start,
                  style: 
                    TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                    ),
                ),
              Container(
                width: size.width - 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: TextFormField(
                    controller: textController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: descricao,
                      hintStyle: 
                          TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.grey,
                              fontSize: 14,
                          ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
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
                    style: 
                      TextStyle(
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
    );
  }
}
