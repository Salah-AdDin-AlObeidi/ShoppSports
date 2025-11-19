import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:svg_pic_editor/svg_pic_editor.dart';

class PageAppBars extends StatelessWidget {
  const PageAppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(27),
              ),
              width: 368,
              height: 54,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/svg/IconHome.svg'),
                    Gap(65),
                    SvgPicture.asset('assets/svg/IconHert.svg'),
                    Gap(65),
                    SvgPicture.asset('assets/svg/IconShopp.svg'),
                    Gap(65),
                    SvgPicture.asset('assets/svg/IconMessge.svg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
