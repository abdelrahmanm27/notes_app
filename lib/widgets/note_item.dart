// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 12,
      ),
      decoration: BoxDecoration(
        color: Color(0xffffcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(
                top: 14,
                bottom: 14,
              ),
              child: Text(
                'Build your career with Dev Abdelrahman.',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 14,
                ),
              ),
            ),
            trailing: IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                ),
                child: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                ),
              ),
              onPressed: () {
                print('text');
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: Text(
              'Oct 10, 2023',
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
