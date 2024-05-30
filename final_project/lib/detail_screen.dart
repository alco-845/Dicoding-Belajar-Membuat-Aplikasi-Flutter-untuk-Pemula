import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_project/model/food_recipe.dart';

class DetailScreen extends StatelessWidget {
  final FoodRecipe food;

  DetailScreen({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Recipe'),
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[CopyButton(food: food)],
      ),
      body: DetailRecipe(food),
    );
  }
}

class DetailRecipe extends StatelessWidget {
  final FoodRecipe food;

  DetailRecipe(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white),
      Positioned(
          bottom: MediaQuery.of(context).size.height / 2 - 30.0,
          child: Container(
              height: MediaQuery.of(context).size.height / 2 - 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(food.image), fit: BoxFit.fill),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
                color: Colors.white,
              ))),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 25.0,
        left: 15.0,
        right: 15.0,
        child: Container(
          height: (MediaQuery.of(context).size.height / 2) - 70.0,
          width: MediaQuery.of(context).size.width,
          child: ListView(children: [
            Text(
              food.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Container(
              height: 2.0,
              width: 1,
              color: Colors.orange,
            ),
            SizedBox(height: 15.0),
            Text(
              "Ingredients",
              style: GoogleFonts.nunito(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF726B68)),
            ),
            SizedBox(height: 2.0),
            Text(
              listExtractor("ingredients", food.ingredients),
              style: TextStyle(fontSize: 14.0, color: Colors.black),
            ),
            Text(
              "How to make it",
              style: GoogleFonts.nunito(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF726B68)),
            ),
            SizedBox(height: 2.0),
            Text(
              listExtractor("steps", food.steps),
              style: TextStyle(fontSize: 14.0, color: Colors.black),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                  border: Border.all(color: Colors.black26, width: 0.5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Was this recipe helpfull?"),
                  LikeButton(food: food)
                ],
              ),
            )
          ]),
        ),
      )
    ]));
  }

  listExtractor(String tipe, List food) {
    var item = "";
    for (var i = 0; i < food.length; i++) {
      var symbol = "";
      if (tipe == "steps") {
        symbol = (i + 1).toString() + ". ";
        item += symbol + food[i] + "\n\n";
      } else {
        symbol = "- ";
        item += symbol + food[i] + "\n";
      }
    }
    return item;
  }
}

class CopyButton extends StatelessWidget {
  final FoodRecipe food;

  CopyButton({required this.food});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.copy,
      ),
      onPressed: () {
        Clipboard.setData(ClipboardData(
            text: food.name +
                "\n\nIngredients :\n" +
                DetailRecipe(food)
                    .listExtractor("ingredients", food.ingredients) +
                "\n\Steps :\n" +
                DetailRecipe(food).listExtractor("steps", food.steps)));
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Recipe copied to clipboard")));
      },
    );
  }
}

class LikeButton extends StatefulWidget {
  final FoodRecipe food;

  const LikeButton({required this.food});

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        IconButton(
          icon: Icon(
            widget.food.likeStatus == "liked"
                ? Icons.thumb_up
                : Icons.thumb_up_alt_outlined,
            color: Colors.blue,
          ),
          onPressed: () {
            setState(() {
              if (widget.food.likeStatus == "liked") {
                widget.food.likeStatus = "not liked";
              } else {
                widget.food.likeStatus = "liked";
              }
            });
          },
        ),
        SizedBox(height: 15.0),
        IconButton(
          icon: Icon(
            widget.food.likeStatus == "disliked"
                ? Icons.thumb_down
                : Icons.thumb_down_alt_outlined,
            color: Colors.blue,
          ),
          onPressed: () {
            setState(() {
              if (widget.food.likeStatus == "disliked") {
                widget.food.likeStatus = "not liked";
              } else {
                widget.food.likeStatus = "disliked";
              }
            });
          },
        ),
      ]),
    );
  }
}
