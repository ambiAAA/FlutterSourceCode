// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: Text(
          'Ini Home Page',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.home,
              size: 40,
            )),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.brown, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 75, top: 25),
                child: ListTile(
                    leading: Icon(Icons.plus_one),
                    title: Text(
                      'Increment!',
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/increment');
                    }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 68, 0),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 75, top: 25),
                child: ListTile(
                  leading: Icon(Icons.calculate),
                  title: Text(
                    'calculator!',
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/calculator');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
