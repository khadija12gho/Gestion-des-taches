import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _nom = TextEditingController();
  final _prenom = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _ConfirmPW = TextEditingController();

  Future Register() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _email.text.trim(), password: _password.text.trim());
      Navigator.of(context).pushNamed("Auth");
    }
  }

  bool passwordConfirmed() {
    if (_password.text.trim() == _ConfirmPW.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _nom.dispose();
    _prenom.dispose();
    _email.dispose();
    _password.dispose();
    _ConfirmPW.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECD2F8),
      body: ListView(
        children: [
          Container(
            width: 329.0,
            height: 648.0,
            color: const Color(0xFFE3B2FB),
            padding: const EdgeInsets.all(50),
            margin: const EdgeInsets.all(50),
            child: Form(
              child: Column(
                children: [
                  SizedBox(
                      width: 278,
                      height: 48,
                      child: TextFormField(
                          controller: _prenom,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Prenom :",
                          ))),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                      width: 278,
                      height: 48,
                      child: TextFormField(
                          controller: _nom,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Nom :",
                          ))),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                      width: 278,
                      height: 48,
                      child: TextFormField(
                          controller: _email,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Email or Phone number :",
                          ))),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                      width: 278,
                      height: 48,
                      child: TextFormField(
                          controller: _password,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Password :",
                          ))),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                      width: 278,
                      height: 48,
                      child: TextFormField(
                          controller: _ConfirmPW,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Confirm password :",
                          ))),
                  const SizedBox(
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
                            child: const Text("Annuler",
                                style: TextStyle(color: Colors.black)))),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
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
                                  const Color(0xFFC853FF)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xFFC853FF)),
                            ),
                            onPressed: () {},
                            child: const Text("OK",
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
