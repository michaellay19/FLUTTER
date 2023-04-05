import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tugaskelompok/page/pertemuan4/pertemuan41_loginscreen.dart';

class Pertemuan40 extends StatelessWidget {
  const Pertemuan40({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pertemuan 4"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 4,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Study Case I"))),
                Expanded(flex: 1, child: Container()),
                Expanded(
                    flex: 4,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Study Case II")))
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                  }, child: Text("Latihan"))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Back"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
