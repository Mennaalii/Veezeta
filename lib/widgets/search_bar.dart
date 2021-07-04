import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final searchItem = TextEditingController();
  final Function filterByName;
  SearchBar(this.filterByName);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(20),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: TextField(
                textInputAction: TextInputAction.search,
                style: TextStyle(fontSize: 20),
                controller: searchItem,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Searching for...',
                ),
                onSubmitted: (_) {
                  filterByName(searchItem.text);
                },
              )),
            ],
          ),
        ));
  }
}
