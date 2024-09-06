import 'package:astro/app/modules/home/controllers/home_controller.dart';
import 'package:astro/constants/specialisation.dart';
import 'package:astro/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpecialityChip extends GetView<HomeController> {
  const SpecialityChip({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Obx(
        () {
          print(controller.selectedSpecialisation.value);
          return ChoiceChip(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
            selected: controller.selectedSpecialisation.value ==
                Specialisation.values[index],
            onSelected: (value) {
              controller.selectedSpecialisation.value =
                  Specialisation.values[index];
              controller.applyFilter();
            },
            label: Text(
              Specialisation.values[index].name.capitalize ??
                  Specialisation.values[index].name,
              style: AppTextStyle.h5.copyWith(
                color: Get.theme.colorScheme.onSurfaceVariant,
              ),
            ),
          );
        },
      ),
    );
  }
}
