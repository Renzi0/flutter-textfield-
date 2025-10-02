import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String username;
  final String password;

  const NewPage({super.key, required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Username: $username",
                style: const TextStyle(fontSize: 20)),
            Text("Password: $password",
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // go back to SampleTextField
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
