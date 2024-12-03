import 'package:flutter/material.dart';
import 'package:space/Screens/component/appbar_cus.dart';
import 'package:space/Screens/planet_details.dart';
import 'package:space/model/planet.dart';
import 'package:space/model/planets_data.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Planet> planets = getData();
  int index = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarCus(
        title: "Which Planet \n would you like to Explorer ?",
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onHorizontalDragEnd: (details) {
                    // Check the direction of the horizontal drag
                    if (details.primaryVelocity! > 0) {
                      back();
                    } else if (details.primaryVelocity! < 0) {
                      // Swiping from right to left
                      next();
                    }
                  },
                  child:
                  Image.asset("assets/images/${planets[index].image}")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      back();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                Text(
                  planets[index].planetName,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                IconButton(
                    onPressed: () {
                      next();
                    },
                    icon: const Icon(Icons.arrow_forward_ios_outlined)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PlanetDetails(planets[index]),
                  ));
                },
                child: Row(
                  children: [
                    Text("  Explorer    ${planets[index].planetName}"),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_outlined)
                  ],
                )),
          )
        ],
      ),
    );
  }

  void next() {
    index == planets.length - 1 ? index = 0 : index++;
    setState(() {});
  }

  void back() {
    index == 0 ? index = planets.length - 1 : index--;
    setState(() {});
  }
}
