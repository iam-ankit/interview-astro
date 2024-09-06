import 'package:astro/app/modules/home/views/widgets/drawer.dart';
import 'package:astro/app/modules/home/views/widgets/pandit_list_item.dart';
import 'package:astro/app/modules/home/views/widgets/specialization_chip.dart';
import 'package:astro/constants/specialisation.dart';
import 'package:astro/constants/text_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            controller.scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
        title: const Text("Astro"),
        bottom: PreferredSize(
          preferredSize: Size(Get.width, kToolbarHeight),
          child: SizedBox.fromSize(
            size: Size(Get.width, kToolbarHeight),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: Specialisation.values.length,
              itemBuilder: (context, index) => SpecialityChip(index: index),
            ),
          ),
        ),
      ),
      drawer: const AppDrawer(),
      body: controller.obx(
        (state) => MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: controller.filterList.length,
            itemBuilder: (context, index) => PanditListWidget(
              pandit: state![index],
            ),
          ),
        ),
      ),
    );
  }
}
