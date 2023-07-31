import 'package:flutter/material.dart';
import 'package:technews_app/uitls/colors.dart';
import 'package:technews_app/uitls/text.dart';
import 'dart:typed_data';

class appbar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
      ],
      backgroundColor: AppColors.black,
      elevation: 0.0,
      title: Container(
        height: 40.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            boldText(text: "Tech", size: 20.0, color:AppColors.primary),
            modifiedText(text: "News", size: 20.0, color:AppColors.lightwhite)
          ],
        ),
      ),
      centerTitle: true,
    ) ;
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();

}
