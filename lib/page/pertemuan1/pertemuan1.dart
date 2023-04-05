import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pertemuan1 extends StatefulWidget {
  const Pertemuan1({super.key, required this.title});
  final String title;

  @override
  State<Pertemuan1> createState() => _Pertemuan1State();
}

class _Pertemuan1State extends State<Pertemuan1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("../assets/kimjennie.jpg"),
            Icon(
              Icons.verified_outlined,
              color: Colors.blue,
              size: 50,
            ),
            const Text.rich(TextSpan(text: "Aplikasi", children: <TextSpan>[
              TextSpan(
                  text: " belajar",
                  style: TextStyle(fontStyle: FontStyle.italic)),
              TextSpan(
                  text: " berhitung",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ])),
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blueGrey,
                  letterSpacing: 2),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMMa24HceZMJzzewOzbxpqW_n9xnXuO5PI9g&usqp=CAU",width: 200,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
