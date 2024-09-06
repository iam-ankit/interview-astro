import 'package:astro/app/data/pandit_model.dart';
import 'package:astro/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class PanditListWidget extends StatelessWidget {
  final PanditModel pandit;
  const PanditListWidget({
    super.key,
    required this.pandit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          leading: Badge(
            offset: Offset(-10, 0),
            backgroundColor: Colors.transparent,
            label: pandit.varified
                ? Icon(
                    Icons.verified_outlined,
                    color: Get.theme.colorScheme.secondary,
                  )
                : null,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(pandit.image),
            ),
          ),
          title: Text(
            pandit.name.capitalize!,
            style: Get.textTheme.displaySmall?.copyWith(
              fontSize: 16,
              color: Get.theme.colorScheme.primary,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pandit.vidyas.fold<String>("", (priv, e) {
                  if (priv.isEmpty) {
                    return e.name.capitalize!;
                  } else {
                    return "$priv, ${e.name.capitalize}";
                  }
                }),
                style:
                    AppTextStyle.subTitle.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(pandit.price == 0 ? "Free" : "₹${pandit.price}/min"),
              AbsorbPointer(
                absorbing: true,
                child: RatingBar.builder(
                  itemSize: 15,
                  initialRating: pandit.rating,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 2,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              )
            ],
          ),
          trailing: Column(
            children: [
              OutlinedButton(onPressed: () {}, child: const Text("Chat")),
            ],
          ),
        ),
      ),
    );
  }
}
