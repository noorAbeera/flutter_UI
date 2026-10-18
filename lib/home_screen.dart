import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  static const String id='home_screen';
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
            centerTitle: false,
            title: Center(child: Text('Whatsapp')),
            backgroundColor: Colors.teal,
            bottom: TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.camera_alt),
                  ) ,
                  Tab(
                    child: Text('Chats'),
                  ),
                  Tab(
                    child: Text('Status'),
                  ),
                  Tab(
                    child: Text('Calls'),
                  )
                ]
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 15,),
              PopupMenuButton(
                  itemBuilder: (context)=>[
                    PopupMenuItem(
                      value: 1,
                        child: Text('New Group')
                    ),
                    PopupMenuItem(
                        value: 2,
                        child: Text('Settings')
                    ),
                    PopupMenuItem(
                        value: 3,
                        child: Text('Logout')
                    ),
                  ]
              )
            ],
          ),
          body: TabBarView(
              children:[
                Text('Camera'),
                ListView.builder(
                  itemCount: 30,
                    itemBuilder: (context , index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://media.istockphoto.com/id/623368750/photo/sacred-birma-cat-in-interior.jpg?s=1024x1024&w=is&k=20&c=TObTXkmdKZnozCNypyxyqEZ4uMFHUN07EsU4HQ-7zYc='),
                      ),
                      title: Text('Laura'),
                      subtitle: Text('Hi! How r u?'),
                      trailing: Text('7:22PM'),
                    );
                    }
                ),
                //Text('Chats'),
                //Text('Status'),
                ListView.builder(
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                              width: 4
                            ),
                            shape: BoxShape.circle,


                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://media.istockphoto.com/id/623368750/photo/sacred-birma-cat-in-interior.jpg?s=1024x1024&w=is&k=20&c=TObTXkmdKZnozCNypyxyqEZ4uMFHUN07EsU4HQ-7zYc='),
                          ),
                        ),
                        title: Text('Laura'),
                        subtitle: Text('20 min ago'),

                      );
                    }
                ),
                //Calls
                ListView.builder(
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://media.istockphoto.com/id/623368750/photo/sacred-birma-cat-in-interior.jpg?s=1024x1024&w=is&k=20&c=TObTXkmdKZnozCNypyxyqEZ4uMFHUN07EsU4HQ-7zYc='),
                        ),
                        title: Text('Laura'),
                        subtitle: Text(index /2==0? 'You missed the call': 'Call time: 12:30'),
                        trailing: Icon(index /2==0? Icons.phone: Icons.video_call),
                      );
                    }
                )
              ]
          ),
        ),
    );
  }
}
