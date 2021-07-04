import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vezeeta/providers/cart.dart';
import 'package:vezeeta/screens/google_map.dart';
import 'package:vezeeta/screens/mydrawer.dart';
import 'package:vezeeta/widgets/medicine_card.dart';

class MedicineCart extends StatelessWidget {
  var cart;
  static const routeName = 'medicine_cart';
  @override
  Widget build(BuildContext context) {
    cart = Provider.of<Cart>(context).getCart();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        elevation: 0,
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      body: cart.isEmpty
          ? Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Container(
                    alignment: Alignment.center,
                    height: 300,
                    width: 300,
                    child: Image.asset('assets/images/cart.png')),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Container(
                        child: Text(
                  'Cart is empty',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )))
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, i) => MedicineCard(
                isCart: true,
                id: cart[i].id,
                image: cart[i].image,
                price: cart[i].price,
                title: cart[i].name,
                type: cart[i].type,
                quantity: cart[i].quantity,
                willDelete: cart[i].willDelete,
              ),
              itemCount: cart.length,
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: cart.isEmpty
          ? Container()
          : Container(
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  Navigator.of(context).pushNamed(GoogleMap.routeName);
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )),
    );
  }
}
