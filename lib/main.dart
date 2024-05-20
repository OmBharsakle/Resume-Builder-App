import 'package:flutter/material.dart';

void main() {
  runApp(const Resume_Builder_App());
}

class Resume_Builder_App extends StatefulWidget {
  const Resume_Builder_App({super.key});

  @override
  State<Resume_Builder_App> createState() => _Resume_Builder_AppState();
}

class _Resume_Builder_AppState extends State<Resume_Builder_App> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF000000).withOpacity(1),
                      offset: Offset(0, 0),
                      blurRadius: 13,
                      spreadRadius: -3,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                      ),
                      title: Text('Omg Creation',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),),
                      trailing: Icon(Icons.edit_note_rounded,size: 35,),
                    ),
                    Divider(),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Email'),
                            Text('omgcreation@gmail.com'),
                          ],
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Email'),
                            Text('omgcreation@gmail.com'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                alignment: Alignment.center,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                  ),
                  title: Text('Omg Creation',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),),
                  trailing: Icon(Icons.edit_note_rounded,size: 35,),
                ),
              ),
              SizedBox(height: 10,),
              Wrap(
                children: [
                  ...List.generate(12, (index) => Container(
                    margin: EdgeInsets.all(5),
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF000000).withOpacity(1),
                          offset: Offset(0, 0),
                          blurRadius: 13,
                          spreadRadius: -3,
                        ),
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {

                          },
                          icon: Icon(Icons.cast_for_education,size: 35,),
                        ),
                        Text('Email'),
                      ],
                    ),
                  ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
