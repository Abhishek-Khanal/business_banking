import 'package:auto_size_text/auto_size_text.dart';
import 'package:business_banking/features/hotels/model/hotels_view_model.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';

class HotelsMainScreen extends Screen {
  final HotelsViewModel viewModel;
  final VoidCallback navigateBack;

  HotelsMainScreen({required this.viewModel, required this.navigateBack})
      : assert(() {
          return viewModel != null;
        }());

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        /*leading: GestureDetector(
          child: Icon(
            Icons.chevron_left,
            size: 40.0,
          ),
          onTap: () {
            navigateBack();
          },
          key: Key('backButton'),
        ),*/
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AutoSizeText(
              viewModel.title,
            ),
            Text(
              '*' + viewModel.title,
              key: Key('ADappBarL4'),
            )
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text('account balance'),
              Text(
                '\$' + viewModel.price.toStringAsFixed(2),
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w200),
                key: Key('bigBalance'),
              ),
              const SizedBox(height: 40.0),
              // Beginning Balance Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Beginning Balance:', style: TextStyle(fontSize: 15.0)),
                  Text('\$' + viewModel.price.toStringAsFixed(2),
                      style: TextStyle(fontSize: 15.0))
                ],
              ),
              const SizedBox(height: 10.0),
              // Pending Transactions Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pending Transactions:',
                      style: TextStyle(fontSize: 15.0))
                ],
              ),
              const SizedBox(height: 10.0),
              // Deposit Holds Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Deposit Holds:', style: TextStyle(fontSize: 15.0)),
                  Text('\$' + viewModel.price.toStringAsFixed(2),
                      style: TextStyle(fontSize: 15.0), key: Key('depHold'))
                ],
              ),
              const SizedBox(height: 10.0),
              // Account Balance Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Account Balance:', style: TextStyle(fontSize: 15.0)),
                  Text('\$' + viewModel.price.toStringAsFixed(2),
                      style: TextStyle(fontSize: 15.0))
                ],
              ),
              const SizedBox(height: 10.0),
              Divider(
                thickness: 1.0,
                color: Colors.black38,
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Account Type: ', style: TextStyle(fontSize: 15.0)),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Routing Number: ', style: TextStyle(fontSize: 15.0)),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Account Number: ••••••',
                      style: TextStyle(fontSize: 15.0)),
                  Text(
                    'Show',
                    style: TextStyle(
                        decoration: TextDecoration.underline, fontSize: 15.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Text _price(double priceValue) {
  String newPrice = "\$" + priceValue.toStringAsFixed(2);
  return Text(newPrice);
}

/*Text pendingCheck(double pendingTransactions) {
  if (pendingTransactions >= 0.00) {
    return Text('\$' + pendingTransactions.toStringAsFixed(2),
        style: TextStyle(fontSize: 15.0));
  } else {
    return Text('-\$' + pendingTransactions.toStringAsFixed(2).substring(1),
        style: TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.red));
  }*/
