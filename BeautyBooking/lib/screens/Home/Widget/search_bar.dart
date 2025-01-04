import 'package:flutter/material.dart';
import '../../../constan/constans.dart';
import 'SearchResults.dart'; // ملف شاشة البحث

class MySearchBAR extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  MySearchBAR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              // الانتقال إلى شاشة البحث عند النقر على الحقل
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(), // شاشة البحث
                ),
              );
            },
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white, // لون خلفية الحقل
                borderRadius: BorderRadius.circular(15), // زوايا دائرية
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), // ظل خفيف
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: const Offset(0, 4), // اتجاه الظل
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 24,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                        hintText: "chair, sofa",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none, // إخفاء الإطار
                      ),
                      enabled: false, // منع الكتابة في هذا الحقل
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 10), // مسافة بين الحقل وزر التصفية
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color:kprimaryColor, // لون زر التصفية
            borderRadius: BorderRadius.circular(15), // زوايا دائرية
          ),
          child: IconButton(
            onPressed: () {
              // الإجراء عند النقر على زر التصفية
            },
            icon: const Icon(
              Icons.tune,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
      ],
    );
  }
}
