import 'package:flutter/material.dart';

class MyImageSlider extends StatelessWidget {
  final List<String> images; // قائمة الصور
  final Function(int) onChange;
  final String uniqueTag; // معرف فريد للـ Hero

  const MyImageSlider({
    super.key,
    required this.images,
    required this.onChange,
    required this.uniqueTag, // تمرير المعرف الفريد
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: images.length,
        onPageChanged: onChange,
        itemBuilder: (context, index) {
          return Hero(
            tag: "$uniqueTag-$index", // إنشاء tag فريد باستخدام المعرف
            child: Image.asset(
              images[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
