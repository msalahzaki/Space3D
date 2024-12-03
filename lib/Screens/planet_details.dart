import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space/Screens/component/appbar_cus.dart';
import 'package:space/model/planet.dart';


class PlanetDetails extends StatefulWidget {
  Planet planet;
  PlanetDetails(this.planet, {super.key});

  @override
  State<PlanetDetails> createState() => _PlanetDetailsState();
}

class _PlanetDetailsState extends State<PlanetDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCus(
        title: widget.planet.title,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 300,
          child:Flutter3DViewer(src: 'assets/3DModels/${widget.planet.model}')
          //Image.asset('assets/images/${widget.planet.image}'),
              ),
              Text(
                "About",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(widget.planet.about,
                  style: Theme.of(context).textTheme.bodyLarge),
              Text(
                "Distance from Sun (km) : ${widget.planet.sunDistance} ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Length of Day (hours) :  ${widget.planet.dayLength}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Orbital Period (Earth years) : ${widget.planet.orbitalPeriod}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Radius (km) : ${widget.planet.radius}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Mass (kg) : ${widget.planet.mass}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Gravity (m/s²) ${widget.planet.gravity}: ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Surface Area (km²) :${widget.planet.surfaceArea} ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
