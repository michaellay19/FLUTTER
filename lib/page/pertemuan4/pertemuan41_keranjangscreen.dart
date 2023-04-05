import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class KeranjangScreen extends StatefulWidget {
  final List<Map<String, String>> Keranjang;
  KeranjangScreen({Key? key, required this.Keranjang}) : super(key: key);

  @override
  State<KeranjangScreen> createState() => _KeranjangScreenState();
}

class _KeranjangScreenState extends State<KeranjangScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Keranjang"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "List Belanja",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const Divider(),
            Column(
              children: widget.Keranjang.map((val) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${val["title"]}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("${val["total"]} item")
                  ],
                );
              }).toList(),
            ),
            const SizedBox(height: 20,),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
                child: Text("Check Out"),
              ),
            )
          ],
        ),
      ),
    );
  }
}