import 'package:flutter/material.dart';

import 'package:login_page/home_pages/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String login = "";
  String parol = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.login, size: 30), SizedBox(width: 50)],
        title: const Text("Login Page"),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 100, width: 50),
          const FlutterLogo(size: 150, style: FlutterLogoStyle.horizontal),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (log) {
                login = log;
                print(login);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Login",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (pas) {
                parol = pas;
                print(parol);
              },
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Pasvord",
                labelText: 'Pasvord',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (login == 'bektur' && parol == "2002") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Formany tolturunuz"),
                  ));
                }
              },
              child: const Text("ENTER"))
        ],
      ),
    );
  }
}
