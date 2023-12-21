import 'package:custom_scroll_view/models/chats.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required String title});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight:400,
              floating: true,
              snap: true,
              toolbarHeight: 50,
              actions: const [
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.more_vert_sharp,
                  color: Colors.white,
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                titlePadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                title: const Text(
                  "WhatsApp",
                  style: TextStyle(color: Colors.white),
                ),
                background: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKe0rjyjxmScs961Z28Pl0NcaiLq176Ileplz_3siFVBP2mAvw9uwbFTE7HD5GhaQKByo&usqp=CAU",
                  fit: BoxFit.fitWidth,
                ),
              ),
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(
                    Icons.groups_2_rounded,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text("Chats", style: TextStyle(color: Colors.white)),
                ),
                Tab(
                    child:
                        Text("Updates", style: TextStyle(color: Colors.white))),
                Tab(
                    child:
                        Text("Calls", style: TextStyle(color: Colors.white))),
              ]),
              pinned: true,
              backgroundColor: const Color(0xFF075E54),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  Chats chats = chatsData[index];
                  return ListTile(
                    tileColor: Color.fromARGB(255, 3, 48, 54),
                    leading: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.network(
                        "https://e7.pngegg.com/pngimages/178/595/png-clipart-user-profile-computer-icons-login-user-avatars-monochrome-black.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      chats.name ?? "",
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      chats.message ?? "",
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                },
                childCount: chatsData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
