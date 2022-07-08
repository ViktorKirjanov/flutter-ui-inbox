import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inbox/core/models/email_model.dart';

part 'email_state.dart';

class EmailCubit extends Cubit<EmailState> {
  EmailCubit() : super(InitialEmailState());

  void setEmail(Email email) => emit(CompleteEmailState(email));
}
