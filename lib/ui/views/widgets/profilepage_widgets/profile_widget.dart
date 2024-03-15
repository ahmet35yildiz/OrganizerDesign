import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    var screenHeigth = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(height: screenHeigth / 3, width: screenWidth,
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: screenWidth / 4.5,
            backgroundImage: const AssetImage("pictures/person1.png"),
          ),
          Text("Mark Ronson",style: TextStyle(fontSize: screenHeigth / 40,fontWeight: FontWeight.bold),),
          SizedBox(width: screenWidth / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.g_mobiledata,size: screenWidth / 7,color: Colors.grey,),),
                IconButton(onPressed: (){}, icon: Icon(Icons.add_box_rounded,size: screenWidth / 7,color: Colors.grey,),),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_rounded,size: screenWidth / 8,color: Colors.redAccent,),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
