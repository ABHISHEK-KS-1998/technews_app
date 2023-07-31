import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:technews_app/components/components.dart';
import 'package:technews_app/uitls/text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:typed_data';


void showMyBottomSheet(
  BuildContext context, String title, String description, imageurl, url){
  showBottomSheet(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        )
      ),
      elevation: 20.0,
      context: context,
      builder:(context){
        return MyBottomSheetLayout(
          url: url,
          imageurl: imageurl,
          title: title,
          description: description,
        );
      });
}
_launchURL(String url) async{
  if(await canLaunch(url)){
    await launchUrl;
  }else{
    throw 'Could Not Launch $url';
  }
}

class MyBottomSheetLayout extends StatelessWidget {
  final String title,description, imageurl,url;

  const MyBottomSheetLayout({super.key, required this.title, required this.description, required this.imageurl, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children:<Widget> [
          BottomSheetImage(imageurl: imageurl, title: title),
          Container(
            padding: EdgeInsets.all(10),
            child: modifiedText(
              text: description,size: 16,color: Colors.white,
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child:RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Read Full Article',
                      recognizer: TapGestureRecognizer()
                        ..onTap=(){
                        _launchURL(url);
                        },

                    )
                  ]
                ),
              )
          )
        ],
      ),
    );
  }
}
