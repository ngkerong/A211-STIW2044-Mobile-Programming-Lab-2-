import 'package:flutter/material.dart';
import 'registerpage.dart';
import 'loginpage.dart';

class TabPage3 extends StatefulWidget {

  const TabPage3({Key? key}) : super(key: key);

  @override
  State<TabPage3> createState() => _TabPage3State();
}

class _TabPage3State extends State<TabPage3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Flexible(
            flex: 4,
            child: Card( 
            elevation: 10,
            child: Row(
              children: const [

              ],
              )
          )),
          Flexible(
            flex: 6,
            child: Column(
              children: [
                  Container(
                        color: Colors.lightBlue,
                        child: const Center(
                          child: Text("PROFILE SETTINGS",
                          style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                        ),
                  ),
                  Expanded(
                      child: ListView(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          shrinkWrap: true,
                          children: [
                        const MaterialButton(
                          onPressed: null,
                          child: Text("UPDATE NAME"),
                        ),
                        const Divider(
                          height: 2,
                        ),
                        const MaterialButton(
                          onPressed: null,
                          child: Text("UPDATE PASSWORD"),
                        ),
                        const Divider(
                          height: 2,
                        ),
                        MaterialButton(
                          onPressed: _registerAccountDialog,
                          child: const Text("NEW REGISTRATION"),
                        ),
                        const Divider(
                          height: 2,
                        ),
                         MaterialButton(
                          onPressed: _loginAccountDialog,
                          child: const Text("LOGOUT"),
                        ),
                        const Divider(
                          height: 2,
                        ),
                      ])),
                ],
          )),
        ]
    ));
  }

void _registerAccountDialog(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:  const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: const Text(
            "Register new Account",
            style: TextStyle(),
          ),
          content: const Text(
            "Are you sure?",
            style: TextStyle(),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                "Yes",
                style: TextStyle(
                  color: Colors.blueAccent,
                  ),
                ),
  
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                             const RegisterPage()));
              },
            ),
            TextButton(
              child: const Text(
                "No",
                style: TextStyle(
                  color: Colors.blueAccent,
                  ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  void _loginAccountDialog(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:  const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: const Text(
            "Logout",
            style: TextStyle(),
          ),
          content: const Text(
            "Are you sure?",
            style: TextStyle(),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                "Yes",
                style: TextStyle(
                  color: Colors.blueAccent,
                  ),
                ),
  
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                             const LoginPage()));
              },
            ),
            TextButton(
              child: const Text(
                "No",
                style: TextStyle(
                  color: Colors.blueAccent,
                  ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}