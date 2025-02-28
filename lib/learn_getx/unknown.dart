import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UnKnownPage extends StatelessWidget {
  const UnKnownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Getx Un-named routing"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
               Get.back(result: "this is from next screen");
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                // child: Text(Get.arguments),
              ),
            ),
            Text("Navigate to previous page")
          ],
        ),
      ),
    );
  }
}
