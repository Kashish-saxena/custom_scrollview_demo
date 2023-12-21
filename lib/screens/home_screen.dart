// import 'package:custom_scroll_view/models/chats.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DefaultTabController(
//         initialIndex: 0,
//         length: 3,
//         child: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               floating: true,
//               snap: true,
//               toolbarHeight: 50,
//               actions: const [
//                 Icon(
//                   Icons.camera_alt_outlined,
//                   color: Colors.white,
//                 ),
//                 SizedBox(width: 20),
//                 Icon(
//                   Icons.search_outlined,
//                   color: Colors.white,
//                 ),
//                 SizedBox(width: 20),
//                 Icon(
//                   Icons.more_vert_sharp,
//                   color: Colors.white,
//                 )
//               ],
//               flexibleSpace: FlexibleSpaceBar(
//                 titlePadding:
//                     EdgeInsets.symmetric(vertical: 50, horizontal: 20),
//                 title: const Text(
//                   "WatsApp",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 background: Image.network(
//                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKe0rjyjxmScs961Z28Pl0NcaiLq176Ileplz_3siFVBP2mAvw9uwbFTE7HD5GhaQKByo&usqp=CAU",
//                   fit: BoxFit.fitWidth,
//                 ),
//               ),
//               bottom: const TabBar(tabs: [
//                 Tab(
//                     child:
//                         Text("Chats", style: TextStyle(color: Colors.white))),
//                 Tab(
//                     child:
//                         Text("Updates", style: TextStyle(color: Colors.white))),
//                 Tab(
//                     child:
//                         Text("Calls", style: TextStyle(color: Colors.white))),
//               ]),
//               pinned: true,
//               backgroundColor: Color(0xFF075E54),
//             ),
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                 (context, index) {
//                   Chats chats = chatsData[index];
//                   return ListTile(
//                     tileColor: const Color(0xFF075E60),
//                     leading: Container(
//                       clipBehavior: Clip.antiAlias,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: Image.network(
//                         "https://e7.pngegg.com/pngimages/178/595/png-clipart-user-profile-computer-icons-login-user-avatars-monochrome-black.png",
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     title: Text(
//                       "${chats.name}",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     subtitle: Text(
//                       "${chats.message}",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   );
//                 },
//                 childCount: chatsData.length,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
