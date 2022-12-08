import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/state_mixin_demo_controller.dart';

class StateMixinDemoView extends GetView<StateMixinDemoController> {
  const StateMixinDemoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('StateMixin Demo'),
          centerTitle: true,
        ),
        body: controller.obx((data) {
          return Center(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: data?.length,
                      itemBuilder: (context, pos) {
                        return Card(
                          elevation: 2,
                          child: ListTile(
                            title: Text(
                              data?[pos]["title"],
                              style: const TextStyle(fontSize: 15),
                            ),
                            subtitle: Text(
                              data?[pos]["body"],
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        },
            onEmpty: const Center(child: Text("No data found !")),
            onError: (error) => Text("something went wrong! ${error} "),
            // onError: Text("on error"),
            onLoading: const Center(child: CircularProgressIndicator())));
  }
}
