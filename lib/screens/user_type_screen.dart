import 'package:flutter/material.dart';
import 'package:shca_test/screens/map_screen.dart';

class UserTypeSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Select User Type'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Driver'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapScreen()));
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Family'),
              onPressed: () {
                // TODO: Navigate to family page
              },
            ),
          ],
        ),
      ),
    );
  }
}
