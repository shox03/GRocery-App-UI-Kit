import 'package:flutter/material.dart';

TextField buildSearchbar() => TextField(
      decoration: InputDecoration(
        hintText: "Search Anything",
        hintStyle: TextStyle(color: Color.fromRGBO(55, 71, 79, 0.72)),
        fillColor: Color(0xFFF0F1F2),
        filled: true,
        prefixIcon: Icon(
          Icons.search,
          color: Color.fromRGBO(55, 71, 79, 1),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 0.0,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.0),
            borderSide: BorderSide.none),
      ),
    );
