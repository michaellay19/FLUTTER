import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tugaskelompok/page/pertemuan4/pertemuan41_keranjangscreen.dart';
import 'package:tugaskelompok/page/pertemuan4/pertemuan41_produkwidget.dart';

class ProdukScreen extends StatefulWidget {
  final String username;
  const ProdukScreen({Key? key, required this.username}) : super(key: key);

  @override
  State<ProdukScreen> createState() => _ProdukScreenState();
}

class _ProdukScreenState extends State<ProdukScreen> {
  double defaultPadding = 20;
  String tittleScreen = "List Product";

  TextEditingController sepatuCtrl = TextEditingController();
  TextEditingController tasCtrl = TextEditingController();
  TextEditingController celanaCtrl = TextEditingController();
  TextEditingController bajuCtrl = TextEditingController();

  List<Map<String, String>> Keranjang = [];

  bool? isSepatuAdd;
  bool? isTasAdd;
  bool? isCelanaAdd;
  bool? isBajuAdd;

  @override
  void initState() {
    sepatuCtrl.text = 0.toString();
    tasCtrl.text = 0.toString();
    celanaCtrl.text = 0.toString();
    bajuCtrl.text = 0.toString();

    isSepatuAdd = false;
    isTasAdd = false;
    isCelanaAdd = false;
    isBajuAdd = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tittleScreen),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          KeranjangScreen(Keranjang: Keranjang)));
                },
              ),
              Positioned(
                  child: Text(
                Keranjang.length.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
            ],
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Text(widget.username.substring(0, 1)),
                    ),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selamat Datang",
                          style: TextStyle(fontSize: 11, color: Colors.black45),
                        ),
                        Text(
                          widget.username,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ],
                    )
                  ],
                ),
                const Divider(),
                Column(
                  children: [
                    ProdukWidget(
                        namaProduk: "Sepatu",
                        ctrl: sepatuCtrl,
                        status: isSepatuAdd,
                        press: () {
                          print("sepatu");
                          setState(() {
                            isSepatuAdd = true;
                            Keranjang.add(
                                {"title": "Sepatu", "total": sepatuCtrl.text});
                          });
                        }),
                    ProdukWidget(
                        namaProduk: "Celana",
                        ctrl: celanaCtrl,
                        status: isCelanaAdd,
                        press: () {
                          print("celana");
                          setState(() {
                            isCelanaAdd = true;
                            Keranjang.add(
                                {"title": "Celana", "total": celanaCtrl.text});
                          });
                        }),
                    ProdukWidget(
                        namaProduk: "Tas",
                        ctrl: tasCtrl,
                        status: isTasAdd,
                        press: () {
                          print("tas");
                          setState(() {
                            isTasAdd = true;
                            Keranjang.add(
                                {"title": "Tas", "total": tasCtrl.text});
                          });
                        }),
                    ProdukWidget(
                        namaProduk: "Baju",
                        ctrl: bajuCtrl,
                        status: isBajuAdd,
                        press: () {
                          print("baju");
                          setState(() {
                            isBajuAdd = true;
                            Keranjang.add(
                                {"title": "Baju", "total": bajuCtrl.text});
                          });
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
