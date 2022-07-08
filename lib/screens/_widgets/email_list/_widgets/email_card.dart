import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inbox/_widgets/avatar.dart';
import 'package:inbox/core/helpers/responsive_helper.dart';
import 'package:inbox/core/models/email_model.dart';
import 'package:inbox/screens/_widgets/common/category_indicator.dart';

class EmailCard extends StatelessWidget {
  final Email email;
  final Function action;
  final Function mobileAction;

  const EmailCard({
    Key? key,
    required this.email,
    required this.action,
    required this.mobileAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: email.selected ? Colors.grey.shade50 : Colors.transparent,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(0, 25.0, 25.0, 25.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.5,
                  color: Colors.grey.shade100,
                ),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 22.0),
                  height: 100,
                  width: 3.0,
                  color: email.selected
                      ? Colors.blue.shade800
                      : Colors.transparent,
                ),
                Container(
                  child: Column(
                    children: [
                      Avatar(
                        image: email.avatar,
                        isOnline: email.online,
                      ),
                      SizedBox(height: 15.0),
                      if (email.starred)
                        SvgPicture.asset(
                          'assets/icons/star.svg',
                          height: 18.0,
                          color: Colors.orange.shade600,
                        ),
                    ],
                  ),
                ),
                SizedBox(width: 25.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                email.name,
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              if (email.categoryType != null)
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: CategoryIndicator(
                                    categoryType: email.categoryType!,
                                  ),
                                )
                            ],
                          ),
                          Text(
                            email.date,
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        email.title,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        email.shortText,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          height: 1.25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          onTap: () =>
              ResponsiveHelper.isMobile(context) ? mobileAction() : action(),
        ),
      ),
    );
  }
}
