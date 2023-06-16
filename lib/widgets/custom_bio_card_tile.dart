
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customBiocardTile extends StatelessWidget {
  const customBiocardTile({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.trealingIcon,
    required this.onPressed,
     this.marginBottom=0,
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
      elevation: 5,
      margin:EdgeInsets.only(left: 20,right: 20,bottom: marginBottom),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        onTap: () {},
        minLeadingWidth: 0,
        iconColor: Colors.black,
        //contentPadding: EdgeInsets.zero,
        leading: Icon(leadingIcon),
        title: Text(
          title,
          style: GoogleFonts.amiri(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(subTitle),
        trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(trealingIcon),
        ),
      ),
    );
  }
}
