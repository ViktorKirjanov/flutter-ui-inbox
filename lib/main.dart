import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inbox/core/blocs/email_cubit/email_cubit.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<EmailCubit>(create: (context) => EmailCubit()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inbox',
      home: MainScreen(),
    );
  }
}
