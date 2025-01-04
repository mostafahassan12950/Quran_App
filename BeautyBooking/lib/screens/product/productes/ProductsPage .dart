import 'package:flutter/material.dart';
import '../../../constan/constans.dart';
import '../Detail/detail.dart';
import '../product_model.dart';
import 'products_card.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<Products> displayedProducts = List.from(alls); // قائمة لعرض المنتجات
  final TextEditingController searchController = TextEditingController(); // التحكم في حقل البحث

  // Function لتحديث القائمة بناءً على نص البحث
  void _searchProducts(String query) {
    final results = alls.where((product) {
      final productName = product.title.toLowerCase(); // تحويل الاسم إلى حروف صغيرة
      final input = query.toLowerCase(); // تحويل النص المدخل إلى حروف صغيرة
      return productName.contains(input); // تحقق من تطابق النص
    }).toList();

    setState(() {
      displayedProducts = results; // تحديث القائمة الظاهرة
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        backgroundColor: kprimaryColor,centerTitle: true,
      ),
      body: Column(
        children: [
          // حقل البحث
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: searchController,
              onChanged: _searchProducts, // استدعاء الدالة عند كل كتابة
              decoration: InputDecoration(
                labelText: "Search Products",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // قائمة المنتجات
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // عدد العناصر في كل صف
                childAspectRatio: 0.7, // نسبة العرض إلى الارتفاع
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: displayedProducts.length, // عدد المنتجات الظاهرة
              itemBuilder: (context, index) {
                final prod = displayedProducts[index];
                return GestureDetector(
                  onTap: () {
                    // التنقل إلى صفحة التفاصيل
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Detail(prod: prod),
                      ),
                    );
                  },
                  child: ProductCards(prod: prod), // بطاقة المنتج
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
