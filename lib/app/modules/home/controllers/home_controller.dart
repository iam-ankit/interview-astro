import 'package:astro/app/data/pandit_model.dart';
import 'package:astro/constants/specialisation.dart';
import 'package:astro/utils/pandit_maker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<List<PanditModel>> {
  List<PanditModel> pandits = [];
  List<PanditModel> filterList = [];
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Rx<Specialisation> selectedSpecialisation =
      Rx<Specialisation>(Specialisation.all);

  @override
  void onReady() {
    super.onReady();

    Future.delayed(const Duration(seconds: 2), () {
      filterList = pandits = panditMaker();
      change(filterList, status: RxStatus.success());
    });
  }

  void applyFilter() {
    filterList = pandits
        .where((element) =>
            element.specialisation.contains(selectedSpecialisation.value))
        .toList();
    change(filterList, status: RxStatus.success());
  }

  void removeFilter() {
    filterList = pandits;
    change(filterList, status: RxStatus.success());
  }
}
