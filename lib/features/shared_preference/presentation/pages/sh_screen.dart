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
    textEditingController.text = StorageRepository.getString(keyOfValue: "value") ?? "";
    super.initState();
  }
  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("local database"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: key,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("phone"),
              TextFormField(
                keyboardType: TextInputType.phone,
                controller: textEditingController,
                validator: (text){
                  if(text == null){
                    return "Telefon raqami majburiy";
                  }
                  if(!text.contains("+")){
                    return "Telefon raqami '+' orqali yoziladi";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () async{
                    if(key.currentState!.validate()){
                      FocusScope.of(context).unfocus();
                      await StorageRepository.setString(key: "value", value: textEditingController.text);
                      log("saved");
                      log(StorageRepository.getString(keyOfValue: "value") ?? "");
                    }

                  }, child: Text("save")),
              ElevatedButton(
                  onPressed: () async{
                    log(StorageRepository.getString(keyOfValue: "value") ?? "");
                  }, child: Text("show saved")),
            ],
          ),
        ),
      ),
    );
  }
}
