import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>;
  final _name = "";
  var _prenom = "";
  final _email = "";
  final _password = "";

  // startRegister() {
  //   var currentState;
  //   final validity = _formKey.currentState.validate();
  //   FocusScope.of(context).unfocus();
  //   if (validity) {
  //     _formKey.currentState.save();
  //   }
  // }

  // submitform(String name,String prenom, String email,String password ) async {
  //   final auth = FirebaseAuth.instance;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECD2F8),
      body: ListView(
        children: [
          Container(
            width: 329.0,
            height: 648.0,
            color: Color(0xFFE3B2FB),
            padding: EdgeInsets.all(50),
            margin: EdgeInsets.all(50),
            child: Form(
              child: Column(
                children: [
                  Container(
                      width: 278,
                      height: 48,
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Prenom :",
                          ))),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      width: 278,
                      height: 48,
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Nom :",
                          ))),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      width: 278,
                      height: 48,
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Email or Phone number :",
                          ))),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      width: 278,
                      height: 48,
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Password :",
                          ))),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      width: 278,
                      height: 48,
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Confirm password :",
                          ))),
                  SizedBox(
                    height: 60,
                  ),
                  Row(children: [
                    Container(
                        width: 116,
                        height: 48,
                        child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              )),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            onPressed: () {},
                            child: Text("Annuler",
                                style: TextStyle(color: Colors.black)))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        width: 109,
                        height: 48,
                        child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              )),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFC853FF)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFC853FF)),
                            ),
                            onPressed: () {},
                            child: Text("OK",
                                style: TextStyle(color: Colors.white)))),
                  ])
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
