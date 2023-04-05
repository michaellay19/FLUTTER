import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:tugaskelompok/page/pertemuan4/pertemuan41_produkscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String loginText = "Login";
  double defaultPadding = 20;

  bool? isUsernameEmpty;
  bool? isPasswordEmpty;

  @override //cara membuat nilai default pada saat pertama x menjalankan applikasi
  void initState() {
    usernameController.text = "Mikroskil";
    isUsernameEmpty = false;
    isPasswordEmpty = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loginText),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(defaultPadding),
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  SizedBox(
                    child: Column(
                      children: [
                        TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                              label: const Text("username"),
                              errorText: isUsernameEmpty == true
                                  ? "username harus diisi"
                                  : null),
                        ),
                        TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              label: const Text("password"),
                              errorText: isPasswordEmpty == true
                                  ? "password harus diisi"
                                  : null),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (usernameController.text.isEmpty) {
                        setState(() {
                          isUsernameEmpty = true;
                        });
                      }
                      if (passwordController.text.isEmpty) {
                        setState(() {
                          isPasswordEmpty = true;
                        });
                      } else {
                        setState(() {
                          isUsernameEmpty = false;
                          isPasswordEmpty = false;
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ProdukScreen(
                              username: usernameController.text);
                        }));
                      }
                    },
                    child: Text(loginText),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                            MediaQuery.of(context).size.width / 2 + 100, 50)),
                  ),
                  const Divider(),
                  const Text(
                    "Klik tomboh di bawah untuk contoh menggunakan Provider",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.black45),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ProdukScreen2()));
                    },
                    child: Text("Provider"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 2 + 100, 50),
                    ),
                  ),
                  const Spacer()
                ],
              ),
            )),
      ),
    );
  }
}
