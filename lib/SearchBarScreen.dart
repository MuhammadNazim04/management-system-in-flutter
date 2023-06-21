import 'package:flutter/material.dart';

import 'MyTasksPage.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({super.key});

  @override
  _SearchBarScreenState createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  List<String> items = [
    'Apple',
    'Banana',
    'Orange',
    'Strawberry',
    'Watermelon',
  ];
  List<String> filteredItems = [];

  @override
  void initState() {
    filteredItems.addAll(items);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> filteredList = [];
    filteredList.addAll(items);
    if (query.isNotEmpty) {
      filteredList.retainWhere(
              (item) => item.toLowerCase().contains(query.toLowerCase()));
    }

    setState(() {
      filteredItems.clear();
      filteredItems.addAll(filteredList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Bar Demo'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              decoration: const InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(filteredItems[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
