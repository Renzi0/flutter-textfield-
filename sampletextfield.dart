import 'package:flutter/material.dart';
import 'newpage.dart';

class SampleTextField extends StatefulWidget {
  const SampleTextField({Key? key}) : super(key: key);

  @override
  State<SampleTextField> createState() => _SampleTextFieldState();
}

class _SampleTextFieldState extends State<SampleTextField> {
  final TextEditingController txtController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  @override
  void dispose() {
    txtController.dispose();
    pwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sample TextField')),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: txtController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Username',
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: pwdController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                final u = txtController.text;
                final p = pwdController.text;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPage(username: u, password: p),
                  ),
                );
              },
              child: const Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
