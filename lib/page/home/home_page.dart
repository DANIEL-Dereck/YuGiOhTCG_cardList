import 'package:flutter/material.dart';
import 'package:yu_gi_oh_tcg/model/card_model.dart';
import 'package:yu_gi_oh_tcg/page/home/widget/custom_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: GridView.builder(
          itemCount: 50, // Remplacer par nombre de carte requetter
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return CustomCard(CardModel(
                "ma super carte",
                "https://storage.googleapis.com/ygoprodeck.com/pics/6983839.jpg",
                "description de ma super carte"));
          },
        ),
      ),
    );
  }
}
