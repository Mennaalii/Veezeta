import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/med_categories.dart';

import 'package:vezeeta/screens/mydrawer.dart';

import 'package:vezeeta/widgets/pharmacy_category.dart';
import 'package:vezeeta/widgets/search_bar.dart';

class Pharmacy extends StatefulWidget {
  static const routeName = 'pharmacy';

  @override
  _PharmacyState createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  var categories;
  var flag = false;
  @override
  void didChangeDependencies() {
    if (flag == false) {
      categories = Provider.of<MedCategories>(
        context,
      ).getCat();
      flag = true;
    }
    super.didChangeDependencies();
  }

  void filterByName(String val) {
    setState(() {
      categories =
          Provider.of<MedCategories>(context, listen: false).filterByName(val);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Pharmacy'),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          SearchBar(filterByName),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 400,
              child: GridView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1 / 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                children: [
                  ...categories
                      .map((cat) => PharmacyCategory(cat.name, cat.image))
                      .toList(),
                  ...categories
                      .map((cat) => PharmacyCategory(cat.name, cat.image))
                      .toList(),
                ],
              ))
        ],
      ),
    );
  }
}
