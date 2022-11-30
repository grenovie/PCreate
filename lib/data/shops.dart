class ListShops {
  final String image, shopName;
  final int id;
  ListShops({
    required this.id,
    required this.image,
    required this.shopName,
  });
}

List<ListShops> shops = [
  ListShops(id: 1, image: "assets/shops/pcexpress.png", shopName: "PC Express"),
  ListShops(id: 2, image: "assets/shops/pccorner.png", shopName: "PC Corner"),
  ListShops(id: 3, image: "assets/shops/pcoptions.png", shopName: "PC Options"),
  ListShops(id: 4, image: "assets/shops/guilmore.jpg", shopName: "Guilmore"),
  ListShops(id: 5, image: "assets/shops/pccentral.jpg", shopName: "PC Central"),
];
