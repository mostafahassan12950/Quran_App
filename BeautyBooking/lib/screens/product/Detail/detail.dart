import 'package:flutter/material.dart';
import 'package:share/share.dart';
import '../../../constan/constans.dart';
import '../product_model.dart';
import 'Widget/addto_cart.dart';
import 'Widget/description.dart';
import 'Widget/detail_app_bar.dart';
import 'Widget/image_slider.dart';
import 'Widget/items_details.dart';

class Detail extends StatefulWidget {
  final Products prod; // نوع المنتج هو Product
  const Detail({super.key, required this.prod});

  @override
  State<Detail> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<Detail> {
  int currentImage = 0;

  void _shareProduct(BuildContext context) {
    try {
      final String productDetails =
          'Check out this product: ${widget.prod.title}\n\nDescription: ${widget.prod.description}\nPrice: \$${widget.prod.price.toStringAsFixed(2)}';

      Share.share(productDetails);
    } catch (e) {
      print('Error sharing product: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      floatingActionButton: AddToCart(product: widget.prod),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailAppBar(
                product: widget.prod,
                onSharePressed: () => _shareProduct(context),
              ),
              MyImageSlider(
                image: widget.prod.image,
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: currentImage == index ? 15 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentImage == index
                          ? Colors.black
                          : const Color.fromARGB(50, 24, 23, 23),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemsDetails(product: widget.prod),
                    const SizedBox(height: 20),
                    Description(description: widget.prod.description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
