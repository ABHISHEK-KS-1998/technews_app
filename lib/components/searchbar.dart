import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technews_app/backend/functions.dart';
import 'package:technews_app/uitls/colors.dart';
import 'dart:typed_data';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  static TextEditingController searchcontroller =
      TextEditingController(text: '');

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10.0,),
                    Expanded(
                        child: TextField(
                          controller: SearchBar.searchcontroller,
                          decoration: InputDecoration(
                            hintText: 'Search a Keyword or Phrase',
                            hintStyle: GoogleFonts.lato(),
                            border: InputBorder.none,
                          ),
                        ),
                    ),
                    InkWell(
                      onTap: (){
                        FocusScope.of(context).unfocus();
                        fetchnews();
                      },
                      child: Container(
                        width: 45.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: AppColors.darkgrey,
                            shape:BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.search,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,)
                  ],
                ),
              ),
            )
        )
      ],
    );
  }
}
