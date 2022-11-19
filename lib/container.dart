import 'package:flutter/material.dart';

Widget container() => Container(
      width: 300,
      height: 300,
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 1,
            color: Colors.grey,
            offset: Offset(-1, 2),
          )
        ],
        borderRadius: BorderRadius.circular(12),
        color: Colors.blueGrey,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(131, 58, 180, 1),
            Color.fromRGBO(252, 176, 69, 1),
            Color.fromRGBO(253, 29, 29, 1),
          ],
          stops: [0, 50, 100],
        ),
      ),
      child: Text(
        """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.""",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.white,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 8,
      ),
    );
