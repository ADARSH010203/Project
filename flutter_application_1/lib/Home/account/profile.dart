import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ModernHomeScreen extends StatefulWidget {
  const ModernHomeScreen({super.key});

  @override
  State<ModernHomeScreen> createState() => _ModernHomeScreenState();
}

class _ModernHomeScreenState extends State<ModernHomeScreen> {
  int _selectedNavIndex = 0;
  int _selectedCategoryIndex = 0;
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, dynamic>> _favorites = [];

  // Product data and categories (same as original)
  final List<String> categories = ['All', 'T-Shirts', 'Shirts', 'Pants', 'Jeans', 'Jackets', 'Shoes', 'Accessories'];
  final List<Map<String, dynamic>> products = [
  // T-Shirts (10 items)
  {'name': 'Basic Cotton T-Shirt', 'price': '₹499', 'category': 'T-Shirts', 'image': 'https://picsum.photos/200/300?random=1'},
  {'name': 'Graphic Print T-Shirt', 'price': '₹599', 'category': 'T-Shirts', 'image': 'https://picsum.photos/200/300?random=2'},
  {'name': 'Striped Polo T-Shirt', 'price': '₹699', 'category': 'T-Shirts', 'image': 'https://picsum.photos/200/300?random=3'},
  {'name': 'Oversized Streetwear Tee', 'price': '₹549', 'category': 'T-Shirts', 'image': 'https://picsum.photos/200/300?random=4'},
  {'name': 'V-Neck Casual T-Shirt', 'price': '₹449', 'category': 'T-Shirts', 'image': 'https://picsum.photos/200/300?random=5'},
  {'name': 'Sport Performance Tee', 'price': '₹649', 'category': 'T-Shirts', 'image': 'https://picsum.photos/200/300?random=6'},
  {'name': 'Pocket Detail T-Shirt', 'price': '₹499', 'category': 'T-Shirts', 'image': 'https://picsum.photos/200/300?random=7'},
  {'name': 'Long Sleeve Basic Tee', 'price': '₹599', 'category': 'T-Shirts', 'image': 'https://picsum.photos/200/300?random=8'},
  {'name': 'Color Block T-Shirt', 'price': '₹549', 'category': 'T-Shirts', 'image': 'https://picsum.photos/200/300?random=9'},
  {'name': 'Organic Cotton T-Shirt', 'price': '₹699', 'category': 'T-Shirts', 'image': 'https://picsum.photos/200/300?random=10'},

  // Shirts (10 items)
  {'name': 'Linen Casual Shirt', 'price': '₹1,299', 'category': 'Shirts', 'image': 'https://picsum.photos/200/300?random=11'},
  {'name': 'Formal Cotton Shirt', 'price': '₹1,499', 'category': 'Shirts', 'image': 'https://picsum.photos/200/300?random=12'},
  {'name': 'Denim Work Shirt', 'price': '₹1,199', 'category': 'Shirts', 'image': 'https://picsum.photos/200/300?random=13'},
  {'name': 'Flannel Plaid Shirt', 'price': '₹1,099', 'category': 'Shirts', 'image': 'https://picsum.photos/200/300?random=14'},
  {'name': 'Oxford Button-Down', 'price': '₹1,399', 'category': 'Shirts', 'image': 'https://picsum.photos/200/300?random=15'},
  {'name': 'Short Sleeve Resort Shirt', 'price': '₹999', 'category': 'Shirts', 'image': 'https://picsum.photos/200/300?random=16'},
  {'name': 'Striped Linen Shirt', 'price': '₹1,199', 'category': 'Shirts', 'image': 'https://picsum.photos/200/300?random=17'},
  {'name': 'Mandarin Collar Shirt', 'price': '₹1,299', 'category': 'Shirts', 'image': 'https://picsum.photos/200/300?random=18'},
  {'name': 'Chambray Utility Shirt', 'price': '₹1,349', 'category': 'Shirts', 'image': 'https://picsum.photos/200/300?random=19'},
  {'name': 'Tropical Print Shirt', 'price': '₹1,099', 'category': 'Shirts', 'image': 'https://picsum.photos/200/300?random=20'},

  // Pants (10 items)
  {'name': 'Cotton Chino Pants', 'price': '₹999', 'category': 'Pants', 'image': 'https://picsum.photos/200/300?random=21'},
  {'name': 'Jogger Sweatpants', 'price': '₹899', 'category': 'Pants', 'image': 'https://picsum.photos/200/300?random=22'},
  {'name': 'Tailored Dress Pants', 'price': '₹1,299', 'category': 'Pants', 'image': 'https://picsum.photos/200/300?random=23'},
  {'name': 'Cargo Utility Pants', 'price': '₹1,099', 'category': 'Pants', 'image': 'https://picsum.photos/200/300?random=24'},
  {'name': 'Linen Blend Trousers', 'price': '₹1,199', 'category': 'Pants', 'image': 'https://picsum.photos/200/300?random=25'},
  {'name': 'High-Waisted Wide Leg', 'price': '₹1,349', 'category': 'Pants', 'image': 'https://picsum.photos/200/300?random=26'},
  {'name': 'Stretch Work Pants', 'price': '₹1,099', 'category': 'Pants', 'image': 'https://picsum.photos/200/300?random=27'},
  {'name': 'Cropped Ankle Pants', 'price': '₹949', 'category': 'Pants', 'image': 'https://picsum.photos/200/300?random=28'},
  {'name': 'Pleated Formal Trousers', 'price': '₹1,499', 'category': 'Pants', 'image': 'https://picsum.photos/200/300?random=29'},
  {'name': 'Tech Water-Resistant Pants', 'price': '₹1,599', 'category': 'Pants', 'image': 'https://picsum.photos/200/300?random=30'},

  // Jeans (10 items)
  {'name': 'Slim Fit Jeans', 'price': '₹1,799', 'category': 'Jeans', 'image': 'https://picsum.photos/200/300?random=31'},
  {'name': 'Straight Leg Jeans', 'price': '₹1,699', 'category': 'Jeans', 'image': 'https://picsum.photos/200/300?random=32'},
  {'name': 'Distressed Ripped Jeans', 'price': '₹1,899', 'category': 'Jeans', 'image': 'https://picsum.photos/200/300?random=33'},
  {'name': 'High-Rise Mom Jeans', 'price': '₹1,599', 'category': 'Jeans', 'image': 'https://picsum.photos/200/300?random=34'},
  {'name': 'Black Skinny Jeans', 'price': '₹1,499', 'category': 'Jeans', 'image': 'https://picsum.photos/200/300?random=35'},
  {'name': 'Vintage Wash Boyfriend Jeans', 'price': '₹1,699', 'category': 'Jeans', 'image': 'https://picsum.photos/200/300?random=36'},
  {'name': 'Stretch Comfort Jeans', 'price': '₹1,799', 'category': 'Jeans', 'image': 'https://picsum.photos/200/300?random=37'},
  {'name': 'Wide Leg Denim', 'price': '₹1,899', 'category': 'Jeans', 'image': 'https://picsum.photos/200/300?random=38'},
  {'name': 'Cropped Flare Jeans', 'price': '₹1,599', 'category': 'Jeans', 'image': 'https://picsum.photos/200/300?random=39'},
  {'name': 'Selvedge Raw Denim', 'price': '₹2,499', 'category': 'Jeans', 'image': 'https://picsum.photos/200/300?random=40'},

  // Sweaters (10 items)
  {'name': 'Cable Knit Wool Sweater', 'price': '₹1,999', 'category': 'Sweaters', 'image': 'https://picsum.photos/200/300?random=41'},
  {'name': 'Turtleneck Cashmere Sweater', 'price': '₹2,499', 'category': 'Sweaters', 'image': 'https://picsum.photos/200/300?random=42'},
  {'name': 'V-Neck Merino Wool Sweater', 'price': '₹1,899', 'category': 'Sweaters', 'image': 'https://picsum.photos/200/300?random=43'},
  {'name': 'Oversized Chunky Knit Sweater', 'price': '₹1,799', 'category': 'Sweaters', 'image': 'https://picsum.photos/200/300?random=44'},
  {'name': 'Striped Cotton Blend Sweater', 'price': '₹1,599', 'category': 'Sweaters', 'image': 'https://picsum.photos/200/300?random=45'},
  {'name': 'Crewneck Alpaca Wool Sweater', 'price': '₹2,199', 'category': 'Sweaters', 'image': 'https://picsum.photos/200/300?random=46'},
  {'name': 'Color Block Acrylic Sweater', 'price': '₹1,399', 'category': 'Sweaters', 'image': 'https://picsum.photos/200/300?random=47'},
  {'name': 'High Neck Ribbed Sweater', 'price': '₹1,699', 'category': 'Sweaters', 'image': 'https://picsum.photos/200/300?random=48'},
  {'name': 'Button Detail Cardigan', 'price': '₹1,899', 'category': 'Sweaters', 'image': 'https://picsum.photos/200/300?random=49'},
  {'name': 'Mohair Blend Oversized Sweater', 'price': '₹2,299', 'category': 'Sweaters', 'image': 'https://picsum.photos/200/300?random=50'},

  // Jackets (10 items)
  {'name': 'Bomber Jacket', 'price': '₹2,999', 'category': 'Jackets', 'image': 'https://picsum.photos/200/300?random=51'},
  {'name': 'Denim Trucker Jacket', 'price': '₹2,499', 'category': 'Jackets', 'image': 'https://picsum.photos/200/300?random=52'},
  {'name': 'Leather Moto Jacket', 'price': '₹4,999', 'category': 'Jackets', 'image': 'https://picsum.photos/200/300?random=53'},
  {'name': 'Puffer Winter Jacket', 'price': '₹3,499', 'category': 'Jackets', 'image': 'https://picsum.photos/200/300?random=54'},
  {'name': 'Trench Coat', 'price': '₹3,799', 'category': 'Jackets', 'image': 'https://picsum.photos/200/300?random=55'},
  {'name': 'Quilted Vest Jacket', 'price': '₹2,199', 'category': 'Jackets', 'image': 'https://picsum.photos/200/300?random=56'},
  {'name': 'Military Style Field Jacket', 'price': '₹2,899', 'category': 'Jackets', 'image': 'https://picsum.photos/200/300?random=57'},
  {'name': 'Windbreaker Rain Jacket', 'price': '₹2,599', 'category': 'Jackets', 'image': 'https://picsum.photos/200/300?random=58'},
  {'name': 'Corduroy Overshirt', 'price': '₹2,299', 'category': 'Jackets', 'image': 'https://picsum.photos/200/300?random=59'},
  {'name': 'Wool Blend Peacoat', 'price': '₹3,999', 'category': 'Jackets', 'image': 'https://picsum.photos/200/300?random=60'},

  // Shoes (10 items)
  {'name': 'Leather Oxford Shoes', 'price': '₹2,999', 'category': 'Shoes', 'image': 'https://picsum.photos/200/300?random=61'},
  {'name': 'Running Sneakers', 'price': '₹1,799', 'category': 'Shoes', 'image': 'https://picsum.photos/200/300?random=62'},
  {'name': 'Canvas Slip-Ons', 'price': '₹999', 'category': 'Shoes', 'image': 'https://picsum.photos/200/300?random=63'},
  {'name': 'Hiking Boots', 'price': '₹2,499', 'category': 'Shoes', 'image': 'https://picsum.photos/200/300?random=64'},
  {'name': 'Chelsea Boots', 'price': '₹2,199', 'category': 'Shoes', 'image': 'https://picsum.photos/200/300?random=65'},
  {'name': 'Espadrilles', 'price': '₹1,299', 'category': 'Shoes', 'image': 'https://picsum.photos/200/300?random=66'},
  {'name': 'Basketball Shoes', 'price': '₹2,799', 'category': 'Shoes', 'image': 'https://picsum.photos/200/300?random=67'},
  {'name': 'Loafers', 'price': '₹1,899', 'category': 'Shoes', 'image': 'https://picsum.photos/200/300?random=68'},
  {'name': 'Sandals', 'price': '₹799', 'category': 'Shoes', 'image': 'https://picsum.photos/200/300?random=69'},
  {'name': 'Formal Derby Shoes', 'price': '₹2,399', 'category': 'Shoes', 'image': 'https://picsum.photos/200/300?random=70'},

  // Accessories (10 items)
  {'name': 'Leather Belt', 'price': '₹699', 'category': 'Accessories', 'image': 'https://picsum.photos/200/300?random=71'},
  {'name': 'Wool Beanie', 'price': '₹399', 'category': 'Accessories', 'image': 'https://picsum.photos/200/300?random=72'},
  {'name': 'Sunglasses', 'price': '₹1,199', 'category': 'Accessories', 'image': 'https://picsum.photos/200/300?random=73'},
  {'name': 'Silk Pocket Square', 'price': '₹299', 'category': 'Accessories', 'image': 'https://picsum.photos/200/300?random=74'},
  {'name': 'Leather Wallet', 'price': '₹899', 'category': 'Accessories', 'image': 'https://picsum.photos/200/300?random=75'},
  {'name': 'Cotton Bandana', 'price': '₹199', 'category': 'Accessories', 'image': 'https://picsum.photos/200/300?random=76'},
  {'name': 'Stainless Steel Watch', 'price': '₹2,999', 'category': 'Accessories', 'image': 'https://picsum.photos/200/300?random=77'},
  {'name': 'Canvas Tote Bag', 'price': '₹599', 'category': 'Accessories', 'image': 'https://picsum.photos/200/300?random=78'},
  {'name': 'Silver Cufflinks', 'price': '₹1,499', 'category': 'Accessories', 'image': 'https://picsum.photos/200/300?random=79'},
  {'name': 'Patterned Silk Tie', 'price': '₹799', 'category': 'Accessories', 'image': 'https://picsum.photos/200/300?random=80'},
];

  List<Map<String, dynamic>> get filteredProducts {
    final query = _searchController.text.toLowerCase();
    return products.where((product) {
      final matchesCategory = _selectedCategoryIndex == 0 || 
          product['category'] == categories[_selectedCategoryIndex];
      final matchesSearch = product['name'].toString().toLowerCase().contains(query);
      return matchesCategory && matchesSearch;
    }).toList();
  }

  void _toggleFavorite(Map<String, dynamic> product) {
    setState(() {
      _favorites.contains(product) 
          ? _favorites.remove(product) 
          : _favorites.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _buildFeaturedCategories()),
          SliverToBoxAdapter(child: _buildDealOfTheDay()),
          _buildStickyCategoryHeader(),
          _buildProductGrid(),
        ],
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey[900]!, Colors.grey[850]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
      ),
      title: Column(
        children: [
          Text("SNITCH",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.0,
                  )),
          Text('HASSLE-FREE 7DAY RETURNS',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white70,
                    letterSpacing: 1.2,
                  )),
        ],
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Badge(
            backgroundColor: Colors.amber,
            label: const Text('2', style: TextStyle(color: Colors.black)),
            child: const Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 28),
          ),
          onPressed: () {},
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: _buildSearchBar(),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: _searchController,
        onChanged: (value) => setState(() {}),
        decoration: InputDecoration(
          hintText: "Search 'sweater'",
          hintStyle: TextStyle(color: Colors.grey.shade400),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.search, color: Colors.white),
          ),
          suffixIcon: _searchController.text.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.clear, color: Colors.grey.shade600),
                  onPressed: () => setState(() => _searchController.clear()),
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }

  SliverPersistentHeader _buildStickyCategoryHeader() {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _StickyCategoryDelegate(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: AnimatedChoiceChip(
                label: categories[index],
                selected: _selectedCategoryIndex == index,
                onSelected: (selected) => setState(() => _selectedCategoryIndex = index),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturedCategories() {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          _buildFeaturedCategory('SHIRTS', 'https://picsum.photos/100/150?random=100'),
          _buildFeaturedCategory('T-SHIRTS', 'https://picsum.photos/100/150?random=101'),
          _buildFeaturedCategory('DENIMS', 'https://picsum.photos/100/150?random=102'),
          _buildFeaturedCategory('SWEATERS', 'https://picsum.photos/100/150?random=103'),
        ],
      ),
    );
  }

  Widget _buildFeaturedCategory(String title, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: CachedNetworkImageProvider(imageUrl),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDealOfTheDay() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [Color(0xFF2D2D2D), Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 12,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('DEAL OF THE DAY',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 12,
                          letterSpacing: 1.2)),
                  const SizedBox(height: 8),
                  const Text('Premium Overshirts',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Text('UPTO 50% OFF',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: 'https://picsum.photos/120/180?random=104',
                width: 120,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductGrid() {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.65,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) => ModernProductCard(
            product: filteredProducts[index],
            isFavorite: _favorites.contains(filteredProducts[index]),
            onFavoritePressed: () => _toggleFavorite(filteredProducts[index]),
          ),
          childCount: filteredProducts.length,
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: _selectedNavIndex,
        onTap: (index) => setState(() => _selectedNavIndex = index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class _StickyCategoryDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _StickyCategoryDelegate({required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }

  @override
  double get maxExtent => 56;

  @override
  double get minExtent => 56;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}

class AnimatedChoiceChip extends StatelessWidget {
  final String label;
  final bool selected;
  final ValueChanged<bool> onSelected;

  const AnimatedChoiceChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: selected ? Colors.black : Colors.grey.shade300,
          width: selected ? 2 : 1,
        ),
        color: selected ? Colors.black : Colors.white,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => onSelected(!selected),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              label,
              style: TextStyle(
                color: selected ? Colors.white : Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ModernProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  final bool isFavorite;
  final VoidCallback onFavoritePressed;

  const ModernProductCard({
    super.key,
    required this.product,
    required this.isFavorite,
    required this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    imageUrl: product['image'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    placeholder: (context, url) => Container(
                      color: Colors.grey.shade100,
                    ),
                    errorWidget: (context, url, error) => Container(
                      color: Colors.grey.shade100,
                      child: const Icon(Icons.error_outline),
                    ),
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 200),
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          key: ValueKey<bool>(isFavorite),
                          color: isFavorite ? Colors.red : Colors.black,
                          size: 20,
                        ),
                      ),
                      onPressed: onFavoritePressed,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(16)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.0),
                          Colors.black.withOpacity(0.1),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    height: 1.4,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  product['price'],
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
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