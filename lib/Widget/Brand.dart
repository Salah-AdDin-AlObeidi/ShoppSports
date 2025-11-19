import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Class/Images.dart';

class Brand extends StatelessWidget {
  const Brand({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Image.asset(Images.Puma,
            width: 90,
            height: 90,
          ),
          Gap(20),
          Image.asset(Images.Nike,
            width: 90,
            height: 90,
          ),
          Gap(20),
          Image.asset(Images.Adidas,
            width: 90,
            height: 90,
          ),



        ],
      ),
    );
  }
}
