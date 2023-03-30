import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: const Text('FireBase Test Labs: Integration Testing'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: controller,
            ),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: () {}, child: const Text('Submit'))
          ],
        ),
      ));
}
