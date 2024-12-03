import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatelessWidget {
   Login({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomLeft,
        children: [
          Image.asset( 'assets/images/Frame1.png'),
          Container(alignment: Alignment.centerLeft,width: 200,
              child: Text("Explore  The  Universe",style: Theme.of(context).textTheme.headlineLarge,)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton( onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>   Home()));
            }, child: const Row(
              children: [
                Text("Explore"),
                Spacer(),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            )),
          )
        ],

      ),
    );
  }
}
//style: Theme.of(context).textTheme.headlineLarge