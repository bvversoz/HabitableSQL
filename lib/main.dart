import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Fetching Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Fetching Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              fetchData();
            },
            child: Text('Fetch Data'),
          ),
        ),
      ),
    );
  }
}

Future<void> fetchData() async {
  var url = Uri.parse('https://api.example.com/data');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    // Data fetched successfully
    var jsonData = response.body;
    // Process the fetched data as needed
    print(jsonData);
  } else {
    // Error handling
    print('Error: ${response.statusCode}');
  }
}
