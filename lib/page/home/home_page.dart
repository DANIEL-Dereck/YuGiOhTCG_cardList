import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:yu_gi_oh_tcg/api/card_api.dart';
import 'package:yu_gi_oh_tcg/model/card_model.dart';
import 'package:yu_gi_oh_tcg/page/home/widget/custom_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AfterLayoutMixin<HomePage> {
  List<CardModel> _cards;
  bool _isLoading = false;

  Future<List<CardModel>> _getCards() async {
    List<CardModel> cards = await CardApi.getCards();
    return cards;
  }

  @override
  initState() {
    super.initState();

    setState(() {
      _isLoading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: _bodyDependingOnState(),
      ),
    );
  }

  Widget _bodyDependingOnState() {
    if (_isLoading) {
      return Center(child: CircularProgressIndicator());
    } else if (_cards == null || _cards.length == 0) {
      return Text('No cards found');
    } else {
      return OrientationBuilder(builder: (context, orientation) {
        return GridView.builder(
          itemCount: _cards.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 3 : 5),
          itemBuilder: (context, index) {
            return CustomCard(_cards[index]);
          },
        );
      });
    }
  }

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    _cards = await _getCards();

    setState(() {
      _isLoading = false;
    });
  }
}
