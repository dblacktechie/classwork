// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Center(child: Text("Cancel")),
            title: Text("Edit Profile"),
            centerTitle: true,
            actions: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Save"),
              ))
            ],
          ),
          body: Center(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey,
                        ),
                        Positioned(
                          bottom: -20,
                          left: 20,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    Image.asset('assets/images/jess.png').image,
                              ),
                              Column(
                                children: [
                                  Text('Jessica Udeh'),
                                  Text('Mobile Developer'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Your Email",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Your Password",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Your Phone",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Your City",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Create Account'),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
