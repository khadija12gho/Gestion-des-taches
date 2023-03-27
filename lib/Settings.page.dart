import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _selectedLanguage = 'English';

  void _showFeedbackDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Feedback'),
          content: TextField(
            decoration: InputDecoration(hintText: 'Enter your feedback here'),
            maxLines: 5,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('CANCEL'),
            ),
            TextButton(
              onPressed: () {
                // TODO: send feedback to backend or do something with it
                Navigator.pop(context);
              },
              child: Text('SEND'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(86.0),
          child: AppBar(
              backgroundColor: const Color(0xFFC853FF),
              title: const Text(
                "Settings",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
        ),
        body: Column(
        children: [
          ListTile(
            title: Text('Language'),
            trailing: DropdownButton<String>(
              value: _selectedLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLanguage = newValue!;
                });
              },
              items: <String>[
                'English',
                'French'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Help and Feedback'),
            onTap: _showFeedbackDialog,
          ),
          Divider(),
          ListTile(
            title: Text('About Us'),
            subtitle: Text('Version 1.0.0'),
          ),
        ],
      ),
    );
  }
}


        //  Text(
        //   "Archive",
        //   style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       color: Colors.white,
        //       fontFamily: "Inter"),
        // ),
        
