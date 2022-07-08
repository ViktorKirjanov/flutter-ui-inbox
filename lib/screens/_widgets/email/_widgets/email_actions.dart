import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inbox/core/helpers/responsive_helper.dart';

class EmailActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (ResponsiveHelper.isMobile(context))
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              size: 20.0,
              color: Colors.grey.shade600,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        if (ResponsiveHelper.isMobile(context)) Spacer(),
        Container(
          color: Colors.transparent,
          padding: EdgeInsets.all(10),
          child: SvgPicture.asset(
            'assets/icons/star.svg',
            height: 20.0,
            color: Colors.orange.shade600,
          ),
        ),
        Container(
          color: Colors.transparent,
          padding: EdgeInsets.all(10),
          child: SvgPicture.asset(
            'assets/icons/reply.svg',
            height: 20.0,
            color: Colors.grey.shade500,
          ),
        ),
        Container(
          color: Colors.transparent,
          padding: EdgeInsets.all(10),
          child: SvgPicture.asset(
            'assets/icons/reply-all.svg',
            height: 20.0,
            color: Colors.grey.shade500,
          ),
        ),
        Container(
          color: Colors.transparent,
          padding: EdgeInsets.all(10),
          child: SvgPicture.asset(
            'assets/icons/trash-can.svg',
            height: 20.0,
            color: Colors.grey.shade500,
          ),
        ),
        Container(
          color: Colors.transparent,
          padding: EdgeInsets.all(10),
          child: Icon(
            Icons.more_vert_outlined,
            size: 20.0,
            color: Colors.grey.shade500,
          ),
        ),
      ],
    );
  }
}
