part of 'email_cubit.dart';

abstract class EmailState extends Equatable {
  const EmailState();

  @override
  List<Object> get props => [];
}

class InitialEmailState extends EmailState {}

class CompleteEmailState extends EmailState {
  final Email email;

  CompleteEmailState(this.email);

  @override
  List<Object> get props => [email];
}
