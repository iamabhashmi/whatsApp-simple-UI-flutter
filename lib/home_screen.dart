import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            bottom: const TabBar(tabs: [
              Tab(child: Icon(Icons.people_alt_rounded)),
              Tab(child: Text("Chat")),
              Tab(child: Text("Status")),
              Tab(child: Text("Calls"))
            ]),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.camera),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                        const PopupMenuItem(value: 1, child: Text("New Chat")),
                        const PopupMenuItem(value: 2, child: Text("New Group")),
                        const PopupMenuItem(value: 1, child: Text("Broadcast")),
                        const PopupMenuItem(
                            value: 1, child: Text("Link Device")),
                        const PopupMenuItem(value: 1, child: Text("Settings")),
                        const PopupMenuItem(value: 1, child: Text("Logout"))
                      ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(children: [
            // Text("Community"),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.people_alt_rounded,
                  color: Colors.teal,
                  size: 100,
                ),
                Text(
                  "Create a Community",
                )
              ],
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC0J-GuDMnGDBpDtW99eNxudr0YOrHwkoGPw&usqp=CAU'),
                    ),
                    title: Text("Emma Watson"),
                    subtitle: Text("where have you been?"),
                    trailing: Text("3:25 PM"),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://hamariweb.com/profiles/images/profile/2212-177-147.jpg'),
                      ),
                      title: const Text("Babar Azam"),
                      subtitle: const Text("25 minutes ago"),
                      trailing: PopupMenuButton(
                          icon: const Icon(Icons.more_horiz),
                          itemBuilder: (
                            context,
                          ) =>
                              [
                                const PopupMenuItem(
                                    value: 1, child: Text("Mute")),
                                const PopupMenuItem(
                                    value: 2, child: Text("Settings"))
                              ]));
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i0.wp.com/bharatflux.com/wp-content/uploads/2020/04/IMG-20200404-WA0002.jpg?resize=509%2C509&ssl=1'),
                    ),
                    title: const Text("Nancy Momoland"),
                    subtitle: Text(index / 2 == 0
                        ? "you missed a voice call"
                        : "you missed a video call"),
                    trailing: Icon(index / 2 == 0
                        ? Icons.call_missed
                        : Icons.missed_video_call),
                  );
                }),
          ]),
        ));
  }
}
