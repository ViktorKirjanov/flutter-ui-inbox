import 'package:flutter/material.dart';
import 'package:inbox/_widgets/divider_line.dart';

import 'attached_image.dart';

class Attachments extends StatelessWidget {
  const Attachments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '3 attachments',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  'download all',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5.0),
                IconButton(
                  icon: Icon(Icons.cloud_download_outlined),
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        DividerLine(fullHeight: false, fullWidth: true),
        SizedBox(height: 15.0),
        Container(
          height: 400,
          child: Row(
            children: [
              const AttachedImage(image: 'assets/images/room_1.jpg'),
              SizedBox(width: 25.0),
              Flexible(
                child: Container(
                  height: 400,
                  child: Column(
                    children: [
                      const AttachedImage(image: 'assets/images/room_1.jpg'),
                      SizedBox(height: 25.0),
                      const AttachedImage(image: 'assets/images/room_1.jpg'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
