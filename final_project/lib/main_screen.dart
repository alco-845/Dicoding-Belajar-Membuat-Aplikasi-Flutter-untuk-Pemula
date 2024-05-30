import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_project/detail_screen.dart';
import 'package:final_project/model/food_recipe.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 750 && constraints.maxWidth >= 550) {
            return FoodGrid(gridCount: 4);
          } else if (constraints.maxWidth <= 900 &&
              constraints.maxWidth >= 751) {
            return FoodGrid(gridCount: 6);
          } else if (constraints.maxWidth <= 1200 &&
              constraints.maxWidth >= 901) {
            return FoodGrid(gridCount: 7);
          } else if (constraints.maxWidth >= 1201) {
            return FoodGrid(gridCount: 8);
          } else {
            return FoodGrid(gridCount: 2);
          }
        },
      ),
    );
  }
}

class FoodGrid extends StatelessWidget {
  final int gridCount;

  FoodGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Stack(
              children: [
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Food Recipes",
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 2.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.orange,
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      "Most viewed",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                )),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height / 8 + 20.0),
                  height: MediaQuery.of(context).size.height / 10,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      // favExtractor(foodRecipe),
                      _foodCard(foodRecipe[0], context),
                      SizedBox(width: 10.0),
                      _foodCard(foodRecipe[7], context),
                      SizedBox(width: 10.0),
                      _foodCard(foodRecipe[10], context),
                      SizedBox(width: 10.0),
                      _foodCard(foodRecipe[13], context),
                      SizedBox(width: 10.0),
                      _foodCard(foodRecipe[15], context),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 4 + 30.0),
                  child: Text(
                    "More recipes",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 4 + 60.0),
                  height: 800,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.count(
                    crossAxisCount: gridCount,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    shrinkWrap: true,
                    children: foodRecipe.map((food) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailScreen(food: food);
                            }));
                          },
                          child: Card(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Flexible(
                                child: Image.asset(
                                  food.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, bottom: 8.0),
                                child: Text(
                                  food.name,
                                  style: GoogleFonts.quicksand(),
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

  Widget _foodCard(item, context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(food: item);
        }));
      },
      child: Container(
        height: 135.0,
        width: 240.0,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 2,
              )
            ]),
        child: Row(
          children: <Widget>[
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                        image: AssetImage(item.image), fit: BoxFit.fill)),
                height: 125.0,
                width: 90.0,
              ),
            ),
            SizedBox(width: 20.0),
            Text(
              item.name,
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(),
            ),
          ],
        ),
      ),
    );
  }
}
