import 'package:flutter/material.dart';

// class MySlider extends StatefulWidget {
//   const MySlider({super.key});

//   @override
//   _MySliderState createState() => _MySliderState();
// }

// class _MySliderState extends State<MySlider> {
//   final PageController _controller = PageController();
//   int _currentPage = 0;

//   @override
//   void initState() {
//     super.initState();
//     _controller.addListener(() {
//       setState(() {
//         _currentPage = _controller.page!.round();
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         PageView.builder(
//           controller: _controller,
//           scrollDirection: Axis.horizontal,
//           itemCount: 3,
//           itemBuilder: (context, index) {
//             return Container(
//               margin: const EdgeInsets.symmetric(horizontal: 5),
//               width: 200,
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Center(
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Image.asset(
//                     "assets/images/sanaozel.png", // Resmin yerel yolunu belirtin
//                     width:
//                         double.infinity, // Container'ın tamamını kaplaması için
//                     height:
//                         double.infinity, // Container'ın tamamını kaplaması için
//                     fit: BoxFit.cover, // Resmin boyutunu ayarlama şekli
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//         Positioned(
//           bottom: 10,
//           left: 0,
//           right: 0,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               3,
//               (index) => Padding(
//                 padding: const EdgeInsets.all(3),
//                 child: Container(
//                   width: index == _currentPage ? 10 : 5,
//                   height: 5,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: index == _currentPage ? Colors.white24 : Colors.grey,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      title: const Text(
        "PAZARYERİ",
        style: TextStyle(color: Color(0xFFF2BC8D), fontSize: 24),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Color(0xFFF2BC8D),
              size: 36,
            ),
            onPressed: () {
              // Bildirimler işlevini buraya ekle
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor:
            const Color(0xFFF2BC8D), // Navigasyon çubuğunun arka plan rengi
      ),
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoriler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Sepet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
        ],
        selectedItemColor: const Color(0xFFBF4F36),
        unselectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(color: Color(0xFFBF4F36)),
      ),
    );
  }
}
