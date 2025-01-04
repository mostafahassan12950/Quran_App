class Products {
  final String title;
  final String description;
  final String image;
  final String review;
  final double price;
  final double rate;
  int quantity;

  Products({
    required this.title,
    required this.description,
    required this.image,
    required this.review,
    required this.price,
    required this.rate,
    required this.quantity,
  });
}

// قائمة المنتجات
final List<Products> alls = [
  Products(
    title: "Lazord Hair Protect Cream",
    description: "Heat protection cream for your hair by Lazord",
    image: "images/1733040770_7086.webp", // استبدل بالمسار الصحيح للصورة
    review: "(0 Reviews)",
    price: 109.0,
    rate: 0.0,
    quantity: 1,
  ),
  Products(
    title: "Lazord Keratin Kit",
    description: "Brazilian Keratin set by Lazord for perfect hair care",
    image: "images/1733041895_9421.webp", // استبدل بالمسار الصحيح للصورة
    review: "(0 Reviews)",
    price: 190.0,
    rate: 0.0,
    quantity: 1,
  ),
];
