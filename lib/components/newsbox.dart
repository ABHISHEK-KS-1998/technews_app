import 'package:flutter/material.dart';
import 'package:technews_app/uitls/colors.dart';
import 'package:technews_app/uitls/text.dart';
import 'dart:typed_data';
import 'bottomsheet.dart';
import 'components.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsBox extends StatelessWidget {
  final String, imageurl, title, time, description, url;

  const NewsBox(
      {super.key,
      required this.String,
      required this.imageurl,
      required this.title,
      required this.time,
      required this.description,
      required this.url});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: () {
            showMyBottomSheet(context, title, description, imageurl, url);
          },
          child: Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
            width: w,
            color: AppColors.black,
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: imageurl,
                  imageBuilder: (context, imageProvider) => Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.yellow,
                    ),
                  ),
                  placeholder: (context, url) => CircularProgressIndicator(
                    color: AppColors.primary,
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    modifiedText(
                        text: title, size: 16.0, color: AppColors.white),
                    SizedBox(
                      height: 5.0,
                    ),
                    modifiedText(
                        text: time, size: 12.0, color: AppColors.lightwhite),
                  ],
                ))
              ],
            ),
          ),
        ),
        DividerWidget(),
      ],
    );
  }
}
