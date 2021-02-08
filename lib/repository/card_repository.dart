import 'package:yu_gi_oh_tcg/model/card_model.dart';

class CardRepository {
  static CardRepository instance = CardRepository();
  CardModel card = CardModel("", "", "");
}
