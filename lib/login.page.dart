import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>;
  var _email = "";
  var _password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECD2F8),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/images/logo.png'),
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              key: ValueKey("email"),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                hintText: "Email",
                suffixIcon: Icon(Icons.email,color: Colors.black),
              )),
          SizedBox(
            height: 20,
          ),
          TextFormField(
              decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 130, 48, 48)),
                borderRadius: BorderRadius.circular(20)),
            hintText: "password",
            suffixIcon: Icon(Icons.lock, color: Colors.black),
          )),
          SizedBox(
            height: 20,
          ),
          TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFC853FF)),
              ),
              onPressed: () {},
              child: Text("SignIn")),
          SizedBox(
            height: 20,
          ),
          TextButton(
            
            onPressed: () {},
            
            child: Text("Register"),
            style: ButtonStyle(
               
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFFC853FF)),
            ),
          ),
          Text("sign up with Google Account", selectionColor: Color(0xFF525151),)
        ]),
      ),
    );
  }
}
