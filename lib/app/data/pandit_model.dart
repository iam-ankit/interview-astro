import 'package:astro/constants/specialisation.dart';
import 'package:astro/constants/vidya.dart';

class PanditModel {
  final String name;
  final String image;
  final List<Vidya> vidyas;
  final List<Specialisation> specialisation;
  final int price;
  final double rating;
  final bool varified;
  final double experiance;

  const PanditModel({
    required this.name,
    required this.image,
    required this.vidyas,
    required this.specialisation,
    required this.price,
    required this.rating,
    required this.experiance,
    required this.varified,
  });
}
