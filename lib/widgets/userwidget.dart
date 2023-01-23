import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget UserWidget() => Card(
      elevation: 0,
      color: Color(0xFF05103A),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20,
        ),
        title: Row(
          children: [
            Text(
              "Hello",
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
              "Arie",
              style: GoogleFonts.baloo2(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        subtitle: Text(
          "Book your favourite Movie",
          style: GoogleFonts.baloo2(
              fontStyle: FontStyle.normal,
              color: Colors.white,
              fontWeight: FontWeight.w400),
        ),
        trailing: Icon(
          Icons.notifications,
          color: Colors.white,
        ),
      ),
    );
