import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'email_list_event.dart';
part 'email_list_state.dart';

class EmailListBloc extends Bloc<EmailListEvent, EmailListState> {
  EmailListBloc() : super(InitialEmailListState());

  @override
  Stream<EmailListState> mapEventToState(
    EmailListEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
