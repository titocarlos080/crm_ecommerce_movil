import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 91, 222, 213),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(" SESION"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10),
            child: const SizedBox(
                child: Icon(
              Icons.account_circle_rounded,
              size: 100,
            )),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: TextFormField(
              autofocus: true,
              decoration: const InputDecoration(
                  hintText: "email ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: TextFormField(
              autofocus: true,
              decoration: const InputDecoration(
                  hintText: "Password ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )),
            ),
          ),
          Container(
              margin: const EdgeInsets.all(5),
              child: SizedBox(
                height: 50,
                width: 400,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text('enviar')
                    
                    ),
                    
              ))
        ],
      ),
    );
  }
}
