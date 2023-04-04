import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'register.page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECD2F8),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  width: 295,
                  height: 63,
                  child: TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      key: const ValueKey("email"),

                      // validator: (value){
                      //   if(value.isEmpty || !value.contains("@"))
                      // },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Email",
                        suffixIcon:
                            const Icon(Icons.email, color: Colors.black),
                      ))),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: 295,
                height: 63,
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  key: const ValueKey("password"),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 130, 48, 48)),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "password",
                    suffixIcon: const Icon(Icons.lock, color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                  width: 212,
                  height: 48,
                  child: GestureDetector(
                    child: TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          )),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFC853FF)),
                        ),
                        onPressed: () {
                          signIn();
                        },
                        child: const Text("SignIn")),
                  )),
              const SizedBox(
                height: 15,
              ),
              const Text("or"),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 212,
                height: 48,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  // ignore: sort_child_properties_last
                  child: const Text("Register"),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFC853FF)),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "sign up with ",
                    selectionColor: Color(0xFF525151),
                  ),
                  const Text(
                    "Google Account",
                    selectionColor: Color.fromARGB(255, 2, 42, 75),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
