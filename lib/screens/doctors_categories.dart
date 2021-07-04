import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/dr_categories.dart';
import 'package:vezeeta/widgets/dr_cat_card.dart';
import 'package:vezeeta/widgets/search_bar.dart';

class DoctorsCategories extends StatefulWidget {
  static const routeName = 'doctors_cat';
  @override
  _DoctorsCategoriesState createState() => _DoctorsCategoriesState();
}

class _DoctorsCategoriesState extends State<DoctorsCategories> {
  var categories;
  var flag = false;

  @override
  void didChangeDependencies() {
    if (flag == false) {
      categories = Provider.of<DrCategories>(
        context,
      ).getCat();
      flag = true;
    }
    super.didChangeDependencies();
  }

  void filterByName(String val) {
    setState(() {
      categories =
          Provider.of<DrCategories>(context, listen: false).filterByName(val);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          color: Theme.of(context).primaryColor,
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Country',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ))
                ],
              )),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          SearchBar(filterByName),
          ...categories.map((cat) => DrCatCard(cat.name, cat.image)).toList(),
        ],
      ),
    );
  }
}
