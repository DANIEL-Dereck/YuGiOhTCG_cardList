import 'package:yu_gi_oh_tcg/model/card_model.dart';

abstract class CardState {}

class CardStateNotInitialized extends CardState {}

class CardStateHasValue extends CardState {
  final CardModel cardValue;
  CardStateHasValue(this.cardValue);
}
