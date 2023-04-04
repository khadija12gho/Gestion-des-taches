import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stage/login.page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _nomController = TextEditingController();
  final _prenomController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  // ignore: non_constant_identifier_names
  final _ConfirmPWController = TextEditingController();

  // ignore: non_constant_identifier_names
  Future Register() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    }

    // ignore: use_build_context_synchronously
    Navigator.of(context).pushNamed('Auth');
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() == _ConfirmPWController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _nomController.dispose();
    _prenomController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _ConfirmPWController.dispose();
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
            padding: const EdgeInsets.only(left: 20,right: 20,top: 60),
            margin: const EdgeInsets.all(50),
            child: Form(
              child: Column(
                children: [
                  SizedBox(
                      width: 278,
                      height: 48,
                      child: TextFormField(
                          controller: _prenomController,
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
                          controller: _nomController,
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
                          controller: _emailController,
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
                      width: 290,
                      height: 48,
                      child: TextFormField(
                          obscureText: true,
                          controller: _passwordController,
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
                          obscureText: true,
                          controller: _ConfirmPWController,
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
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    SizedBox(
                        width: 100,
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ),
                              );
                            },
                            child: const Text("Annuler",
                                style: TextStyle(color: Colors.black)))),
                    const SizedBox(
                      width: 60,
                    ),
                    SizedBox(
                        width: 84,
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
                            onPressed: () {
                              Register();
                            },
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
