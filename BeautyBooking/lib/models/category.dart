class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categoriesList = [
  Category(
    title: "All",
    image: "images/all.png",
  ),
  Category(
    title: "Beauty",
    image: "images/beauty.png",
  ),
  Category(
    title: "Massage",
    image: "images/OIP (3).jpg",
  ),
  Category(
    title: "LaserCenters",
    image: "images/OIP.jpg",
  ),
  Category(
    title: "SkinCare",
    image: "images/download (1).jpg",
  ),
 
];
