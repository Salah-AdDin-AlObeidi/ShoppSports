import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_pic_editor/svg_pic_editor.dart';

class Searchviwe extends StatelessWidget {
  const Searchviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 356,
      height: 38,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: TextField(

        textAlign: TextAlign.start,
        style:  GoogleFonts.poppins(
           color: Color(0xff000000),
          fontSize: 12,
          
        ),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SvgPicture.asset('assets/svg/search.svg'


            ),
          ),
          hintText: 'What are you looking for ?',

          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
