import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'next_screen.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Un-named routing"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Get.toNamed("/third");
            }, child: Text("navigate to third screen")),
            ElevatedButton(onPressed: (){
              Get.back();
            }, child: Text("back")),
            Text(Get.parameters["a"]??"")
            // InkWell(
            //   onTap: () async{
            //    var a =  await Get.to(()=>NextScreen(),);
            //    print(a);
            //
            //     // Get.to(() => NextScreen(),
            //     //     transition: Transition.zoom,
            //     //     duration: Duration(seconds: 3),
            //     //     curve: Curves.bounceInOut);
            //   },
            //   child: Container(
            //     width: 100,
            //     height: 100,
            //     color: Colors.red,
            //   ),
            // ),
            // Text("Navigate to next page")
          ],
        ),
      ),
    );
  }
}
