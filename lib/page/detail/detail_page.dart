import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yu_gi_oh_tcg/model/card_model.dart';

class DetailPage extends StatefulWidget {
  final CardModel card;

  const DetailPage({Key key, this.card}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState(card);
}

class _DetailPageState extends State<DetailPage> {
  final CardModel card;

  _DetailPageState(this.card);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(card.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  curve: Curves.easeInOut,
                  opacity: 1.0,
                  duration: Duration(milliseconds: 2000),
                  child: FadeInImage.assetNetwork(
                    height: 350,
                    fit: BoxFit.fitHeight,
                    placeholder: 'assets/cardYGO.jpg',
                    image: card.imageURL,
                  ),
                ),
              ],
            ),
            Container(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    card.description,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
