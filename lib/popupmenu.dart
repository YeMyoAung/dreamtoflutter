import 'package:flutter/material.dart';

Widget popupMenu() => PopupMenuButton(
      // position: PopupMenuPosition.under,
      // initialValue: 'hello1',
      itemBuilder: (buildcontext) {
        return [
          PopupMenuItem(
            value: 'hello',
            child: Text("Popup 1"),
          ),
          PopupMenuItem(
            value: 'hello1',
            child: Text("Popup 2"),
          ),
          PopupMenuItem(
            child: Text("Popup 3"),
          ),
        ];
      },
    );
