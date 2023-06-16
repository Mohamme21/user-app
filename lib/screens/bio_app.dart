import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_bio_card_tile.dart';
import '../widgets/custom_card.dart';

class BioApp extends StatelessWidget {
  const BioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'BIO',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            // begin: Alignment.topLeft,
            // end: Alignment.bottomLeft,
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.pinkAccent,
              Colors.purpleAccent,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQpoJAv_-UgHRmtW-N85lo2XkpxK04m_kuyg&usqp=CAU'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "MohammedAlMasri",
              style: GoogleFonts.amiri(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                wordSpacing: 2,
              ),
            ),
            Text(
              "Flutter C",
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 0.7,
              ),
            ),
            const Divider(
              height: 50,
              thickness: 1,
              color: Colors.black54,
              indent: 30,
              endIndent: 30,
            ),
            customCard(
              leadingIcon: Icons.phone_android_outlined,
              title: "Mobile",
              subTitle: "0595343495",
              trealingIcon: Icons.phone,
              onPressed: () {
                _showMessage(context,message: "Call Naw");
                print("call");
              },
              marginBottom: 20,
            ),
            //const SizedBox(height: 20,),
            customCard(
              leadingIcon: Icons.email_outlined,
              title: "Email",
              subTitle: "Mo@gmail.com",
              trealingIcon: Icons.send,
              onPressed: () {
                _showMessage(context,message: "Send Email");
                print("send");
              },
              marginBottom: 20,
            ),
            //const SizedBox(height: 20,),
            customBiocardTile(
              leadingIcon: Icons.location_history,
              title: "location",
              subTitle: "Gaza",
              trealingIcon: Icons.map,
              onPressed: () {
                _showMessage(context,message: "Open Map");
                print("Open Map");
              },
            ),
            const Spacer(),
            const Text("TechBox-2023"),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
  void _showMessage(BuildContext context,{required String message}){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content:Text(message),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        duration: const Duration(milliseconds: 3000),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
      ),);
  }
}
