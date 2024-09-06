import 'dart:math';

import 'package:astro/app/data/pandit_model.dart';
import 'package:astro/constants/image_list.dart';
import 'package:astro/constants/names.dart';
import 'package:astro/constants/specialisation.dart';
import 'package:astro/constants/vidya.dart';

List<PanditModel> panditMaker() {
  var rng = Random();
  return List.generate(
      50,
      (_) => PanditModel(
            name: names[rng.nextInt(names.length)],
            image: iamges[rng.nextInt(4)],
            vidyas: List.generate(
              rng.nextInt(3) + 1,
              (index) => Vidya.values[rng.nextInt(Vidya.values.length)],
            ).toSet().toList(),
            specialisation: List.generate(
              rng.nextInt(9) + 1,
              (index) => Specialisation
                  .values[rng.nextInt(Specialisation.values.length)],
            ).toSet().toList(),
            price: rng.nextInt(21),
            rating: rng.nextDouble() * 4,
            experiance: rng.nextDouble() * 20,
            varified: rng.nextBool(),
          ));
}
