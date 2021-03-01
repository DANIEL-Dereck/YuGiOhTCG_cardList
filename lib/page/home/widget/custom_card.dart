import 'package:flutter/material.dart';
import 'package:yu_gi_oh_tcg/model/card_model.dart';
import 'package:yu_gi_oh_tcg/page/detail/detail_page.dart';

class CustomCard extends StatelessWidget {
  final CardModel _card;
  CustomCard(this._card);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              curve: Curves.easeInOut,
              opacity: 1.0,
              duration: Duration(milliseconds: 1500),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => DetailPage(
                            card: _card,
                          )));
                },
                child: FadeInImage.assetNetwork(
                  height: 150,
                  fit: BoxFit.fitHeight,
                  placeholder: 'assets/cardYGO.jpg',
                  image: _card.imageURL,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
