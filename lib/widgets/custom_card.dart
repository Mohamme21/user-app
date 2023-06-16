import 'package:flutter/material.dart';

class customCard extends StatelessWidget {
  const customCard({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.trealingIcon,
    required this.onPressed,
    this.marginBottom = 0,
  });

  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trealingIcon;
  final void Function() onPressed;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      //margin: const EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(right: 20, left: 20, bottom: marginBottom),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            Icon(leadingIcon),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(subTitle),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: onPressed,
                  icon: Icon(trealingIcon),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
