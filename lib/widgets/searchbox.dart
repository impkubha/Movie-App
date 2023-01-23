import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget SearchBox() => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(255, 255, 255, 0.15),
        ),
        child: TextFormField(
          style: GoogleFonts.baloo2(
            fontStyle: FontStyle.normal,
            color: Colors.white,
            fontSize: 16,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintText: "Search Movies...",
            hintStyle: GoogleFonts.baloo2(
              fontStyle: FontStyle.normal,
              color: Colors.white,
              fontSize: 16,
            ),
            suffixIcon: Icon(
              Icons.filter,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
