import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dashboard'.toUpperCase()),
        backgroundColor: Colors.cyan,
      ),
      body: const Center(
        child: Text.rich(
          TextSpan(
            text: "welcome to",
            children: [
              // TextSpan(text: '--'),
              TextSpan(
                text: 'CHACE',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'App',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30.0,
                    backgroundColor: Colors.amber),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("NEW"),
      ),
      // const Text("+"),
    );
  }
}
