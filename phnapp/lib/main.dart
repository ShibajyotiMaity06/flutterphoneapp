import 'package:flutter/material.dart';

void main() {
  runApp(NumberEntryApp());
}

class NumberEntryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NumberEntryScreen(),
    );
  }
}

class NumberEntryScreen extends StatefulWidget {
  @override
  _NumberEntryScreenState createState() => _NumberEntryScreenState();
}

class _NumberEntryScreenState extends State<NumberEntryScreen> {
  TextEditingController _numberController = TextEditingController();
  String _enteredNumber = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter a Number:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              child: TextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _enteredNumber = _numberController.text;
                });
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text(
              'Entered Number: $_enteredNumber',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }
}