import 'package:crm_ecommerce/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScrem extends StatefulWidget {
  const HomeScrem({super.key});

  @override
  State<HomeScrem> createState() => _HomeScremState();
}

class _HomeScremState extends State<HomeScrem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dasboard"),
        ),
        drawer: const Sidebar(),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.all(5),
                child: const Row(  
                  children: [
                     Column(children: <Widget>[
                      Card(
                          elevation: 2,
                          child: Column(
                            children: [
                              Icon(Icons.shop),
                            ],
                          ))
                    ]),
                  ],
                ));
          },
        ));
  }
}
