import 'package:flutter/material.dart';

void main() {
  runApp(const PlantStoreApp());
}

class PlantStoreApp extends StatelessWidget {
  const PlantStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gansss.com',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF2F3F5),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2E7D32)),
      ),
      home: const PlantStoreHomePage(),
    );
  }
}

class PlantStoreHomePage extends StatefulWidget {
  const PlantStoreHomePage({super.key});

  @override
  State<PlantStoreHomePage> createState() => _PlantStoreHomePageState();
}

class _PlantStoreHomePageState extends State<PlantStoreHomePage> {
  final List<ProductItem> _products = const [
    ProductItem(
      name: 'Monstera Deliciosa',
      unitPrice: 75000,
      imageAsset: 'assets/images/tanaman_1.jpg',
    ),
    ProductItem(
      name: 'Kaktus Mini Pot',
      unitPrice: 32000,
      imageAsset: 'assets/images/tanaman_2.jpg',
    ),
    ProductItem(
      name: 'Lidah Mertua',
      unitPrice: 48000,
      imageAsset: 'assets/images/tanaman_3.jpg',
    ),
    ProductItem(
      name: 'Peace Lily',
      unitPrice: 65000,
      imageAsset: 'assets/images/tanaman_4.jpg',
    ),
    ProductItem(
      name: 'Calathea Orbifolia',
      unitPrice: 88000,
      imageAsset: 'assets/images/tanaman_5.jpg',
    ),
    ProductItem(
      name: 'Sirih Gading',
      unitPrice: 42000,
      imageAsset: 'assets/images/tanaman_6.jpg',
    ),
  ];

  final List<String> _categories = const [
    'Indoor',
    'Outdoor',
    'Succulent',
    'Hias Daun',
    'Paket Pot',
  ];

  late final List<int> _quantities;

  @override
  void initState() {
    super.initState();
    _quantities = List<int>.filled(_products.length, 0);
  }

  void _incrementQuantity(int index) {
    setState(() {
      _quantities[index] = _quantities[index] + 1;
    });
  }

  void _decrementQuantity(int index) {
    if (_quantities[index] == 0) {
      return;
    }

    setState(() {
      _quantities[index] = _quantities[index] - 1;
    });
  }

  int get _selectedItemCount {
    return _quantities.fold(0, (sum, qty) => sum + qty);
  }

  int get _cartTotalPrice {
    int total = 0;
    for (int i = 0; i < _products.length; i++) {
      total += _products[i].unitPrice * _quantities[i];
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF5A1F),
        foregroundColor: Colors.white,
        title: const Text(
          'Toko TanamanKu',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xFFEDEDED),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('assets/images/ayam.png'),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Hai Jhon, Selamat Datang!',
                      style: TextStyle(
                        fontSize: 28 / 2,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 230,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 12),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset('assets/images/ayam.png', fit: BoxFit.cover),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xAA0D3B18), Color(0x330D3B18)],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 16,
                    bottom: 16,
                    child: Text(
                      'FLASH SALE TANAMAN\nUP TO 70%',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 34 / 2,
                        height: 1.25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
              child: Text(
                '::= Kategori Produk',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 30 / 2,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF2D2D2D),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: _categories
                    .map((category) => CategoryChip(label: category))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
              child: GridView.builder(
                itemCount: _products.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.58,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: _products[index],
                    quantity: _quantities[index],
                    onAdd: () => _incrementQuantity(index),
                    onRemove: () => _decrementQuantity(index),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(8, 8, 8, 18),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Item: $_selectedItemCount',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2D2D2D),
                    ),
                  ),
                  Text(
                    'Total: ${formatRupiah(_cartTotalPrice)}',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF1E8D3E),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  const CategoryChip({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFFF5A1F),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.product,
    required this.quantity,
    required this.onAdd,
    required this.onRemove,
    super.key,
  });

  final ProductItem product;
  final int quantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final int totalPrice = product.unitPrice * quantity;

    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 1.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              product.imageAsset,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 6),
            child: Text(
              product.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16 / 1.08,
                fontWeight: FontWeight.w700,
                color: Color(0xFF2D2D2D),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              quantity == 0
                  ? 'Harga: ${formatRupiah(product.unitPrice)}'
                  : 'Harga: ${formatRupiah(totalPrice)}',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xFF269A43),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 2, 10, 8),
            child: Text(
              'Jumlah: $quantity',
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF5A5A5A),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Row(
              children: [
                Expanded(
                  child: FilledButton.tonal(
                    onPressed: quantity == 0 ? null : onRemove,
                    style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(34),
                      backgroundColor: const Color(0xFFE8F4EA),
                    ),
                    child: const Icon(
                      Icons.remove,
                      size: 18,
                      color: Color(0xFF1B5E20),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: FilledButton(
                    onPressed: onAdd,
                    style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(34),
                      backgroundColor: const Color(0xFF2E9B4C),
                    ),
                    child: const Icon(Icons.add, size: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductItem {
  const ProductItem({
    required this.name,
    required this.unitPrice,
    required this.imageAsset,
  });

  final String name;
  final int unitPrice;
  final String imageAsset;
}

String formatRupiah(int value) {
  final String source = value.toString();
  final List<String> chars = source.split('').reversed.toList();
  final StringBuffer formatted = StringBuffer();

  for (int i = 0; i < chars.length; i++) {
    if (i > 0 && i % 3 == 0) {
      formatted.write('.');
    }
    formatted.write(chars[i]);
  }

  final String result = formatted.toString().split('').reversed.join();
  return 'Rp. $result';
}
