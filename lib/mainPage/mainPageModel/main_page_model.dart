class HomePageModel {
  //CartItem
  final String id;
  final String imageUrl;
  final String title;
  final int quantity;
  final double price;

  HomePageModel({
    required this.title,
    required this.imageUrl,
    required this.id,
    required this.price,
    required this.quantity,
  });
}
