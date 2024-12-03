import 'package:flutter/material.dart';


class AppbarCus extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppbarCus({super.key,this.title = ''});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/toolbar.png', // Replace with your image URL
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          // Titles
           Container(padding: const EdgeInsets.all(8),
            alignment: Alignment.topCenter,
            child:  Text(
              'Explorer',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
           Container(padding: const EdgeInsets.all(8),
            alignment: Alignment.bottomLeft,
            child:  Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent, // Transparent AppBar
      elevation: 0, // No shadow
    )
    ;
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize {
    return const Size.fromHeight(200);
  }
}
