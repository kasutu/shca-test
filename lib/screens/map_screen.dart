import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Emergency Contacts'),
              onPressed: () {
                // TODO: Navigate to emergency contacts page
              },
            ),
            SizedBox(width: 16.0),
            ElevatedButton(
              child: Text('Share Live Location'),
              onPressed: () {
                // TODO: Implement share live location
              },
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              // TODO: Navigate to summary page
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              color: Colors.grey[300],
              width: double.infinity,
              height: MediaQuery.of(context).size.width > 600 ? 400 : 200,
              child: Center(
                child: Text('Map View'),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildDetailBox(context, 'Alcohol Level', '0.05'),
                _buildDetailBox(context, 'Speed', '45 km/h'),
                _buildDetailBox(context, 'Rotation', '50°'),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildDetailBox(context, 'Ignition', 'On'),
                _buildDetailBox(context, 'Helmet', 'Correct'),
                _buildDetailBox(context, 'IoT', 'Connected'),
              ],
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailBox(BuildContext context, String title, String value) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.5,
      height: MediaQuery.of(context).size.width / 3.5 * 1.5,
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
