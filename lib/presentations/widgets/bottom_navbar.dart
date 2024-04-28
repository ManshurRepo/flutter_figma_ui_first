// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';

// // class MyBottomNavbar extends StatefulWidget {
// //   const MyBottomNavbar({Key? key}) : super(key: key);

// //   @override
// //   State<MyBottomNavbar> createState() => _MyBottomNavbarState();
// // }

// // class _MyBottomNavbarState extends State<MyBottomNavbar> {
// //   int currentIndex = 0;

// //   void onTap(int index) {
// //     setState(() {
// //       currentIndex = index;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return BottomNavigationBar(
// //       onTap: onTap,
// //       currentIndex: currentIndex,
// //       showSelectedLabels: false,
// //       showUnselectedLabels: false,
// //       elevation: 0,
// //       items: [
// //         BottomNavigationBarItem(
// //           icon: ImageIcon(
// //             AssetImage('assets/icons/home.png'),
// //             color: currentIndex == 0 ? Color(0xffEC5F5F) : Color(0xffC7C9D9),
// //           ),
// //           label: 'Home',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: ImageIcon(
// //             AssetImage('assets/icons/discover.png'),
// //             color: currentIndex == 1 ? Color(0xffEC5F5F) : Color(0xffC7C9D9),
// //           ),
// //           label: 'Discover',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: ImageIcon(
// //             AssetImage('assets/icons/message.png'),
// //             color: currentIndex == 2 ? Color(0xffEC5F5F) : Color(0xffC7C9D9),
// //           ),
// //           label: 'Message',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: ImageIcon(
// //             AssetImage('assets/icons/profile.png'),
// //             color: currentIndex == 3 ? Color(0xffEC5F5F) : Color(0xffC7C9D9),
// //           ),
// //           label: 'Profile',
// //         ),
// //       ],
// //     );
// //   }
// // // }
// import 'package:flutter/material.dart';

// class MyBottomNavbar extends StatefulWidget {
//   const MyBottomNavbar({Key? key}) : super(key: key);

//   @override
//   State<MyBottomNavbar> createState() => _MyBottomNavbarState();
// }

// class _MyBottomNavbarState extends State<MyBottomNavbar> {
//   int currentIndex = 0;

//   void onTap(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       onTap: onTap,
//       currentIndex: currentIndex,
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//       elevation: 0,
//       items: [
//         BottomNavigationBarItem(
//           icon: ImageIcon(
//             AssetImage('assets/icons/home.png'),
//             color: currentIndex == 0 ? Color(0xffEC5F5F) : Color(0xffC7C9D9),
//           ),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: ImageIcon(
//             AssetImage('assets/icons/discover.png'),
//             color: currentIndex == 1 ? Color(0xffEC5F5F) : Color(0xffC7C9D9),
//           ),
//           label: 'Discover',
//         ),
//         BottomNavigationBarItem(
//           icon: ImageIcon(
//             AssetImage('assets/icons/message.png'),
//             color: currentIndex == 2 ? Color(0xffEC5F5F) : Color(0xffC7C9D9),
//           ),
//           label: 'Message',
//         ),
//         BottomNavigationBarItem(
//           icon: ImageIcon(
//             AssetImage('assets/icons/profile.png'),
//             color: currentIndex == 3 ? Color(0xffEC5F5F) : Color(0xffC7C9D9),
//           ),
//           label: 'Profile',
//         ),
//       ],

//     );
//   }
// }
import 'package:flutter/material.dart';

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      items: [
        _buildNavBarItem(0, 'Home', 'assets/icons/home.png'),
        _buildNavBarItem(1, 'Discover', 'assets/icons/discover.png'),
        _buildNavBarItem(2, 'Message', 'assets/icons/message.png'),
        _buildNavBarItem(3, 'Profile', 'assets/icons/profile.png'),
      ],
    );
  }

  BottomNavigationBarItem _buildNavBarItem(
      int index, String label, String iconPath) {
    return BottomNavigationBarItem(
      icon: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ImageIcon(
              AssetImage(iconPath),
              color:
                  currentIndex == index ? Color(0xffEC5F5F) : Color(0xffC7C9D9),
            ),
          ),
          if (currentIndex == index)
            Positioned(
              bottom: 1,
              left: 0,
              right: 0,
              child: Container(
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffEC5F5F),
                ),
              ),
            ),
        ],
      ),
      label: label,
    );
  }
}
