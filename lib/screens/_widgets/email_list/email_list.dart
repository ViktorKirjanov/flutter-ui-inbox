import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inbox/core/blocs/email_cubit/email_cubit.dart';
import 'package:inbox/core/data/emails.dart';
import 'package:inbox/screens/_widgets/side_menu/side_menu.dart';
import 'package:inbox/screens/email_screen.dart/email_screen.dart';

import '_widgets/email_card.dart';
import '_widgets/searh_bar.dart';

class EmailList extends StatefulWidget {
  @override
  _EmailListState createState() => _EmailListState();
}

class _EmailListState extends State<EmailList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _globalKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      drawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250.0),
        child: SideMenu(),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              right: BorderSide(
                width: 1.5,
                color: Colors.grey.shade100,
              ),
            ),
          ),
          child: Column(
            children: [
              SearchBar(globalKey: _globalKey),
              Expanded(
                child: Container(
                  child: RawScrollbar(
                    controller: _scrollController,
                    isAlwaysShown: true,
                    thumbColor: Colors.grey.shade300,
                    radius: Radius.circular(20),
                    thickness: 5,
                    child: ListView(
                      controller: _scrollController,
                      children: [
                        ...emails
                            .map((email) => EmailCard(
                                  email: email,
                                  action: () {
                                    BlocProvider.of<EmailCubit>(context)
                                        .setEmail(email);
                                  },
                                  mobileAction: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => EmailScreen(),
                                      ),
                                    );
                                  },
                                ))
                            .toList(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
