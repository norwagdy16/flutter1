import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom_pages/main_screen.dart';
import 'package:flutter_application_2/bottom_pages/second_screen.dart';
import 'package:flutter_application_2/bottom_pages/third_screen.dart';

class secondpage extends StatefulWidget {
  final String email;
  const secondpage({super.key, required this.email});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  int selecteIndex = 0;
  List<Widget> page = [
    mainscreen(),
    secondscreen(),
    thirdscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 219, 166, 184),
        title: Text("second screen"),
      ),
      body: page[selecteIndex],
      // Column(

      //   children: [
      //   Text(widget.email),

      // ]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken), label: "second"),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "third"),
        ],
        onTap: (pageIndex) {
          selecteIndex = pageIndex;
          setState(() {
            
          });
        },
      ),
    );
  }
}
