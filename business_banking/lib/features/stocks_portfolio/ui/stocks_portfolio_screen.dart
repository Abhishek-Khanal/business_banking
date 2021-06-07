import 'package:business_banking/features/stocks_portfolio/model/stocks_portfolio_view_model.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class StockPortfolioScreen extends Screen {
  final StocksPortfolioViewModel viewModel;
  final VoidCallback navigateToStocksScreen;

  StockPortfolioScreen(
      {required this.viewModel, required this.navigateToStocksScreen});

  @override
  Widget build(BuildContext context) {
    double value = viewModel.totalValue;
    return GestureDetector(
      key: Key('StocksHubCard'),
      onTap: navigateToStocksScreen,
      child: Container(
        height: 115,
        child: Card(
          color: Colors.white,
          shadowColor: Colors.grey[500],
          elevation: 3.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Text(
                      'Stocks Portfolio',
                      style: TextStyle(fontSize: 18),
                      key: Key('StocksPortText'),
                    ),
                  ],
                )),
                Expanded(
                  child: Row(
                    children: [
                      Text('Total value: \$' + value.toString(),
                          style: TextStyle(fontSize: 24)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
