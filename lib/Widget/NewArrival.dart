import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Class/Images.dart';
import '../Pages/Product.dart';

class Newarrival extends StatelessWidget {
  const Newarrival({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildProductItem(),
          const Gap(16),

          _buildProductItem2(context),
        ],
      ),
    );
  }

  Widget _buildProductItem() {
    return Container(
      color: Colors.white,
      width: 162,
      height: 145,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 161,
                height: 100,
                child: Image.asset(Images.Rectangle),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 5),
                width: 90,
                height: 90,
                child: Image.asset(Images.HardBall),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Hard Ball',
                style: GoogleFonts.poppins(
                  color: Color(0xff000000),
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Icon(Icons.star, size: 18),
                  Text(
                    '4.9',
                    style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 135),
            child: Text(
              '\$10',
              style: GoogleFonts.poppins(
                color: Color(0xff000000),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem2(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Product()),
        );
      },
      child: Container(
        color: Colors.white,
        width: 162,
        height: 145,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 161,
                  height: 100,
                  child: Image.asset(Images.Rectangle),
                ),
                Positioned(
                  left: -15,
                  top: -35,
                  child: Container(
                    // margin:   EdgeInsets.only(left: 30, top: 5),
                    width: 200,
                    height: 150,
                    child: Image.asset(Images.freeRun),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Nike Free Run',
                  style: GoogleFonts.poppins(
                    color: Color(0xff000000),
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.star, size: 18),
                    Text(
                      '4.7',
                      style: GoogleFonts.poppins(
                        color: Color(0xff000000),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Text(
                '\$300',
                style: GoogleFonts.poppins(
                  color: Color(0xff000000),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
