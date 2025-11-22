import 'package:flutter/material.dart';

import 'color_scheme.dart';

class TutorWidget extends StatelessWidget {
  final String img;
  final String name;
  final String subj;
  final String grade;
  final String price;
  final void Function()? openTeacherPage;
  const TutorWidget(
      {super.key,
      required this.grade,
      required this.img,
      required this.name,
      required this.price,
      required this.subj,
      required this.openTeacherPage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: openTeacherPage,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        height: 100,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: lightBlue.withOpacity(0.3),
        ),
        child: Row(
          children: [
            Hero(
              tag: name,
              //using the above causes some errors.
              //The error is because the first two
              //items have the same value in the img
              //so use name, since it will be diff
              //for each item built. Or betterstill
              //use the index from the list.
              child: Container(
                width: 120,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/$img.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.star,
                    color: Colors.lightBlue,
                    size: 30,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            // tutor details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
                Text(subj),
                Text("Grade: $grade"),
                Text(
                  "₦$price/hr",
                  style: const TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
