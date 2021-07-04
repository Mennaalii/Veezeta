import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/cart.dart';

class MedicineDetails extends StatelessWidget {
  final image;
  final title;
  final price;
  final type;
  final id;
  MedicineDetails({this.id, this.image, this.price, this.title, this.type});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
        ),
        body: ListView(children: [
          Card(
            elevation: 10,
            color: Theme.of(context).accentColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: Image.asset(
                        'assets/images/$image.png',
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                ListTile(
                  title: Text(
                    title,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(type,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  trailing: IconButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        Provider.of<Cart>(context, listen: false).addToCart(
                          id: id,
                          image: image,
                          name: title,
                          price: price,
                          type: type,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Added to Cart')));
                      },
                      icon: Icon(
                        Icons.shopping_cart,
                        size: 30,
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      '$price LE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red),
                    )),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Card(
              elevation: 10,
              color: Theme.of(context).accentColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.info,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'About product',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Paracetamol, also known as acetaminophen, is a medication used to treat fever and mild to moderate pain.\nAt a standard dose, paracetamol only slightly decreases body temperature;\nit is inferior to ibuprofen in that respect, and the benefits of its use for fever are unclear.',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ))),
          Card(
              elevation: 10,
              color: Theme.of(context).accentColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.warning,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Side effect',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '- An allergic reaction, which can cause a rash and swelling flushing.\n\n- Low blood pressure and a fast heartbeat can sometimes happen when paracetamol is given in hospital into a vein in your arm blood disorders.\n\n- Such  thrombocytopenia (low number of platelet cells) and leukopenia (low number of white blood cells) liver and kidney damage.\n\n- If you take too much (overdose) – this can be fatal in severe cases.',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ))),
        ]));
  }
}
