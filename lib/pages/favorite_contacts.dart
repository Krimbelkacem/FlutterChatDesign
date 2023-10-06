// favorite_contacts.dart
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 220,
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(2),
            topRight: Radius.circular(2),
          ),
        ),

        child: Column(

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
                  child: Text(
                    "Favorite Contacts",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Sample favorite contact 1
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage('assets/image1.png'),
                          ),
                        ),
                        SizedBox(height: 3),
                        Container(
                          color: Colors.transparent,
                          child: Center(
                            child: Text(
                              'User Name 1',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage('assets/image2.png'),
                          ),
                        ),
                        SizedBox(height: 3),
                        Container(
                          color: Colors.transparent,
                          child: Center(
                            child: Text(
                              'User Name 2',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),   Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      children: [
                        Container(
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
                        SizedBox(height: 3),
                        Container(
                          color: Colors.transparent,
                          child: Center(
                            child: Text(
                              'User Name 3',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                  // Sample favorite contact 2
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage('assets/image2.png'),
                          ),
                        ),
                        SizedBox(height: 3),
                        Container(
                          color: Colors.transparent,
                          child: Center(
                            child: Text(
                              'User Name 4',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                  // You can add more favorite contact widgets here
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
