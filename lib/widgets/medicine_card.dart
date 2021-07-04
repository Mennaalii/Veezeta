import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/cart.dart';
import 'package:vezeeta/screens/medicine_details.dart';

class MedicineCard extends StatelessWidget {
  final image;
  final title;
  final price;
  final type;
  final id;
  final isCart;
  final quantity;
  final willDelete;
  MedicineCard(
      {this.willDelete,
      this.quantity,
      this.isCart,
      this.id,
      this.image,
      this.price,
      this.title,
      this.type});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => MedicineDetails(
                  id: id,
                  image: image,
                  price: price,
                  title: title,
                  type: type)));
        },
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 10),
          color: Theme.of(context).accentColor,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Row(children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                child: Container(
                  height: 100,
                  width: 150,
                  child: Image.asset(
                    'assets/images/$image.png',
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  type,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '$price LE',
                  style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(child: Container()),
            isCart
                ? Container(
                    child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Provider.of<Cart>(context, listen: false)
                                .incrementQuantity(id);
                          },
                          icon: Icon(Icons.add,
                              color: Theme.of(context).primaryColor)),
                      Text(
                        quantity.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      willDelete
                          ? IconButton(
                              onPressed: () {
                                Provider.of<Cart>(context, listen: false)
                                    .removeFromCart(id);
                              },
                              icon: Icon(
                                Icons.delete,
                                color: Theme.of(context).primaryColor,
                              ))
                          : Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Provider.of<Cart>(context, listen: false)
                                          .decrementQuantity(id);
                                    },
                                    icon: Icon(Icons.minimize,
                                        color: Theme.of(context).primaryColor)),
                                SizedBox(
                                  height: 12,
                                )
                              ],
                            ),
                    ],
                  ))
                : IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Added to Cart')));
                      Provider.of<Cart>(context, listen: false).addToCart(
                          id: id,
                          image: image,
                          name: title,
                          price: price,
                          type: type);
                    },
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 30,
                      color: Theme.of(context).primaryColor,
                    )),
            SizedBox(
              width: 15,
            )
          ]),
        ));
  }
}
