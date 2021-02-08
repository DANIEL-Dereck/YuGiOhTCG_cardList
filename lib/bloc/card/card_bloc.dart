import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yu_gi_oh_tcg/bloc/card/card_state.dart';
import 'package:yu_gi_oh_tcg/repository/card_repository.dart';

import 'card_event.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc(CardState initialState) : super(initialState);

  @override
  Stream<CardState> mapEventToState(CardEvent event) async* {
    CardRepository cardRepo = CardRepository.instance;

    yield CardStateHasValue(cardRepo.card);
  }
}
