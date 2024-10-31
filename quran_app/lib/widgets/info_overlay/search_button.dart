import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/index.dart';

class QiblahButton extends StatelessWidget {
  const QiblahButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/Qiblah');
      },
      style: ElevatedButton.styleFrom(
        primary: const Color(0x99575757),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            AppConstant.searchAyah,
            style: TextStyle(color: Color(0xff8F8F8F)),
          ),
          SvgPicture.asset(AppAsset.search),
        ],
      ),
    );
  }
}
