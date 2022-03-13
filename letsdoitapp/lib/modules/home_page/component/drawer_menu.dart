import 'package:LetsDoIt/models/color.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDrawerState();
}

class _MyDrawerState extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: colors,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 120.0,
                    height: 120.0,
                    decoration:  BoxDecoration(
                      color: colors,
                      image:  DecorationImage(
                        image:  NetworkImage('https://pbs.twimg.com/profile_images/1481026646501212160/iViJ4Vwr_400x400.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:  BorderRadius.all( Radius.circular(90)),
                      border:  Border.all(
                        color: homeColor,
                        width: 4.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: colors,
            ),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profil Settings'),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),

          ExpansionTile(
            leading: Icon(Icons.people_alt),
            title: Text('Users'),
            trailing: Icon(Icons.arrow_drop_down),
            children: <Widget>[
              ListTile(
                title: Text('User List'),
                onTap: () {
                  Navigator.pushNamed(context, "/bizkimiz");
                },
              ),
              ListTile(
                title: Text('User Requests'),
                onTap: () {
                  Navigator.pushNamed(context, "/tarihcemiz");
                },
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.note),
            title: Text('To Do List'),
            onTap: () {
              Navigator.pushNamed(context, "/kurumsal");
            },
          ),

          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Contact Us'),
            onTap: () {
              Navigator.pushNamed(context, "/hizmetler");
            },
          ),

          ListTile(
            leading: Icon(Icons.bug_report),
            title: Text('Complaints'),
            onTap: () {
              Navigator.pushNamed(context, "/galeri");
            },
          ),

          ExpansionTile(
            leading: Icon(Icons.person),
            title: Text('Your Friends'),
            trailing: Icon(Icons.arrow_drop_down),
            children: <Widget>[
              ListTile(
                title: Text('Furkan BEKTAS'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/bizkimiz");
                },
              ),
              ListTile(
                title: Text('Sercan BEKTAS'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/tarihcemiz");
                },
              ),
            ],
          ),


        ],
      ),
    );
  }
}