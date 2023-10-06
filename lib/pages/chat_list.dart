// chat_list.dart
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 150,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/image4.png'),
                    ),
                  ),
                  title: Text('User Name $index'),
                  subtitle: Text('Last message arrived'),
                  trailing: Text('00:08 am'),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
