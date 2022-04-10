// ignore_for_file: non_constant_identifier_names, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:saccoke/Members.Dart.dart';
import 'package:saccoke/Loans.Dart.dart';
import 'package:saccoke/Payments.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _CurrentPage =0;
  var _Pages =[
    const Text("Page 1 - Members list"),
    const Text("Page 2 - Loans List"),
    const Text("Page 2 - Payments List"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sacco Name '),
        ),
        drawer: Drawer(
          backgroundColor: Colors.blueAccent,//Add the saccos color
          child: Column(
            children: const [
             // Icons.people,
              Text("Members"),
              Members(),
              Text("Loans"),
              Loans(),
              Text("Payments"),
              Payments()

            ],
          ),
        ),

        body: Center(
          child: _Pages.elementAt(_CurrentPage),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.people),
                   label: "Members List"

            ),
            BottomNavigationBarItem(
                icon : Icon(Icons.credit_card),
                    label: "Loans List",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.payments_outlined),
                    label: "Payment Processes",
            ),
          ],
          currentIndex: _CurrentPage,
          fixedColor: Colors.blueAccent,
          onTap: (int inIndex) {
            setState(() {
              _CurrentPage = inIndex;
            });
          }

        ),

      ),


    );
  }
}
