class Category {
  final String image;
  final String title;
  Category({required this.image, required this.title});
}

List<Category> listOfCategory = [
  Category(image: 'assets/images/taxi-cab.png', title: 'Taxi'),
  Category(image: 'assets/images/market.png', title: 'Suuq'),
  Category(image: 'assets/images/ramen.png', title: 'Food'),
  Category(image: 'assets/images/delivery.png', title: 'Delivery'),
  Category(image: 'assets/images/gas.png', title: 'Gas'),
  Category(image: 'assets/images/giftbox.png', title: 'Rewards'),
];

class SubCategory {
  final String image;
  final String title;
  SubCategory({required this.image, required this.title});
}

List<SubCategory> listOfSubCategory = [
  SubCategory(image: 'assets/images/Apple.jpg', title: 'APPLE'),
  SubCategory(image: 'assets/images/Samsung.jpg', title: 'SAMSUNG'),
  SubCategory(image: 'assets/images/Aptamil.png', title: 'APTAMIL'),
  SubCategory(image: 'assets/images/dasani.jpg', title: 'DASANI'),
  SubCategory(image: 'assets/images/pharmacy.jpg', title: 'PHARMACY'),
  SubCategory(image: 'assets/images/groceries.jpg', title: 'GROCERIES'),
];

class Electronics {
  final String name;
  final String image;
  final String description;
  final double price;
  Electronics({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });
}

List<Electronics> listOfelectronics = [
  Electronics(
      name: 'IPHONE11',
      image: 'assets/images/iphone-11-purple.png',
      description:
          'Apple iPhone 11 · Processor: Apple A13 Bionic (7 nm+) · RAM: 4 GB · Storage: 64 GB, 128 GB, 256 GB · Display: 6.1 inches · Camera: 12 MP (wide) + 12 MP (ultrawide).',
      price: 1200),
  Electronics(
      name: 'Galaxy-A53',
      image: 'assets/images/Galaxy-A.jpg',
      description: 'Galaxy-A53, RAM: 4 GB · Storage: 64 GB, 128 GB, 256 GB ',
      price: 200),
  Electronics(
      name: 'Galaxy-A22',
      image: 'assets/images/Samsung-Galaxy-A22.jpg',
      description: 'Galaxy-A22, RAM: 4 GB · Storage: 64 GB, 128 GB, 256 GB ',
      price: 160),
  Electronics(
      name: 'Nokia 110',
      image: 'assets/images/nokia.jpg',
      description:
          'Nokia 110 2019 Dual SIM Blue, With its dual SIM design and compact size, the Nokia 110 2019 mobile phone has everything you need for your everyday life',
      price: 30),
];

class Dress {
  final String name;
  final String image;
  final String description;
  final double price;
  Dress({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });
}

List<Dress> listOfdresses = [
  Dress(
      name: 'T-shirt',
      image: 'assets/images/t-shirts.jpg',
      description: 'T-shirt last model 2022',
      price: 12),
  Dress(
      name: 'T-shirt',
      image: 'assets/images/t-shirts2.jpg',
      description: 'T-shirt last model 2022',
      price: 12),
  Dress(
      name: 'Shirt',
      image: 'assets/images/shirts.jpg',
      description: 'Shirt last model 2022',
      price: 22),
];
