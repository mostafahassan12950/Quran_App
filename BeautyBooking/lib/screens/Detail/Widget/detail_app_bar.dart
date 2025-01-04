import 'package:flutter/material.dart';
import '../../../Provider/favorite_provider.dart';
import '../../../models/salo_model.dart';

class DetailAppBar extends StatelessWidget {
  final Salon product;
  final void Function() onSharePressed; // Declare the onSharePressed callback

  const DetailAppBar({super.key, required this.product, required this.onSharePressed});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
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
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {
              provider.toggleFavorite(product);
            },
            icon: Icon(
              provider.isExist(product)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Color.fromARGB(255, 253, 1, 1),
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
