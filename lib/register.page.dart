import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>;
  final _email = "";
  final _password = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          Container(
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}












































  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       backgroundColor: Color(0xFFECD2F8),
  //       body: Container(
  //         width: 500.0,
  //         height: 700.0,
  //         color: Color(0xFFE3B2FB),
  //         padding: EdgeInsets.all(50),
  //         margin: EdgeInsets.all(50),
  //         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
  //           TextFormField(
  //               decoration: InputDecoration(
  //             fillColor: Colors.white,
  //             filled: true,
  //             border: OutlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.white),
  //                 borderRadius: BorderRadius.circular(20)),
  //             hintText: "Prenom :",
  //           )),
  //           SizedBox(
  //             height: 30,
  //           ),
  //           TextFormField(
  //               decoration: InputDecoration(
  //             fillColor: Colors.white,
  //             filled: true,
  //             border: OutlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.white),
  //                 borderRadius: BorderRadius.circular(20)),
  //             hintText: "nom :",
  //           )),
  //           SizedBox(
  //             height: 30,
  //           ),
  //           TextFormField(
  //               decoration: InputDecoration(
  //             fillColor: Colors.white,
  //             filled: true,
  //             border: OutlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.white),
  //                 borderRadius: BorderRadius.circular(20)),
  //             hintText: "Email or number Phone :",
              
  //           )),
  //           SizedBox(
  //             height: 30,
  //           ),
  //           TextFormField(
  //               decoration: InputDecoration(
  //             fillColor: Colors.white,
  //             filled: true,
  //             border: OutlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.white),
  //                 borderRadius: BorderRadius.circular(20)),
  //             hintText: "password :",
  //           )),
  //           SizedBox(
  //             height: 30,
  //           ),
  //           TextFormField(
  //               decoration: InputDecoration(
  //             fillColor: Colors.white,
  //             filled: true,
  //             border: OutlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.white),
  //                 borderRadius: BorderRadius.circular(20)),
  //             hintText: "Confirm password :",
  //           )
  //           ),
            // RaisedButton(  
            //             child: new Text('Javatpoint'),  
            //             color: Colors.lightGreen,  
            //               onPressed: () {/** */},  
            //           ),  
  //         ]),
  //       ));
  // }
// }