class ListShops {
  final String image, shopName, link;
  final int id;
  ListShops({
    required this.id,
    required this.link,
    required this.image,
    required this.shopName,
  });
}

List<ListShops> shops = [
  ListShops(
      id: 1,
      image: "assets/shops/pcexpress.png",
      shopName: "PC Express",
      link: "https://pcx.com.ph/"),
  ListShops(
      id: 2,
      image: "assets/shops/pccorner.png",
      shopName: "PC Corner",
      link: "https://pccorner.com.ph/controller.forward?action=home"),
  ListShops(
      id: 3,
      image: "assets/shops/pcoptions.png",
      shopName: "PC Options",
      link: "http://www.pcoptionsph.com"),
  ListShops(
      id: 4,
      image: "assets/shops/guilmore.jpg",
      shopName: "Guilmore",
      link: "https://gilmoreonline.net"),
  ListShops(
      id: 5,
      image: "assets/shops/pccentral.jpg",
      shopName: "PC Central",
      link: "https://pccentralstore.com"),
];
