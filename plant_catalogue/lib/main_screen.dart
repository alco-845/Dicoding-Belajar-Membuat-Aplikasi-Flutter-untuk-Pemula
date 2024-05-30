import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_catalogue/detail_screen.dart';
import 'package:plant_catalogue/model/plant_catalogue.dart';

class MainScreen extends StatelessWidget {
  final String name;

  MainScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 750 && constraints.maxWidth >= 550) {
            return PlantGrid(gridCount: 4, name: name);
          } else if (constraints.maxWidth <= 900 &&
              constraints.maxWidth >= 751) {
            return PlantGrid(gridCount: 6, name: name);
          } else if (constraints.maxWidth <= 1200 &&
              constraints.maxWidth >= 901) {
            return PlantGrid(gridCount: 7, name: name);
          } else if (constraints.maxWidth >= 1201) {
            return PlantGrid(gridCount: 8, name: name);
          } else {
            return PlantGrid(gridCount: 2, name: name);
          }
        },
      ),
    );
  }
}

class PlantGrid extends StatelessWidget {
  final int gridCount;
  final String name;

  PlantGrid({required this.gridCount, required this.name});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, $name",
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 2.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.green,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 20 + 30.0),
                  child: Text(
                    "Suggestion for you",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 20 + 60.0),
                  height: 800,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.count(
                    crossAxisCount: gridCount,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    shrinkWrap: true,
                    children: plantCatalogue.map((plant) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailScreen(plant: plant);
                            }));
                          },
                          child: Card(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Flexible(
                                child: Image.asset(
                                  plant.image,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  plant.name,
                                  style: GoogleFonts.oxygenMono(),
                                ),
                              )
                            ],
                          )));
                    }).toList(),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
