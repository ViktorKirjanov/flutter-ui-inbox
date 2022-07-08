import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inbox/_widgets/avatar.dart';
import 'package:inbox/_widgets/divider_line.dart';
import 'package:inbox/core/blocs/email_cubit/email_cubit.dart';
import 'package:inbox/core/helpers/responsive_helper.dart';
import 'package:inbox/core/enums/category_type_enum.dart';
import 'package:inbox/core/models/email_model.dart';
import 'package:inbox/screens/_widgets/common/category_indicator.dart';

import '_widgets/attachments.dart';
import '_widgets/email_actions.dart';
import '_widgets/reply_container.dart';

class EmailContent extends StatefulWidget {
  @override
  _EmailContentState createState() => _EmailContentState();
}

class _EmailContentState extends State<EmailContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder<EmailCubit, EmailState>(
        builder: (context, state) {
          if (state is CompleteEmailState) {
            return _buildContent(state.email);
          }
          return Center(
            child: Text(
              'No email selected',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildContent(Email email) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5],
          colors: [
            Colors.grey.shade100,
            Colors.white,
          ],
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.fromLTRB(
                  25.0,
                  (!ResponsiveHelper.isMobile(context)) ? 25.0 : 20,
                  25.0,
                  25.0,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 0.3],
                    colors: [
                      Colors.grey.shade100,
                      Colors.white,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (ResponsiveHelper.isMobile(context))
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: EmailActions(),
                          ),
                          Divider(),
                          SizedBox(height: 10.0),
                        ],
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Avatar(
                                  image: email.avatar,
                                  isOnline: true,
                                ),
                                SizedBox(width: 25.0),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  email.name,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10.0),
                                              CategoryIndicator(
                                                  categoryType:
                                                      CategoryType.Work),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 8.0),
                                        Text(
                                          'lilly.black@lorem.ipsum',
                                          style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (!ResponsiveHelper.isMobile(context)) EmailActions(),
                      ],
                    ),
                    DividerLine(fullWidth: true),
                    if (!ResponsiveHelper.isMobile(context))
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            email.title,
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            email.date,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    else
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            email.title,
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 2.5),
                          Text(
                            email.date,
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 10.0),
                        ],
                      ),
                    Text(
                      email.shortText,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                        height: 2.0,
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Attachments(),
                  ],
                ),
              ),
            ),
          ),
          ReplyContainer(),
        ],
      ),
    );
  }
}
