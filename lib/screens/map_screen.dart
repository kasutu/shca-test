import 'package:flutter/material.dart';
import 'package:shca_test/screens/summary_screen.dart';
import 'package:shca_test/screens/emergency_contacts_screen.dart';
import 'package:shca_test/screens/family_share_screen.dart';
import 'package:shca_test/screens/map_search_screen.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              // width is less
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(100, 30),
              ),
              child: const Text('Emergency Contacts',
                  style: TextStyle(fontSize: 14.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmergencyContactsScreen(),
                  ),
                );
              },
            ),
            const SizedBox(width: 16.0),
            ElevatedButton(
              // width is less
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(100, 30),
              ),
              child: const Text('Share Live Location',
                  style: TextStyle(fontSize: 14.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FamilyOptionScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SummaryScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MapSearchScreen(),
                    ),
                  );
                },
                decoration: const InputDecoration(
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
              child: const Center(
                child: Text('Map View'),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildDetailBox(context, 'Alcohol Level', '0.05'),
                _buildDetailBox(context, 'Speed', '45 km/h'),
                _buildDetailBox(context, 'Rotation', '50°'),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildDetailBox(context, 'Ignition', 'On'),
                _buildDetailBox(context, 'Helmet', 'Correct'),
                _buildDetailBox(context, 'IoT', 'Connected'),
              ],
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailBox(BuildContext context, String title, String value) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.5,
      height: MediaQuery.of(context).size.width / 3.5 * 1.5,
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
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
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
