import 'dart:developer';

import 'package:example/core/services/local_database/local_database.dart';
import 'package:flutter/material.dart';

class ShScreen extends StatefulWidget {
  const ShScreen({super.key});

  @override
  State<ShScreen> createState() => _ShScreenState();
}

class _ShScreenState extends State<ShScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    textEditingController.text =
        StorageRepository.getString(keyOfValue: "value") ?? "";
    super.initState();
  }

  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/logo-no-background.png",
                fit: BoxFit.contain,
                width: 130,
                height: 130,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign in",
                    style: TextStyle(
                      color: Color.fromRGBO(71, 26, 160, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Form(
                key: key,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.perm_identity),
                          hintText: "Email or User Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: const BorderSide(color: Colors.purple),
                          )),
                      controller: textEditingController,
                      validator: (text) {
                        if (text == null) {
                          return "Telefon raqami majburiy";
                        }
                        if (!text.contains("+")) {
                          return "Telefon raqami '+' orqali yoziladi";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.perm_identity),
                          hintText: "Email or User Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: const BorderSide(color: Colors.purple),
                          )),
                      controller: textEditingController,
                      validator: (text) {
                        if (text == null) {
                          return "Telefon raqami majburiy";
                        }
                        if (!text.contains("+")) {
                          return "Telefon raqami '+' orqali yoziladi";
                        }
                        return null;
                      },
                    ),
                    // ElevatedButton(
                    //     onPressed: () async {
                    //       log(StorageRepository.getString(keyOfValue: "value") ??
                    //           "");
                    //     },
                    //     child: Text("show saved")),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password ? ",
                    style: TextStyle(
                      color: Color.fromRGBO(71, 26, 160, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: const BorderSide(color: Colors.purple), // Bu joyda tugma ramkasini o'rnatish uchun ishlatiladi
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors
                        .purple), // MaterialStateProperty.all qo'llaniladi
                  ),
                  onPressed: () async {
                    if (key.currentState!.validate()) {
                      FocusScope.of(context).unfocus();
                      await StorageRepository.setString(
                          key: "value", value: textEditingController.text);
                      log("saved");
                      log(StorageRepository.getString(keyOfValue: "value") ??
                          "");
                    }
                  },
                  child: const Text("Save"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
