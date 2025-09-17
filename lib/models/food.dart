class Food {
  final String title;
  final String vendor;
  final String image;
  final double rating;
  final double price;
  final List<Food> similar;
  const Food({
    required this.title,
    required this.vendor,
    required this.image,
    required this.rating,
    required this.price,
    this.similar = const [],
  });
}

final demoFoods = [
  Food(
    title: 'Hyderabadi Biryani',
    vendor: 'Nair Nosh',
    image: 'assets/images/onboarding.png',
    rating: 4.9,
    price: 7.50,
  ),
  Food(
    title: 'Veg Biryani',
    vendor: 'Eat Well',
    image: 'assets/images/onboarding.png',
    rating: 4.7,
    price: 5.50,
  ),
];
