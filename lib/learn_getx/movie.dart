
//make class observable by making individual
import 'package:get/get.dart';

// class Movie{
//   var name = "Wanted".obs;
//   var ticket = 200.obs
//   ;
// }


// want to make entire class as observable
class Movie{
  String? name;
  String? ticket;
  Movie({required this.name,
  required this.ticket});
}