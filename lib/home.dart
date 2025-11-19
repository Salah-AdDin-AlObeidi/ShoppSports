import 'package:appshop/Pages/pageAppBars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_pic_editor/svg_pic_editor.dart';

import 'Widget/Brand.dart';
import 'Widget/NewArrival.dart';
import 'Widget/SearchViwe.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(35),
            Row(
              children: [
                Gap(40),
                SvgPicture.asset('assets/svg/Menu.svg'),

                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SvgPicture.asset('assets/svg/Notification.svg'),
                ),
              ],
            ),
            Gap(30),
            Searchviwe(),
            Gap(30),
            Container(
              width: 352,
              height: 168,

              child: Image.asset('assets/images/Widget 1.png'),
            ),
            Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Brand',
                    style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Spacer(),
                  Text(
                    'See all',
                    style: GoogleFonts.poppins(
                      color: Color(0xff379C67),
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            Gap(30),
            Brand(),
            Gap(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'New Arrival',
                  style: GoogleFonts.poppins(
                    color: Color(0xff000000),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Gap(20),
            Newarrival(),
            Gap(10),
          ],
        ),
      ),
      bottomNavigationBar: PageAppBars(),
    );
  }
}
