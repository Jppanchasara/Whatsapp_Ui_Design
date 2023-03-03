import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
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
            title: const Text('WhatsApp'),
            bottom: const TabBar(tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Call')),
            ]),
            actions: [
              const Icon(Icons.camera_alt),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon:const Icon(Icons.more_horiz_outlined),
                itemBuilder: (context)=>[
                  const PopupMenuItem(
                    value: 1,
                    child: Text('New Group')
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text('New brodcast')
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text('Linked devices')
                  ),
                  const PopupMenuItem(
                    value: 5,
                    child: Text('Starred messages')
                  ),
                  const PopupMenuItem(
                    value: 6,
                    child: Text('Payments')
                  ),
                  const PopupMenuItem(
                    value: 7,
                    child: Text('Settings')
                  ),

              ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body:  TabBarView(children: [
            Text('camra'),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index){
                return const ListTile(
                      leading:CircleAvatar(
                      
                      backgroundColor: Colors.black,
                      //child: Icon(Icons.person),
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/12462437/pexels-photo-12462437.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    
                                  ),
                      
                      title: Text('Jayesh Panchasara'),
                      subtitle: Text('Jay Shree Krishna'),
                      trailing: Text('3:51PM'),
                );
              
              }
            ),
            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                if(index==3)
                {return  Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('New Updates'),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 3
                            )
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                        ),
                        title: Text(index /3 ==5 ?'Hardik Panchasra ':'Pradip panchasara'),
                        subtitle: Text(index /3 ==5 ?'31 min ago':'45 min ago'),
                      ),
                    ],
                  ),
                );

                }
                else if(index >=50){
                  return  Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('New Updates'),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 3
                            )
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                        ),
                        title: Text(index /3 ==5 ?'Hardik Panchasra ':'Pradip panchasara'),
                        subtitle: Text(index /3 ==5 ?'31 min ago':'45 min ago'),
                      ),
                    ],
                  ),
                );

                }
                else{
                  return  ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green,
                        width: 3
                      )
                    ),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                  ),
                  title: Text(index /3 ==5 ?'Hardik Panchasra ':'Pradip panchasara'),
                  subtitle: Text(index /3 ==5 ?'31 min ago':'45 min ago'),
                );
                }
                
              }),
            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return  ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text(index /2 ==0 ? 'Aarti Panchasara': 'panchsara dhara'),
                  subtitle: Text(index /2 == 0 ? 'You missed audio call':'you have missed video call'),
                  trailing: Icon(index /2 == 0 ? Icons.phone : Icons.video_call),
                );
                
              }
            ),
            
          ]),
        ));
  }
}
