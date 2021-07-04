import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/medicines.dart';
import '../widgets/medicine_card.dart';
import '../widgets/search_bar.dart';

class MedicineList extends StatefulWidget {
  static const routeName = 'medicine_list';

  @override
  _MedicineListState createState() => _MedicineListState();
}

class _MedicineListState extends State<MedicineList> {
  var medicines;
  var flag = false;
  @override
  void didChangeDependencies() {
    if (flag == false) {
      medicines = Provider.of<Medicines>(
        context,
      ).getMediciness();
      flag = true;
    }
    super.didChangeDependencies();
  }

  void filterByName(String val) {
    setState(() {
      medicines =
          Provider.of<Medicines>(context, listen: false).filterByName(val);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Medicines'),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          SearchBar(filterByName),
          ...medicines
              .map((med) => MedicineCard(
                    isCart: false,
                    id: med.id,
                    image: med.image,
                    price: med.price,
                    title: med.name,
                    type: med.type,
                    willDelete: false,
                  ))
              .toList(),
        ],
      ),
    );
  }
}
