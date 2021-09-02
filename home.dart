import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('My Contacts'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
        ],

      ),
      body: Center(
        child: ListView(
          children: [
            ContactCard(name: 'name whatever',mail: 'm671@gmail.com',phone: '0156156156',boos:'boss',),
            ContactCard(name: 'name whatever',mail: 'fatimah@temp.com',phone: '0216515615',boos:'notboss',),
            ContactCard(name: 'name whatever',mail: 'm671@gmail.com',phone: '0216515615',boos:'boss',),
            ContactCard(name: 'name whatever',mail: 'fatimah@temp.com',phone: '0216515615',boos:'notboss',),
            ContactCard(name: 'name whatever',mail: 'm671@gmail.com',phone: '0216515615',boos:'boss',),
            ContactCard(name: 'name whatever',mail: 'fatimah@temp.com',phone: '0216515615',boos:'notboss',),
            ContactCard(name: 'name whatever',mail: 'm671@gmail.com',phone: '0216515615',boos:'boss',),
            ContactCard(name: 'name whatever',mail: 'fatimah@temp.com',phone: '0216515615',boos:'notboss',),
          ],
        ) ,
      ),
    );
  }
}

class ContactCard extends StatelessWidget {


  final String name,mail,phone ,boos;
  ContactCard({required this.name,required this.mail,required this.phone ,required this.boos});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 150.0,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.black,
          width: .5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage('https://cdn1.vectorstock.com/i/1000x1000/50/30/user-icon-male-person-symbol-profile-avatar-vector-20715030.jpg'),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: TextStyle(fontWeight: FontWeight.bold,),),
                Row(
                  children: [
                    Icon(Icons.mail,),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(mail),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.phone_solid,),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(phone),
                    ),

                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20.0),

                ),
                Row(
                  children: [

                  Icon(CupertinoIcons.suit_heart_fill,color: Colors.red,),
                  Icon(CupertinoIcons.suit_heart_fill,color: Colors.red,),
                  Icon(CupertinoIcons.suit_heart_fill,color: Colors.red,),


                    Icon(CupertinoIcons.tag_fill,color: Colors.black,),

                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(boos),
                    ),
                    Icon(CupertinoIcons.delete,color: Colors.black,size: 25,),


                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                ),

              ],
            ) ,
          ),
        ],
      ),

    );
  }
}

