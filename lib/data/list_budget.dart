class ListBudget {
  final String image, processor, mobo, ram, storage, gpu, psu, chasis;
  final int id, price;

  ListBudget({
    required this.id,
    required this.image,
    required this.processor,
    required this.mobo,
    required this.ram,
    required this.storage,
    required this.gpu,
    required this.psu,
    required this.chasis,
    required this.price,
  });
}

List<ListBudget> budgetcomputer = [
  ListBudget(
    id: 1,
    image: "assets/builds/Pc1.png",
    price: 40700,
    processor: "Ryzen 5 5500 4.2ghz 6core/12threads",
    mobo: "Gigabyte Aorus B450M",
    ram: "Microfrom Aurora 16gb ddr4 3200hz RGB (8x2stick)",
    storage: "Kingfast 512gb NvME",
    gpu: "Gigabyte GTX1660Ti 6gb 192bit Gddr6 Dual Fan",
    psu: "Xigmatek Hydra 550watts 80+ Bronze",
    chasis: "PC Cooler LM200 White",
  ),
  ListBudget(
    id: 2,
    image: "assets/builds/Pc1.png",
    price: 40700,
    processor: "Ryzen 5 5500 4.2ghz 6core/12threads",
    mobo: "Gigabyte Aorus B450M",
    ram: "Microfrom Aurora 16gb ddr4 3200hz RGB (8x2stick)",
    storage: "Kingfast 512gb NvME",
    gpu: "Gigabyte GTX1660Ti 6gb 192bit Gddr6 Dual Fan",
    psu: "Xigmatek Hydra 550watts 80+ Bronze",
    chasis: "PC Cooler LM200 White",
  ),
];
