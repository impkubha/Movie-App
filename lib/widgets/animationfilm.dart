import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget animationMovie() => Column(
      children: [
        Row(
          children: [
            Text(
              "Animation",
              style: GoogleFonts.baloo2(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Movie",
              style: GoogleFonts.baloo2(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 125,
            ),
            Text(
              "See more",
              style: GoogleFonts.baloo2(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ],
    );
