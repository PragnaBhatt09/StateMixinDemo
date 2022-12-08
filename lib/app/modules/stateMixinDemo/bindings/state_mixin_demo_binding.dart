import 'package:get/get.dart';

import '../controllers/state_mixin_demo_controller.dart';

class StateMixinDemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StateMixinDemoController>(
      () => StateMixinDemoController(),
    );
  }
}
