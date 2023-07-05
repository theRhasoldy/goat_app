import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../common/config/theme.dart';
import '../../../feed/presentation/screens/home_screen.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFILE"),
        leading: IconButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => Home()));},
            icon:Icon(Icons.arrow_back_ios, color: Colors.black,) ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black,))
        ],
      ),

      body:Column(
        children: [
          Stack(
            children: [
              FittedBox(
                child:
                ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child:
                  Image.asset("assets/images/PROFILE.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130,top: 132),
                child: Container(
                  child:Text("AHMED MOHSEN",style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,fontSize: 17)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 145,top: 3),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                  NetworkImage("https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars-thumbnail.png"),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250,top: 30),
            child: Text("FULL NAME:",style: TextStyle(color: Theme.of(context).colorScheme.outline)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("AHMED MOHSEN PEW PEW",style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250,top: 30),
            child: Text("EMAIL:",style: TextStyle(color: Theme.of(context).colorScheme.outline)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("ahmedmohsen11@gmail.com",style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250,top: 30),
            child: Text("PASSWORD:",style: TextStyle(color: Theme.of(context).colorScheme.outline)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("*********",style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250,top: 30),
            child: Text("SCORE:",style: TextStyle(color: Theme.of(context).colorScheme.outline)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("77",style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250,top: 30),
            child: Text("PREFERRED TEAM:",style: TextStyle(color: Theme.of(context).colorScheme.outline)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("Arsenal",style: TextStyle(color: Theme.of(context).colorScheme.primary)),
          ),
        ],
      ) ,
    );
  }
}