import 'package:flutter/material.dart';
import 'register.page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _formKey = GlobalKey<FormState>;
  var _email = "";
  var _password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECD2F8),
      body: Container(
          margin: const EdgeInsets.all(20),
          child: Form(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('assets/images/logo.png'),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  width: 295,
                  height: 63,
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      key: ValueKey("email"),
                      onSaved: (value) {
                        _email = value!;
                      },
                      // validator: (value){
                      //   if(value.isEmpty || !value.contains("@"))
                      // },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Email",
                        suffixIcon: Icon(Icons.email, color: Colors.black),
                      ))),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                  width: 295,
                  height: 63,
                  child: TextFormField(
                    obscureText: true,
                    key: ValueKey("password"),
                    onSaved: (value) {
                        _email = value!;
                      },
                      decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 130, 48, 48)),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "password",
                    suffixIcon: Icon(Icons.lock, color: Colors.black),
                  ))),
              SizedBox(
                height: 40,
              ),
              Container(
                  width: 212,
                  height: 48,
                  child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFC853FF)),
                      ),
                      onPressed: (

                      ) {},
                      child: Text("SignIn"))),
              SizedBox(
                height: 15,
              ),
              Text("or"),
              SizedBox(
                height: 15,
              ),
              Container(
                  width: 212,
                  height: 48,
                  child: TextButton(
                      onPressed: (
                        
                      ) {
                        Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterPage()));
                      },
                      child: Text("Register"),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFC853FF)),
                      ))),
              SizedBox(
                height: 35,
              ),

              Container(
                child: Row(
                  children: [
                    Text(
                      "sign up with ",
                      selectionColor: Color(0xFF525151),
                    ),
                    Text("Google Account",
                    selectionColor: Color.fromARGB(255, 2, 42, 75),)
                  ],
                ),
              )
            ]),
          )),
    );
  }
}
