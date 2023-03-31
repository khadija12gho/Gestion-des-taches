import 'package:flutter/material.dart';

class ArchivePage extends StatelessWidget {
  const ArchivePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(86.0),
          child: AppBar(
              backgroundColor: const Color(0xFFC853FF),
              actions: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.search,
                        size: 26.0,
                        color: Colors.white,
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.more_vert,color: Colors.white,),
                    )),
              ],
              title: const Text(
                "Archive",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
        ),
        body: ListTile(
          title: const Text('Tiltle',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          onTap: () {
            
            Navigator.pop(context);
          },
        )

        //  Text(
        //   "Archive",
        //   style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       color: Colors.white,
        //       fontFamily: "Inter"),
        // ),
        );
  }
}
