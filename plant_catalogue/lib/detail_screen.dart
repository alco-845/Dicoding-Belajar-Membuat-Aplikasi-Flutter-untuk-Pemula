import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_catalogue/model/plant_catalogue.dart';

class DetailScreen extends StatelessWidget {
  final PlantCatalogue plant;

  DetailScreen({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Detail Plant',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        actions: <Widget>[CopyButton(plant: plant)],
      ),
      body: DetailPlant(plant),
    );
  }
}

class DetailPlant extends StatelessWidget {
  final PlantCatalogue plant;

  const DetailPlant(this.plant);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FavoriteButton(plant: plant),
        body: Stack(children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white),
          Container(
              height: MediaQuery.of(context).size.height / 2 - 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(plant.image), fit: BoxFit.fill),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                color: Colors.white,
              )),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 25.0,
            left: 15.0,
            right: 15.0,
            child: SizedBox(
              height: (MediaQuery.of(context).size.height / 2) - 70.0,
              width: MediaQuery.of(context).size.width,
              child: ListView(children: [
                Text(
                  plant.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5.0),
                Container(
                  height: 2.0,
                  width: 1,
                  color: Colors.green,
                ),
                const SizedBox(height: 15.0),
                Text(
                  "Description",
                  style: GoogleFonts.nunito(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF726B68)),
                ),
                const SizedBox(height: 2.0),
                Text(
                  plant.description,
                  style: const TextStyle(fontSize: 14.0, color: Colors.black),
                ),
                const SizedBox(height: 15.0),
                Text(
                  "Treatment Suggestions",
                  style: GoogleFonts.nunito(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF726B68)),
                ),
                const SizedBox(height: 2.0),
                Text(
                  listExtractor(
                      "Treatment Suggestions", plant.treatmentSuggestion),
                  style: const TextStyle(fontSize: 14.0, color: Colors.black),
                ),
                Container(
                  padding: const EdgeInsetsDirectional.all(15.0),
                  margin: const EdgeInsets.only(bottom: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                      border: Border.all(color: Colors.black26, width: 0.5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Was this information helpful?"),
                      LikeButton(plant: plant)
                    ],
                  ),
                )
              ]),
            ),
          )
        ]));
  }

  listExtractor(String tipe, List plant) {
    var item = "";
    for (var i = 0; i < plant.length; i++) {
      var symbol = "";
      symbol = "${(i + 1).toString()}. ";
      item += "${symbol + plant[i]}\n";
    }
    return item;
  }
}

class CopyButton extends StatelessWidget {
  final PlantCatalogue plant;

  const CopyButton({required this.plant});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.copy,
        color: Colors.white,
      ),
      onPressed: () {
        Clipboard.setData(ClipboardData(text: """${plant.name}
Description : \n${plant.description}
Treatment Suggestions : \n${DetailPlant(plant).listExtractor("steps", plant.treatmentSuggestion)}"""));
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Plant copied to clipboard")));
      },
    );
  }
}

class LikeButton extends StatefulWidget {
  final PlantCatalogue plant;

  const LikeButton({required this.plant});

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        IconButton(
          icon: Icon(
            widget.plant.likeStatus == "liked"
                ? Icons.thumb_up
                : Icons.thumb_up_alt_outlined,
            color: Colors.blue,
          ),
          onPressed: () {
            setState(() {
              if (widget.plant.likeStatus == "liked") {
                widget.plant.likeStatus = "not liked";
              } else {
                widget.plant.likeStatus = "liked";
              }
            });
          },
        ),
        SizedBox(height: 15.0),
        IconButton(
          icon: Icon(
            widget.plant.likeStatus == "disliked"
                ? Icons.thumb_down
                : Icons.thumb_down_alt_outlined,
            color: Colors.blue,
          ),
          onPressed: () {
            setState(() {
              if (widget.plant.likeStatus == "disliked") {
                widget.plant.likeStatus = "not liked";
              } else {
                widget.plant.likeStatus = "disliked";
              }
            });
          },
        ),
      ]),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  final PlantCatalogue plant;

  const FavoriteButton({required this.plant});

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          setState(() {
            if (widget.plant.isFavorite) {
              widget.plant.isFavorite = false;
            } else {
              widget.plant.isFavorite = true;
            }
          });
        },
        backgroundColor: widget.plant.isFavorite ? Colors.red : Colors.white,
        child: Icon(
          widget.plant.isFavorite
              ? Icons.favorite
              : Icons.favorite_border_outlined,
          color: widget.plant.isFavorite ? Colors.white : Colors.red,
        ));
  }
}
