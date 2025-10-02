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
    // Colors and sizes to match the screenshot
    const buttonColor = Color(0xFFD32F2F); // red
    const fieldBorderRadius = 4.0;
    const horizontalMargin = 20.0;

    return Scaffold(
      // keep AppBar if you want; screenshot shows no visible bar — keep minimal
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(''), // empty so top is clean like the screenshot
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            // ensures on small screens the content scrolls (no overflow)
            padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Username field (uppercase label)
                TextField(
                  controller: txtController,
                  decoration: InputDecoration(
                    labelText: 'USERNAME',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      letterSpacing: 1.0,
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(fieldBorderRadius),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(fieldBorderRadius),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(fieldBorderRadius),
                      borderSide: BorderSide(color: Colors.grey.shade500),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),

                const SizedBox(height: 12),

                // Password field (uppercase label)
                TextField(
                  controller: pwdController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      letterSpacing: 1.0,
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(fieldBorderRadius),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(fieldBorderRadius),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(fieldBorderRadius),
                      borderSide: BorderSide(color: Colors.grey.shade500),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),

                const SizedBox(height: 16),

                // Full-width LOGIN button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      elevation: 0,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
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
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
