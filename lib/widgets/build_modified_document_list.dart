import 'package:flutter/material.dart';

Widget buildModifiedDocumentList() {
  return Column(children: [
    Card(
      color: Colors.white.withOpacity(0.8),
      child: const ListTile(
        leading: Icon(Icons.picture_as_pdf, color: Colors.red),
        title: Text('doc'),
        subtitle: Text(
          "1.5 MB - 13 January 2024, 17:00",
          style: TextStyle(fontSize: 14),
        ),
        trailing: Icon(Icons.more_vert),
      ),
    )
  ]);
}
