import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'movie.dart';

class ObxExample extends StatelessWidget {
   ObxExample({super.key});
  // var count = 0.obs;
var movie = Movie(name: "wanted",ticket: "100").obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(()=>  Text("${movie.value.name}"),),

            ElevatedButton(onPressed: (){
            // movie.name.value = "Vivek";
              movie.value.name = "vivek";
              movie.refresh();
              print(movie.value.name);
            }, child: Text("Change"))
          ],
        ),
      ),
    );
  }
}
