// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../bottom_bar.dart';

class EventsPage extends StatelessWidget {
  final List<Map<String, dynamic>> events = [
    {
      'title': 'Event A',
      'date': 'August 15, 2022',
    },
    {
      'title': 'Event B',
      'date': 'September 10, 2022',
    },
    {
      'title': 'Event C',
      'date': 'October 5, 2022',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upcoming Events'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Upcoming Events:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              itemCount: events.length,
              itemBuilder: (context, index) {
                final event = events[index];
                return ListTile(
                  leading: Icon(Icons.event),
                  title: Text(event['title']),
                  subtitle: Text(event['date']),
                  trailing: ElevatedButton(
                    onPressed: () => _showRSVPDialog(context, event['title']),
                    child: Text('RSVP'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomInfoBar(),
    );
  }

  void _showRSVPDialog(BuildContext context, String eventTitle) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(eventTitle),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Enter your email to RSVP:'),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('RSVP'),
            ),
          ],
        );
      },
    );
  }
}
