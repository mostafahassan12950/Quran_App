import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/salo_model.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<Salon> _favorite = [];
  List<Salon> get favorites => _favorite;
  void toggleFavorite(Salon product) {
    if (_favorite.contains(product)) {
      _favorite.remove(product);
    } else {
      _favorite.add(product);
    }
    notifyListeners();
  }

  bool isExist(Salon product) {
    final isExist = _favorite.contains(product);
    return isExist;
  }

  static FavoriteProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}
