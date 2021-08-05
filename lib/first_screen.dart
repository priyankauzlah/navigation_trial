import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/toSecond');
                },
                child: Text('Second Screen')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/toThird',
                      arguments: "Halo selamat belajar flutter!");
                },
                child: Text('Third Screen')),
            ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.pushNamed(context, '/toFourth');
                  SnackBar snackBar = SnackBar(content: Text('$result'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text('Return data from another screen')),
            ElevatedButton(onPressed: () {}, child: Text('Replace Screen')),
          ],
        ),
      ),
    );
  }
}
