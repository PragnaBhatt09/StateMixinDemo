import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class StateMixinDemoController extends GetxController
    with StateMixin<List<dynamic>> {
  //TODO: Implement StateMixinDemoController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getDataFromAPi();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  getDataFromAPi() async {
    http.Response response = await http.get(Uri.parse(
        "https://raw.githubusercontent.com/PragnaBhatt09/sampleAPI/main/sampleAPI.json"));
    //  print("response ${response.body.toString()}");

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var post = List<dynamic>.from(data.map((da) => da));
      print(post.length);
      change(post, status: RxStatus.success());

      if (post.isEmpty) change(null, status: RxStatus.empty());
    } else {
      change(null,
          status: RxStatus.error("${response.statusCode} and ${response}"));
    }
  }
}
