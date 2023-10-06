import 'package:flutter/material.dart';

class JournalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 20,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: ListView.builder(
              itemCount: 10, // Change this to the number of journal entries
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  leading: Container(
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green, // Use your desired color
                    ),
                    child: CircleAvatar(
                      radius: 30.0,
                      // Replace with the journal entry image
                      backgroundImage: AssetImage('assets/image1.png'),
                    ),
                  ),
                  title: Text(
                    'Journal Entry Title $index',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.green, // Use your desired color
                        size: 18.0,
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        '00:08', // Call duration (replace with actual duration)
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle the tap on the floating action button
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'Enter a Phone Number',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextFormField(
                            // Add text input field for phone number
                            decoration: InputDecoration(
                              hintText: 'Enter phone number',
                            ),
                          ),
                          SizedBox(height: 10.0),
                          ElevatedButton(
                            onPressed: () {
                              // Handle the call initiation here
                              Navigator.pop(context);
                            },
                            child: Text('Call'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Icon(Icons.phone),
            ),
          ),
        ),
      ],
    );
  }
}
