import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:yu_gi_oh_tcg/model/card_model.dart';

class CardApi {
  static final String urlPath = 'https://db.ygoprodeck.com/api/v7/cardinfo.php';

  static Future<List<CardModel>> getCards() async {
    var response = await http.get(urlPath);

    if (response.statusCode == 200) {
      List<CardModel> cards = [];
      List<dynamic> datas = json.decode(response.body)["data"];
      datas.forEach((element) {
        cards.add(CardModel.fromJSON(element));
      });

      return cards;
    } else {
      throw Exception('Fail to load');
    }
  }
}
