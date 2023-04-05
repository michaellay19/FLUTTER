import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Pertemuan3 extends StatelessWidget {
  const Pertemuan3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Icon(
                        Icons.book,
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Kegiatan",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Judul Kegiatan",
                        contentPadding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black))),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Row(
                children: [
                  Icon(Icons.timelapse),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Keterangan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Judul Kegiatan",
                  contentPadding: EdgeInsets.fromLTRB(20, 50, 0, 50),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black))),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Icon(Icons.date_range_outlined),
                          Text(
                            "Tanggal Mulai",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, letterSpacing: 1),
                          )
                        ],
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Icon(Icons.date_range),
                          Text(
                            "Tanggal Selesai",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, letterSpacing: 1),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    flex: 4,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "20-03-2022",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          enabledBorder: UnderlineInputBorder()),
                    )),
                Expanded(flex: 1, child: Container()),
                Expanded(
                    flex: 4,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "20-03-2022",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          enabledBorder: UnderlineInputBorder()),
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        "Batal",
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ),
                ),
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 4,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.purple),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        "Simpan",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
