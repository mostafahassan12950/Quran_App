import 'package:flutter/material.dart';


import '../../product_model.dart';


class DetailAppBar extends StatelessWidget {
  final Products product;
  final void Function() onSharePressed; // Declare the onSharePressed callback

  const DetailAppBar({super.key, required this.product, required this.onSharePressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          const Spacer(),
          // Share button now calls the onSharePressed callback
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: onSharePressed, // Use the onSharePressed function here
            icon: const Icon(Icons.share_outlined),
          ),
          const SizedBox(width: 10),
          
        ],
      ),
    );
  }
}
