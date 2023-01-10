class ListStorage {
  final String image, name, capacity, type, formFactor, image2D;
  final int id;
  final double price;
  ListStorage({
    required this.image2D,
    required this.id,
    required this.image,
    required this.name,
    required this.capacity,
    required this.type,
    required this.formFactor,
    required this.price,
  });
}

List<ListStorage> storage = [
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 1,
      image: "assets/storage/Seagate Barracuda Compute.png",
      name: "Seagate Barracuda Compute",
      capacity: "2 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 2949.56),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 2,
      image: "assets/storage/Seagate BarraCuda.png",
      name: "Seagate BarraCuda",
      capacity: "1 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 1858.00),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 3,
      image: "assets/storage/Kingston A400.png",
      name: "Kingston A400",
      capacity: "240 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 1178.88),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 4,
      image: "assets/storage/Crucial MX500.png",
      name: "Crucial MX500",
      capacity: "1 TB",
      type: "SSD",
      formFactor: '2.5"',
      price: 4483.05),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 5,
      image: "assets/storage/Western Digital Caviar Blue.png",
      name: "Western Digital Caviar Blue",
      capacity: "1 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 2353.63),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 6,
      image: "assets/storage/Western Digital Blue.png",
      name: "Western Digital Blue",
      capacity: "2 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 2942.00),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 14,
      image: "assets/storage/Samsung 840 Pro.png",
      name: "Samsung 840 Pro",
      capacity: "256 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 9667.91),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 15,
      image: "assets/storage/Samsung 840 Pro.png",
      name: "Samsung 840 Pro",
      capacity: "256 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 9667.91),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 17,
      image: "assets/storage/Samsung 850 Pro.png",
      name: "Samsung 850 Pro",
      capacity: "256 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 14071.80),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 22,
      image: "assets/storage/Samsung 840 Evo.png",
      name: "Samsung 840 Evo",
      capacity: "120 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 4190),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 24,
      image: "assets/storage/Samsung 840 Pro 128GB.png",
      name: "Samsung 840 Pro 128GB",
      capacity: "128 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 10312.87),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 33,
      image: "assets/storage/Western Digital Black SN770.png",
      name: "Western Digital Black SN770",
      capacity: "1 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 2323.73),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 41,
      image: "assets/storage/Western Digital Purple Pro.png",
      name: "Western Digital Purple Pro",
      capacity: "22 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 34888.60),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 44,
      image: "assets/storage/Samsung 870 QVO.png",
      name: "Samsung 870 QVO",
      capacity: "500 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 40487.93),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 50,
      image: "assets/storage/Seagate IronWolf Pro.png",
      name: "Seagate IronWolf Pro",
      capacity: "20 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 27320.89),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 53,
      image: "assets/storage/Crucial MX500-2TB.png",
      name: "Crucial MX500-2TB",
      capacity: "2 TB",
      type: "SSD",
      formFactor: '2.5"',
      price: 10193.78),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 54,
      image: "assets/storage/Seagate IronWolf Pro-4TB.png",
      name: "Seagate IronWolf Pro-4TB",
      capacity: "4 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 7281.10),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 56,
      image: "assets/storage/Seagate BarraCuda-4TB.png",
      name: "Seagate BarraCuda-4TB",
      capacity: "4 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 3960.66),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 58,
      image: "assets/storage/Western Digital WD_BLACK.png",
      name: "Western Digital WD_BLACK",
      capacity: "4 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 7281.10),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 60,
      image: "assets/storage/Intel 750.png",
      name: "Intel 750",
      capacity: "1.2 TB",
      type: "SSD",
      formFactor: 'PCIe"',
      price: 144985.39),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 65,
      image: "assets/storage/Crucial BX500.png",
      name: "Crucial BX500",
      capacity: "1 TB",
      type: "SSD",
      formFactor: '2.5"',
      price: 3785.89),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 66,
      image: "assets/storage/Seagate Barracuda Compute-8TB.png",
      name: "Seagate Barracuda Compute-8TB",
      capacity: "8 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 8154.91),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 67,
      image: "assets/storage/Kingston A400-480GB.png",
      name: "Kingston A400-480GB",
      capacity: "480 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 1747.02),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 69,
      image: "assets/storage/Western Digital Red Pro.png",
      name: "Western Digital Red Pro",
      capacity: "2 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 34951.52),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 77,
      image: "assets/storage/Crucial MX500-500GB.png",
      name: "Crucial MX500-500GB",
      capacity: "500 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 2795.59),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 78,
      image: "assets/storage/Western Digital Blue.png",
      name: "Western Digital Blue",
      capacity: "4 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 3494.63),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 81,
      image: "assets/storage/Western Digital Blue-1TB.png",
      name: "Western Digital Blue-1TB",
      capacity: "1 TB",
      type: "SSD",
      formFactor: '2.5"',
      price: 5139.71),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 87,
      image: "assets/storage/Silicon Power A55.png",
      name: "Silicon Power A55",
      capacity: "512 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 1688.77),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 88,
      image: "assets/storage/Toshiba MQ01ABD032.png",
      name: "Toshiba MQ01ABD032",
      capacity: "320 GB",
      type: "HDD",
      formFactor: '2.5"',
      price: 724.68),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 94,
      image: "assets/storage/Samsung 870 QVO-2TB.png",
      name: "Samsung 870 QVO-2TB",
      capacity: "2 TB",
      type: "SSD",
      formFactor: '2.5"',
      price: 10915.54),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 97,
      image: "assets/storage/Kingston A400-120GB.png",
      name: "Kingston A400-120GB",
      capacity: "120 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 1105.65),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 98,
      image: "assets/storage/Leven JS600.png",
      name: "Leven JS600",
      capacity: "64 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 698.46),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 201,
      image: "assets/storage/Samsung 860 Pro.png",
      name: "Samsung 860 Pro",
      capacity: "2 TB",
      type: "SSD",
      formFactor: '2.5"',
      price: 44347.90),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 202,
      image: "assets/storage/Crucial BX100.png",
      name: "Crucial BX100",
      capacity: "250 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 3636.81),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 203,
      image: "assets/storage/Kingston KC600.png",
      name: "Kingston KC600",
      capacity: "	256 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 2068.82),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 204,
      image: "assets/storage/Kingston SSDNow V300.png",
      name: "Kingston SSDNow V300",
      capacity: "	120 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 4187.45),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 205,
      image: "assets/storage/Kingston SSDNow V300 240.png",
      name: "Kingston SSDNow V300",
      capacity: "	240 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 7514.80),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 206,
      image: "assets/storage/Kingston HyperX 3K.png",
      name: "Kingston HyperX 3K",
      capacity: "	120 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 8142.67),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 207,
      image: "assets/storage/Kingston SSDNow KC100.png",
      name: "Kingston SSDNow KC100",
      capacity: "	240 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 3820.36),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 208,
      image: "assets/storage/Kingston SSDNow V+200.png",
      name: "Kingston SSDNow V+200",
      capacity: "	120 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 3612.75),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 209,
      image: "assets/storage/Crucial MX500N.png",
      name: "Crucial MX500",
      capacity: "	1 TB",
      type: "SSD",
      formFactor: '2.5"',
      price: 3916.05),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 210,
      image: "assets/storage/Crucial M500.png",
      name: "Crucial M500",
      capacity: "	120 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 4429.19),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 211,
      image: "assets/storage/Crucial M4.png",
      name: "Crucial M4",
      capacity: "	256 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 9219.33),
  ListStorage(
      image2D: "assets/animated/SSD.png",
      id: 212,
      image: "assets/storage/Seagate 600.png",
      name: "Seagate 600",
      capacity: "	240 GB",
      type: "SSD",
      formFactor: '2.5"',
      price: 4475.64),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 213,
      image: "assets/storage/Samsung Spinpoint F3.png",
      name: "Samsung Spinpoint F3",
      capacity: "	1 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 5035.80),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 214,
      image: "assets/storage/Samsung Spinpoint F3R.png",
      name: "Samsung Spinpoint F3R",
      capacity: "	1 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 6155.55),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 215,
      image: "assets/storage/Samsung Spinpoint M9T.png",
      name: "Samsung Spinpoint M9T",
      capacity: "	2 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 5539.99),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 216,
      image: "assets/storage/Seagate Momentu.png",
      name: "Seagate Momentu",
      capacity: "	500 GB",
      type: "HDD",
      formFactor: '3.5"',
      price: 4857.28),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 217,
      image: "assets/storage/Seagate Momentus 5400.6.png",
      name: "Seagate Momentus 5400.6",
      capacity: "	500 GB",
      type: "HDD",
      formFactor: '3.5"',
      price: 4420.80),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 218,
      image: "assets/storage/Seagate BarraCuda3.png",
      name: "Seagate BarraCuda",
      capacity: "	3 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 6154.99),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 219,
      image: "assets/storage/Seagate BarraCuda Pro Compute1TB.png",
      name: "Seagate BarraCuda Pro Compute",
      capacity: "	1 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 2965.29),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 220,
      image: "assets/storage/Seagate Barracuda Compute2TB.png",
      name: "Seagate Barracuda Compute",
      capacity: "	2 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 2797.42),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 221,
      image: "assets/storage/Seagate SV35.5.png",
      name: "Seagate SV35.5",
      capacity: "	500 GB",
      type: "HDD",
      formFactor: '3.5"',
      price: 1006.15),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 222,
      image: "assets/storage/Seagate IronWolf NAS.png",
      name: "Seagate IronWolf NAS",
      capacity: "	2 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 3916.61),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 223,
      image: "assets/storage/Seagate SkyHawk.png",
      name: "Seagate SkyHawk",
      capacity: "	2 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 3917.17),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 224,
      image: "assets/storage/Western Digital Purple.png",
      name: "Western Digital Purple",
      capacity: "	3 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 3597.64),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 225,
      image: "assets/storage/Western Digital Blue2TB.png",
      name: "Western Digital Blue",
      capacity: "	2 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 2629.54),
  ListStorage(
      image2D: "assets/animated/HDD.png",
      id: 226,
      image: "assets/storage/Western Digital Caviar Black2TB.png",
      name: "Western Digital Caviar Black",
      capacity: "	2 TB",
      type: "HDD",
      formFactor: '3.5"',
      price: 7832.65),
];
