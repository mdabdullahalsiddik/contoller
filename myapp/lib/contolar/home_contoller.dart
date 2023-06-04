import 'package:get/get.dart';
import 'package:myapp/static/all_text.dart';

class HomeController extends GetxController {
  RxString city = AllText.hint_text.obs;
  void cityName(name) {
    city.value = name;
  }
}
