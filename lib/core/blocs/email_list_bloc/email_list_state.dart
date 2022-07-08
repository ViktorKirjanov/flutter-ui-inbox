part of 'email_list_bloc.dart';

abstract class EmailListState extends Equatable {
  const EmailListState();

  @override
  List<Object> get props => [];
}

class InitialEmailListState extends EmailListState {}

class LoadingEmailListState extends EmailListState {}
