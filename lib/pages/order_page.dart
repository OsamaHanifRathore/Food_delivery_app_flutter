import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  static const Color colorGery = Color(0xFFD3D3D3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: <Widget>[
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),

        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer() {
    return Container(
      height: 240,
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Cart Total',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              Text(
                '23.0',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Discount',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              Text(
                '3.0',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Tax',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              Text(
                '0.5',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          Divider(
            height: 40,
            color: colorGery,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Sub Total',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              Text(
                '26.5',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                'Proceed To CheckOut',
                style: TextStyle(color: Colors.white,fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
