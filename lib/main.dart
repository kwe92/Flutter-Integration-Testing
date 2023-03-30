// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: const FittedBox(
              child: Text('FireBase Test Labs: Integration Testing')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: _controller,
                  validator: (value) =>
                      value!.isEmpty ? 'Text can not be empty.' : null,
                ),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final text = _controller.text;
                    _controller.clear();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return DisplayPage(text: text);
                    }));
                  }
                },
                child: const Text('Submit'))
          ],
        ),
      ));
}

class DisplayPage extends StatelessWidget {
  final String text;
  const DisplayPage({required this.text, super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: const FittedBox(
              child: Text('FireBase Test Labs: Integration Testing')),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 26),
            ),
          ),
        ),
      ));
}
