import 'package:flutter/material.dart';

class LastTransaction extends StatelessWidget {
  final String image;
  final String coinName;
  final String coinInit;
  final String amount;
  final String currency;
  final String currencySymbol;
  final double divident;
  bool dividentHigh = true;
  Color coinBackdrop = Colors.orange;

  LastTransaction(
      {super.key,
      required this.image,
      required this.coinName,
      required this.coinInit,
      required this.amount,
      required this.divident,
      this.currency = "USD",
      this.currencySymbol = "\$"});

  @override
  Widget build(BuildContext context) {
    if (divident > 0) {
      dividentHigh = true;
    } else {
      dividentHigh = false;
    }

    if (coinInit == "BTC") {
      coinBackdrop = Colors.orange;
    } else if (coinInit == "ETH") {
      coinBackdrop = Colors.blue;
    } else if (coinInit == "USDT") {
      coinBackdrop = Colors.green;
    } else if (coinInit == "BNB") {
      coinBackdrop = Colors.orange;
    } else {
      coinBackdrop = Colors.blue.shade300;
    }

    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: coinBackdrop,
                  borderRadius: BorderRadius.circular(100)),
              child: Image(
                image: AssetImage(image),
                height: 30,
                width: 30,
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      coinName,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          currencySymbol + amount,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          currency,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(coinInit,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    dividentHigh
                        ? Text(
                            "+$divident%",
                            style: const TextStyle(color: Colors.green),
                          )
                        : Text(
                            "$divident%",
                            style: const TextStyle(color: Colors.red),
                          ),
                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
